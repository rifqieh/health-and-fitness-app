import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'constants.dart';
import 'indicator.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Practice every day',
              style: TextStyle(
                color: orangeColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'and share your Results',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Image.asset('img1.png'),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Indicator(false),
              Indicator(false),
              Indicator(false),
              Indicator(true),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              color: orangeColor,
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 30,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'Login with Facebook',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
