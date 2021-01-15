import 'package:demo_project_flutter/home_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email, password;

  Widget _buildContextForEmailRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            value = email;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.person, color: Colors.white,),
            labelText: 'E-mail',
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            )
        ),
      ),
    );
  }

  Widget _buildContextForPasswordRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            value = password;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock, color: Colors.white,),
            labelText: 'Password',
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            )
        ),
      ),
    );
  }

  Widget _buillLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          child: RaisedButton(
            elevation: 5.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen())
              );
            },
            child: Text(
              "LOGIN",
              style: TextStyle(
                  color: Colors.red.shade700,
                  fontSize: MediaQuery.of(context).size.height / 40
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildForgotPasswordButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(onPressed: (){}, child: Text(
          'Forgot Password?',
          style: TextStyle(fontSize: 17.0, color: Colors.white),
        )
        )
      ],
    );
  }

  Widget _buildRegisterButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FlatButton(onPressed: (){}, child: Text(
          "DON'T HAVE AN ACCOUNT?",
          style: TextStyle(fontSize: 15.0, color: Colors.white),
        )
        ),
        Spacer(),

        FloatingActionButton(onPressed: (){},
          backgroundColor: Colors.white,
          child: Icon(Icons.add, color: Colors.red.shade700,),
        ),
        Padding(padding: EdgeInsets.all(8.0))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text("Log In", style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold, color: Colors.white),),
            _buildContextForEmailRow(),
            _buildContextForPasswordRow(),
            Padding(padding: EdgeInsets.all(8.0)),
            _buillLoginButton(),
            _buildForgotPasswordButton(),
            Spacer(),
            _buildRegisterButton(),
            Padding(padding: EdgeInsets.only(bottom: 8.0))
          ],
        ),
      ),
    );
  }
}


