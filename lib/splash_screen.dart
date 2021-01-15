
import 'package:demo_project_flutter/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    var d = Duration(seconds: 3);
    Future.delayed(d, () {
      // to next page and close this page
      Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(
          builder: (context) {
            return LoginScreen();
          },
        ),
            (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            // image: DecorationImage(image: AssetImage('assets/bg_img.png'),
            //     fit: BoxFit.cover
            // ),
            color: Colors.blue
          ),
          child: Center(
            // child: Image.asset('assets/coffee-cup-logo.png',width: 150, height: 150,fit: BoxFit.fill),
            child: Text('SPLASH SCREEN', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
          )
      ),
    );
  }
}


