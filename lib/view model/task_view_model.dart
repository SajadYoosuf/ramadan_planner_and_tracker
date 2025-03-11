import 'package:flutter/material.dart';
import 'package:ramadan_planner/model/dikr_model.dart';

class TaskViewmodel extends ChangeNotifier {
  String initalDikr =
      'اللَّهُمَّ إِنَّكَ عَفُوٌّ تُحِبُّ ٱلْعَفْوَ فَٱعْفُ عَنِّي';
  List<DikrModel> ramadanDikr = [
    DikrModel(
        dikrName: "اللَّهُمَّ إِنَّكَ عَفُوٌّ تُحِبُّ ٱلْعَفْوَ فَٱعْفُ عَنِّي",
        count: 0),
    DikrModel(
        dikrName:
            "اللَّهُمَّ بَارِكْ لَنَا فِي رَمَضَانَ وَتَقَبَّلْ صِيَامَنَا وَقِيَامَنَا",
        count: 0),
    DikrModel(dikrName: "اللَّهُ أَكْبَرُ", count: 0),
    DikrModel(
        dikrName:
            "اللَّهُ أَكْبَرُ، اللَّهُ أَكْبَرُ، اللَّهُ أَكْبَرُ، لَا إِلَٰهَ إِلَّا ٱللَّهُ، وَاللَّهُ أَكْبَرُ، اللَّهُ أَكْبَرُ، وَلِلَّهِ ٱلْحَمْدُ",
        count: 0),
    DikrModel(
        dikrName:
            "اللَّهُمَّ تَقَبَّلْ مِنَّا إِنَّكَ أَنتَ ٱلسَّمِيعُ ٱلْعَلِيمُ",
        count: 0),
    DikrModel(dikrName: "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ", count: 0),
    DikrModel(dikrName: "ٱلْحَمْدُ لِلَّهِ", count: 0),
    DikrModel(dikrName: "لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ", count: 0),
    DikrModel(dikrName: "أَسْتَغْفِرُ ٱللَّهَ", count: 0),
    DikrModel(dikrName: "صَلَّى ٱللَّهُ عَلَىٰ مُحَمَّدٍ وَسَلَّمَ", count: 0),
  ];
  List<int> countList = [
    50,
    100,
    150,
    200,
    250,
    300,
    350,
    400,
    500,
    600,
    700,
    800,
    900,
    1000
  ];
  void dikrChanging(String dikr) {
    initalDikr = dikr;
    notifyListeners();
  }
}
