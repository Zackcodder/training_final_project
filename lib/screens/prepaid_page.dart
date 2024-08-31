// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrepaidPage extends StatefulWidget {
  const PrepaidPage({super.key});

  @override
  State<PrepaidPage> createState() => _PrepaidPageState();
}

class _PrepaidPageState extends State<PrepaidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: Container(
        child: Column(
          children: [
// first section
            Container(
              margin: EdgeInsets.all(17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(child: Text('H')),
                      ),
                      Text(
                        'Hawau',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 150,
                  ),
// robot icon
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
// X icon
                  IconButton(
                    icon: Icon(Icons.clear),
                    iconSize: 35,
                    color: Colors.grey,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                ),
                child: Column(
                  children: [
// prepaid,mtn and extra specail
                    Container(
                      padding: EdgeInsets.only(right: 15, top: 10, left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
//prepaid
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.save_outlined,
                                    color: Colors.grey[600],
                                    size: 17,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Prepaid',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Text('0906 557 5428',
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 13)),
                            ],
                          ),
                          SizedBox(
                            width: 200,
                          ),
//mtn
                          Container(
                            width: 40,
                            height: 25,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(60)),
                            child: const Center(
                                child: Text(
                              'MTN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
// xtra special
                          Text(
                            'Xtra special',
                            style: TextStyle(color: Colors.amber, fontSize: 14),
                          ),
//chevron icon
                          IconButton(
                            icon: Icon(Icons.chevron_right),
                            color: Colors.amber,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
//divider
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
// data,airtime,other balance
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Data',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Airtime',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Other balances',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
//divider
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
//data balace & 4.4gb
                    Container(
                      margin: EdgeInsets.only(
                          left: 15, right: 15, top: 8, bottom: 8),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
//data balance
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_downward,
                                size: 15,
                              ),
                              Icon(
                                Icons.arrow_upward,
                                size: 15,
                              ),
                              Text(
                                'Data balance',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
//4.4gb left
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Text(
                              '4.4gb left',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
// auto renew status
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Auto renew status',
                          style: TextStyle(color: Colors.amber),
                        ),
                        IconButton(
                          icon: Icon(Icons.chevron_right),
                          color: Colors.amber,
                          onPressed: () {},
                        ),
                      ],
                    ),
//5gb xtraspecail
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(
                          left: 15, right: 15, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('5GB XtraSpecial Bundle',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                '4.4 GB left',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Expires on',
                                style: TextStyle(color: Colors.grey[800]),
                              ),
                            ],
                          ),
                          Text('04 Sep 2024',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
//divder
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
// you can also
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You can also',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
//buy bundle/and other role
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
// buy bundle
                          Column(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Icon(Icons.gas_meter_outlined),
                                ),
                              ),
                              Text('Buy Bundle',
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 13))
                            ],
                          ),
// transaction history
                          Column(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.only(top: 16),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Icon(Icons.list_alt_sharp),
                                ),
                              ),
                              Column(
                                children: [
                                  Text('Transaction',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 13)),
                                  Text('history',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 13)),
                                ],
                              )
                            ],
                          ),
//share data
                          Column(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Icon(Icons.gas_meter_outlined),
                                ),
                              ),
                              Text('Share data',
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 13))
                            ],
                          ),
//borrow
                          Column(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Icon(Icons.gas_meter_outlined),
                                ),
                              ),
                              Text('Borrow',
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 13))
                            ],
                          ),
                        ],
                      ),
                    ),
//manage sub
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.only(top: 16),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Icon(Icons.play_circle_outline),
                                ),
                              ),
                              Column(
                                children: [
                                  Text('Manage',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 13)),
                                  Text('subsription',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 13)),
                                ],
                              )
                            ],
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
