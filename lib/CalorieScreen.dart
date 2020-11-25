import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'SignInGoogle.dart';
//import 'EmailSignIn.dart';
//import 'BmiScreen.dart';
//import 'SignUpScreen.dart';
//import 'LoginScreen.dart';
import 'HomeScreen.dart';
//import 'EmailSignIn.dart';
//import 'CalorieScreen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CaloriePage extends StatefulWidget {
  @override
  _CaloriePageState createState() => _CaloriePageState();
}

class _CaloriePageState extends State<CaloriePage> {
  TextEditingController _quantity;
  TextEditingController _fooditem;
  //TextEditingController _calorie;
  int _totalcalorie = 0;
  FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  _showToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.greenAccent,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check),
          SizedBox(
            width: 12.0,
          ),
          Text("${_totalcalorie.toString()} calories added"),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: 2),
    );

    // Custom Toast Position
    fToast.showToast(
        child: toast,
        toastDuration: Duration(seconds: 2),
        positionedToastBuilder: (context, child) {
          return Positioned(
            child: child,
            top: 16.0,
            left: 16.0,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return Home();
              },
            ));
          },
          child: Icon(
            Icons.home,
          ),
        ),
        title: Text('Calorie Counter'),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Food Type',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
                controller: _fooditem,
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyanAccent),
                    ),
                    hintText: 'Protein',
                    hintStyle: TextStyle(color: Colors.white))),
            TextField(
              controller: _quantity,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyanAccent),
                  ),
                  hintText: '200 (grams)',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
            SizedBox(
              width: (MediaQuery.of(context).size.width) * 0.5,
              child: RaisedButton(
                  color: Colors.cyanAccent,
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    if ((_fooditem.toString()) != null &&
                        int.parse(_quantity.toString()) != null) {
                      if (_fooditem.toString() == 'Protein') {
                        setState(() {
                          _totalcalorie = (int.parse(_quantity.toString()) * 3);
                        });
                      } else if (_fooditem.toString() == 'Carbohydrates') {
                        setState(() {
                          _totalcalorie = (int.parse(_quantity.toString()) * 3);
                        });
                      } else if (_fooditem.toString() == 'Fats') {
                        setState(() {
                          _totalcalorie = (int.parse(_quantity.toString()) * 9);
                        });
                      }
                      _showToast();
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0))),
            )
          ],
        ),
      ),
    );
  }
}
