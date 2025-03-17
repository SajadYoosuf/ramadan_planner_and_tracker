import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/utilities/images.dart';
import 'package:ramadan_planner/view%20model/task_view_model.dart';
import 'package:ramadan_planner/view/monthly_details.dart';
import 'package:ramadan_planner/widgets/challenge_widget.dart';
import 'package:ramadan_planner/widgets/navigation_widget.dart';
import 'package:ramadan_planner/widgets/prayer_daily.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int dhikrCount = 0;
  int quranCount = 0;
  int prayersAchieved = 0;
  File? _image;

  List<String> prayerTimes = [
    "Fajr: 5:24 AM",
    "Dhuhr: 12:34 PM",
    "Asr: 3:52 PM",
    "Maghrib: 6:35 PM",
    "Isha: 7:45 PM",
  ];
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  void _updateDhikrCount(int change) {
    setState(() {
      if (dhikrCount + change >= 0) {
        dhikrCount += change;
      }
    });
  }

  void _updateQuranCount(int change) {
    setState(() {
      if (quranCount + change >= 0) {
        quranCount += change;
      }
    });
  }

  void _updatePrayers(int change) {
    setState(() {
      prayersAchieved = (prayersAchieved + change).clamp(0, 5);
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Consumer<TaskViewmodel>(
      builder: (context, value, child) => SafeArea(
        child: Scaffold(
          body: Container(
            height: 800,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(profilePage), fit: BoxFit.fitHeight)),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Pick an Image"),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ListTile(
                                      leading: Icon(Icons.camera),
                                      title: Text("Camera"),
                                      onTap: () {
                                        _pickImage(ImageSource.camera);
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.image),
                                      title: Text("Gallery"),
                                      onTap: () {
                                        _pickImage(ImageSource.gallery);
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              _image != null ? FileImage(_image!) : null,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'John Doe',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Location: City, Country',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      SizedBox(height: 20),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Daily Monitoring',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      ...prayerTimes
                          .map((time) => buildPrayerTimeCard(time))
                          .toList(),
                      SizedBox(
                        height: 240,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 40,
                              child: Container(
                                height: 200,
                                margin: EdgeInsets.symmetric(vertical: 20),
                                width: MediaQuery.of(context).size.width * 0.80,
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.green),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          ' Dhikr',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 100,
                                      width: 300,
                                      child: ListView.separated(
                                        itemCount: value.ramadanDikr.length,
                                        separatorBuilder: (context, index) =>
                                            Divider(),
                                        itemBuilder: (context, index) =>
                                            Container(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Text(value
                                                      .ramadanDikr[index]
                                                      .dikrName!)),
                                              Text(value
                                                  .ramadanDikr[index].count
                                                  .toString())
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("Quran",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        Text("Pages:99",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: MediaQuery.of(context).size.width * 0.28,
                              child: ElevatedButton(
                                onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context) => MonthlyProgress(),)),
                                child: Text('View Month details'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Text(
                          "Daily Challenges",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        ),
                      ),
                      challengeWidget(context, 'Win 1000 points',  'Complete 7 times prayer'),
                      challengeWidget(context, 'Win 500 points', 'Complete 1000 Dhikr',),
                      challengeWidget(context, 'Win 1000 points', 'Complete quran 10 pages')
                    , SizedBox(height: 100,)
                    
                    
                    ],
                  ),
                ),
                Positioned(bottom: 0,child: navigationWidget(context))
              ],
            ),
          ),
        ),
      ),
    );
  }


}
