import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wa_tourism_app/View/home.dart';

class IO extends StatefulWidget {
  const IO({Key? key}) : super(key: key);

  @override
  State<IO> createState() => _IOState();
}

class _IOState extends State<IO> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home()));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "assets/ethio.jpeg"), // Replace with your image path
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
          child: Container(
            height: myHeight,
            width: myWidth,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: myHeight * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(''),
                  Text(
                    'VISIT ETHIOPIA',
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Developedby',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: myWidth * 0.02,
                          ),
                          Image.asset(
                            'assets/io.png',
                            height: myHeight * 0.03,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(
                        height: myHeight * 0.005,
                      ),
                      Image.asset(
                        'assets/loading1.gif',
                        height: myHeight * 0.015,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
