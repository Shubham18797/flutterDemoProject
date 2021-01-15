
import 'package:demo_project_flutter/home_screen.dart';
import 'package:demo_project_flutter/login_page.dart';
import 'package:demo_project_flutter/sign_up.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {

  Widget _buildSkipButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FlatButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        }, child: Text('SKIP', style: TextStyle(color: Colors.white, fontSize: 16.0),))
      ],
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 50,
          child: RaisedButton(

            elevation: 5.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text(
              "LOGIN",
              style: TextStyle(
                  color: Colors.red.shade700,
                  fontSize: 17.0
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSignUpButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 50,
          child: RaisedButton(

            elevation: 5.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
            },
            child: Text(
              "SIGN UP",
              style: TextStyle(
                  color: Colors.red.shade700,
                  fontSize: 17.0
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildOR() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('------------ OR ------------',style: TextStyle(color: Colors.white, fontSize: 17.0),)
      ],
    );
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLoginButton(context),
            Padding(padding: EdgeInsets.all(8.0)),
            _buildOR(),
            Padding(padding: EdgeInsets.all(8.0)),
            _buildSignUpButton(context),
            Padding(padding: EdgeInsets.all(8.0)),
            _buildSkipButton(context)
          ],
        ),
      ),
    );


  }
}
