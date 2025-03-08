import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),),
      body: SingleChildScrollView( 
        child: Center(
          child: SizedBox(
            width: screenWidth > 600 ? 400 : screenWidth - 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150, 
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/mosque1.png'), 
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  'Welcome back to Ramadan',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                SizedBox(height: 10),
                Text(
                  'Ramadan is the ninth month of the Islamic calendar, observed by Muslims worldwide as a month of fasting, prayer, reflection, and community.',
                  style: TextStyle(color: Colors.black87),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Username',hintStyle: TextStyle(color: const Color.fromARGB(255, 198, 187, 84)),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',hintStyle: TextStyle(color: const Color.fromARGB(255, 198, 187, 84)),
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                TextButton(
                  onPressed: () {}, 
                  child: Text('Forgot password?', style: TextStyle(color: const Color.fromARGB(255, 198, 187, 84))),
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {}, 
                    child: Text('Log in'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.yellow,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      minimumSize: Size(double.infinity, 50)
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New user? "),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupScreen()),
                        );
                      },
                      child: Text('Sign Up', style: TextStyle(color: Colors.black87)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Signup Screen
class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Ramadan',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
        ),
        centerTitle: true,),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: screenWidth > 600 ? 400 : screenWidth - 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 140, 
                  decoration: BoxDecoration(
                    image: DecorationImage(alignment: Alignment.center,
                      image: AssetImage('assets/lamp.png'), 
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  'The best way to celebrate Ramadan',
                  style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 25),
                ),
                Text(
                  'Join our community of millions and get access to the latest exclusive content.',
                  style: TextStyle(color: Colors.black87),
                ),
                SizedBox(height: 15,),              
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email address',hintStyle: TextStyle(color: const Color.fromARGB(255, 198, 187, 84)),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',hintStyle: TextStyle(color: const Color.fromARGB(255, 198, 187, 84)),
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox( height: 10),
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text('Continue'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Colors.yellow,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text('Sign Up with Google'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Colors.yellow,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'By continuing, you agree to the Terms of Use. Read our Privacy Policy.',
                  style: TextStyle(color: Colors.black87, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
