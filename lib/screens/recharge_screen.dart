// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Recharge extends StatefulWidget {
  const Recharge({super.key});

  @override
  State<Recharge> createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black54,
        child: Column(
          children: [
            //awoof for u container
            Container(
              margin: EdgeInsets.all(35),
              //first container
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[900],
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //container
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.yellow, shape: BoxShape.circle),
                  ),

                  //awuf 4 u
                  Row(
                    children: [
                      Text('Awuf4u offer ',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 30,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 125,
                  ),

                  // 2nd circle
                  Container(
                    width: 27,
                    height: 27,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 2),
                        shape: BoxShape.circle),
                  ),
                ],
              ),
            ),
            // enjoy 100% bonus container
            Container(
              color: Colors.yellow,
              margin: EdgeInsets.only(left: 35, right: 35, bottom: 15),
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 27,
                    height: 27,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        shape: BoxShape.circle),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Enjoy 100% bonus when you recharge',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      Text('using Momo and 50% bonus on',
                          style: TextStyle(
                              fontSize: 13.5, fontWeight: FontWeight.bold)),
                      Text('rechage with bank card',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      //container of extra
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        margin: EdgeInsets.all(5),
                        height: 30,
                        width: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'EXTRA',
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      //container of bonus
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        margin: EdgeInsets.all(5),
                        height: 30,
                        width: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'BONUS',
                              style:
                                  TextStyle(fontSize: 11, color: Colors.yellow),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(color: Colors.grey[900]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 35),
                          child: Text(
                            'Recharge Again',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                      Container(
                        margin: EdgeInsets.all(35),
                        child: Row(
                          children: [
                            Text(
                              'View all',
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 21,
                              ),
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.amber,
                              size: 27,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        'No Recent Recharge',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  Text(
                    'you havent purchased any',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    'airtime recently',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
