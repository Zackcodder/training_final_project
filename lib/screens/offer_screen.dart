import 'package:flutter/material.dart';
class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 17, 17),
     body: Column(
      children: [
        Row(
          children: [
          Text('Mega deal zone (6)'),
          Row(
            children: [
          Text('View all', style: TextStyle (color: Colors.yellow)),
           Icon(Icons.arrow_forward),
            ]
          )
          // Container(
          //   child: [
          //     
          //   ],
          // ),
          ]
        ),
        Column(
          // Text('Data4Me' style: Textstyle: color: Colors.yellow ),
        )
      ],
     )
    );
      }
  }