// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MtnShare extends StatelessWidget {
  const MtnShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: Container(
        child: Column(
          children: [
// first set mtn share
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //icon
                  IconButton(
                    icon: Icon(Icons.chevron_left),
                    color: Colors.white,
                    onPressed: () {},
                  ),
// text mtn share
                  Text('Mtn Share' ,style: TextStyle(color: Colors.white),),
//icon
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        color: Colors.yellow,
                        Icons.quick_contacts_dialer,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
// second set sharing is caring
            Expanded(
              child: Container(
decoration: BoxDecoration(color: Colors.grey[900],borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              
                child: Column(
                  children: [
// sharing is caring
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sharing is caring',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Show your friends you care.',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
// data share
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Container(
                              width: 25,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Colors.black, width: 2),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.wifi,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Data Share',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('*'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'you can only share a maximum of 5GB',
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      'data per transaction per day.',
                                      style: TextStyle(fontSize: 13),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
// airtime share
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Container(
                              width: 25,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Colors.black, width: 2),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.electric_bolt,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Airtime Share',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('*'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Max. #50,000 per day',
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('*'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Min. #50 max.#5,000 per transaction',
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
// Sme datashare
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Container(
                              width: 25,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Colors.black, width: 2),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.location_city,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SME Datashare',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('*'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Mtn SME DataShare is a prepaid',
                                      style: TextStyle(fontSize: 13),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'service that allow business owners',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'to buy data bundles and share with',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'their staff.This service is specifically',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'designed for growing businesses',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'offering them the ability to centrally',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'manage internet usage per staff across',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'their business',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
// divider
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
// by sharing you agree*******
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'By sharing you agree to the terms and conditions',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'of sharing data and airtime',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
// create pin
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Container(
                              width: 18,
                              height: 27,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.question_mark,
                                  size: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Create PIN',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                          SizedBox(
                            width: 210,
                          ),
                          IconButton(
                            icon: Icon(Icons.chevron_right),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
