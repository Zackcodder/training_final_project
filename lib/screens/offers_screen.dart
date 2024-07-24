import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: Center(
        child: Container(
          child: Column(
            children: [
              ///Title row
              Row(
                children: [
                  Text('Exclusive App deals (2)'),
                 ///View all and icon
                  Row(
                    children: [Text('View all'), Icon(Icons.arrow_forward_ios)],
                  )
                ],
              ),
            ///Boxes row
              Row(
                children: [
                  ListView(
                    children: [
                      ///First box
                      Column(
                        children: [
                          Text('Scratch to unveil exciting offers '),
                          Text('Countdown'),
                       ///countdown
                          Row(
                            children: [
                              Container(),
                              Container(),
                              
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
