import 'package:flutter/material.dart';


class RechargeScreen extends StatelessWidget {
  const RechargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          ///row
          Row(
            children: [
              CircleAvatar(child:Text('M',style: TextStyle(color: Colors.white)) ),
              Text('To Myself \n 0903 445 2344', style: TextStyle(color: Colors.white),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Buy for others',
                      style: TextStyle(
                          color: Colors.yellow, fontSize: 14)),
                  Icon(Icons.arrow_forward_ios,
                      color: Colors.yellow),
                ],
              ),
            ],
          ),
          


        ],
      ),
    );
  }
}