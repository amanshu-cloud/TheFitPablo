import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'SignInGoogle.dart';
//import 'EmailSignIn.dart';
import 'BmiScreen.dart';
//import 'SignUpScreen.dart';
import 'LoginScreen.dart';
//import 'HomeScreen.dart';
//import 'EmailSignIn.dart';
import 'CalorieScreen.dart';
//import 'Twitter.dart';
//import 'package:google_sign_in/google_sign_in.dart';
//import 'Facebook.dart';
//import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

//2
//final FirebaseAuth _auth = FirebaseAuth.instance;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return Login();
              },
            ));
          },
          child: Column(children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Login();
                  },
                ));
              },
              child: Icon(
                Icons.account_circle,
                color: Colors.cyanAccent,
              ),
            ),
            RaisedButton(
              onPressed: () {
                signOutGoogle();
              },
              child: Icon(
                Icons.logout,
                color: Colors.cyanAccent,
              ),
            )
          ]),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('TheFitPablo',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: Colors.cyanAccent)),
            SizedBox(
              height: 50,
              width: (MediaQuery.of(context).size.width) * 0.6,
              child: RaisedButton(
                  color: Colors.cyanAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.calculate),
                      Text(
                        "BMI Calculator",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return BmiPage();
                        },
                      ),
                    );
                    //BMI CALC
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0))),
            ),
            SizedBox(
              height: 50,
              width: (MediaQuery.of(context).size.width) * 0.6,
              child: RaisedButton(
                  color: Colors.cyanAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.food_bank),
                      Text(
                        "Calorie Counter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return CaloriePage();
                        },
                      ),
                    );
                    //BMI CALC
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  child: OutlineButton(
                    shape: CircleBorder(),

                    // RoundedRectangleBorder(borderRadius: new BorderRadius.circular(200.0)),
                    child: FaIcon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.cyanAccent,
                    ),
                    borderSide: BorderSide(color: Colors.cyanAccent),
                    onPressed: () {
                      signInWithGoogle().then((result) {
                        if (result != null) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Home();
                              },
                            ),
                          );
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: OutlineButton(
                    shape: CircleBorder(),

                    // RoundedRectangleBorder(borderRadius: new BorderRadius.circular(200.0)),
                    child: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.cyanAccent,
                    ),
                    borderSide: BorderSide(color: Colors.cyanAccent),
                    onPressed: () {
                      signInWithGoogle().then((result) {
                        if (result != null) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Home();
                              },
                            ),
                          );
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: OutlineButton(
                    shape: CircleBorder(),

                    // RoundedRectangleBorder(borderRadius: new BorderRadius.circular(200.0)),
                    child: FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.cyanAccent,
                    ),
                    borderSide: BorderSide(color: Colors.cyanAccent),
                    onPressed: () {
                      signInWithGoogle().then((result) {
                        if (result != null) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Home();
                              },
                            ),
                          );
                        }
                      });
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
