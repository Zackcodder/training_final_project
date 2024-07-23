import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       child: Column(
        children: [
          Row(
            children: [
              Text('09011223344'),
              Divider(),
              Text('Hawau'),
            Row(
              children: [
                Text('MTN ...'),
                Icon(Icons.arrow_forward_ios)
              ],
            )
            ],
          )
        ],
       ), 
      ),
    );
  }
}
