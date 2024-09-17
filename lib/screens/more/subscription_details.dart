// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SubscriptionDetails extends StatelessWidget {
  const SubscriptionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      appBar: AppBar(
        backgroundColor: Colors.yellow[400],
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Subscription details',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
//first role
            Container(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
// mtn container
                  Container(
                    padding: const EdgeInsets.only(
                        left: 5, right: 5, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Container(
                        width: 35,
                        height: 20,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(60)),
                        child: const Center(
                          child: Text(
                            'MTN',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 8,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
// 5gb xtraspecial
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '5GB Xtraspecial',
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),
//second role stack role
            Container(
              margin: EdgeInsets.only(left: 40, bottom: 55),
              child: Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
//image
                      Row(
                        children: [
                          SizedBox(
                            width: 270,
                          ),
                          Positioned(
                            child: Image.asset(
                              'images/oldmale.png',
                              height: 210,
                            ),
                          ),
                        ],
                      ),
//second container below

                      Positioned(
                          top: 190,
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 130, top: 20, bottom: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(11),
                                    bottomRight: Radius.circular(11))),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Get 5GB XtraSpecial Plan N1,500. Valid for',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12)),
                                    Text('30 days',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12))
                                  ],
                                ),
                              ],
                            ),
                          )),
// first containeer above
                      Positioned(
                          top: 130,
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 20, right: 12),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(11)),
                            child: Row(
                              children: [
                                Column(
                                  children: [
// amount
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.credit_card,
                                          size: 11,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Amount',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '#1500',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  color:
                                      const Color.fromARGB(255, 194, 177, 177),
                                  width: 2,
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 50,
                                ),
//expire on

                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_today_outlined,
                                          size: 11,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Expires on',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '29 September',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      '2024',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Container(
                                  color:
                                      const Color.fromARGB(255, 194, 177, 177),
                                  width: 2,
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 37,
                                ),
// frequency

                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.av_timer,
                                          size: 11,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Frequency',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '30 days',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
// third role auto renewal
            Container(
              margin: EdgeInsets.only(left: 40, right: 42),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
// auto renewal status
                    Text(
                      'Auto renewal status',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

// Buy again role
            Container(
              margin: EdgeInsets.only(left: 40, right: 42),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.orange[100],
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'Buy again',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),

//last role
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                decoration: BoxDecoration(color: Colors.grey[700]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.textsms_outlined,
                                color: Colors.grey[350],
                                size: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Need help with this subscription',
                                style: TextStyle(
                                    color: Colors.grey[350],
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Colors.grey[350],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),

//divider

                    Divider(thickness: 1, color: Colors.grey[850]),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.message_outlined,
                                color: Colors.grey[350],
                                size: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Provide feedback',
                                style: TextStyle(
                                    color: Colors.grey[350],
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Colors.grey[350],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
