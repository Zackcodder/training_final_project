// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class RechargeScreen extends StatelessWidget {
  const RechargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'Recharge',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 46, 45, 45),
      body: Column(
        children: [
          /// first row
          Container(
            color: Colors.black,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                        child:
                            Text('M', style: TextStyle(color: Colors.white))),
                    Text(
                      'To Myself \n 0903 445 2344',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Buy for others',
                          style: TextStyle(color: Colors.yellow, fontSize: 14)),
                      Icon(Icons.arrow_forward_ios, color: Colors.yellow),
                    ],
                  ),
                ),
              ],
            ),
          ),

          ///Row
          Container(
            width: 450,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  margin: const EdgeInsets.only(right: 10),
                  child: const Text('Airtime Recharge',
                      style: TextStyle(color: Colors.white)),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  margin: const EdgeInsets.only(left: 10),
                  child: const Text('Voucher Recharge',
                      style: TextStyle(color: Colors.white)),
                )
              ],
            ),
          ),

          ///Column
          Container(
            padding: const EdgeInsets.all(10),
            width: 500,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Enter Amount:',
                        style: TextStyle(color: Colors.white)),
                    Text('Min:N50 | Max :N150,000',
                        style: TextStyle(color: Colors.white))
                  ],
                ),
                //Text('N0.00', style: TextStyle(color: Colors.grey,fontSize: 30))
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: String.fromEnvironment('N0.00'),
                  hintStyle: TextStyle(color: Color.fromARGB(255, 184, 183, 183))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
