// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:training_final_project/screens/more/timelinefolder/timelinetile.dart';

class Usagehistorypage extends StatefulWidget {
  const Usagehistorypage({super.key});

  @override
  State<Usagehistorypage> createState() => _UsagehistorypageState();
}

class _UsagehistorypageState extends State<Usagehistorypage> {
  bool _displaycontent1 = true;
  bool _displaycontent2 = false;
  bool _displaycontent3 = false;
  //
  bool _whenclicked1 = true;
  bool _whenclicked2 = false;
  bool _whenclicked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Usage History',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: <Widget>[
// first role
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
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
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
// call sms data role
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
//call
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _displaycontent1 = true;
                        _displaycontent2 = false;
                        _displaycontent3 = false;
                        //
                        _whenclicked1 = !_whenclicked1;
                        _whenclicked2 = false;
                        _whenclicked3 = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 25, right: 25),
                      decoration: BoxDecoration(
                          color:
                              _whenclicked1 ? Colors.amber : Colors.grey[900],
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Text(
                        'Calls',
                        style: TextStyle(
                          color: _whenclicked1 ? Colors.black : Colors.white,
                        ),
                      )),
                    ),
                  ),
//sms
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _displaycontent1 = false;
                        _displaycontent2 = true;
                        _displaycontent3 = false;
                        //
                        _whenclicked1 = false;
                        _whenclicked2 = !_whenclicked2;
                        _whenclicked3 = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 25, right: 25),
                      decoration: BoxDecoration(
                          color:
                              _whenclicked2 ? Colors.amber : Colors.grey[900],
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Text(
                        'SMS',
                        style: TextStyle(
                          color: _whenclicked2 ? Colors.black : Colors.white,
                        ),
                      )),
                    ),
                  ),
//data
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _displaycontent1 = false;
                        _displaycontent2 = false;
                        _displaycontent3 = true;
                        //
                        _whenclicked1 = false;
                        _whenclicked2 = false;
                        _whenclicked3 = !_whenclicked3;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 25, right: 25),
                      decoration: BoxDecoration(
                          color:
                              _whenclicked3 ? Colors.amber : Colors.grey[900],
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Text(
                        'Data',
                        style: TextStyle(
                          color: _whenclicked3 ? Colors.black : Colors.white,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
// todays usage role

            _displaycontent1
                ? Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Today's usage",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Today',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.amber,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
//0 calls role
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                color: Colors.grey[700],
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.indigo[300],
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Center(
                                            child: Icon(
                                          color: Colors.black,
                                          Icons.phone_in_talk_outlined,
                                          size: 16,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '# 0',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ),

//divder
                                Container(
                                  color:
                                      const Color.fromARGB(255, 194, 177, 177),
                                  width: 2,
                                  height: 30,
                                ),

                                Text(
                                  '0 Calls',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                Icon(
                                  size: 30,
                                  Icons.share_outlined,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
// detailes role
                          Row(
                            children: [
                              Text(
                                'Detailed usage',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
// last role
                          Expanded(
                            child: Container(
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 2),
                                        color: Colors.black,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          color: Colors.yellow,
                                          Icons.quick_contacts_dialer,
                                          size: 19,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
//SMS section

                : _displaycontent2
                    ? Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Today's usage",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_today_outlined,
                                            color: Colors.white,
                                            size: 12,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Today',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Icon(
                                            Icons.chevron_right,
                                            color: Colors.amber,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
//0 calls role
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                padding: EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                    color: Colors.grey[700],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 8),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              color: Colors.indigo[300],
                                              shape: BoxShape.circle,
                                            ),
                                            child: const Center(
                                                child: Icon(
                                              color: Colors.black,
                                              Icons.message_outlined,
                                              size: 16,
                                            )),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '# 0',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17),
                                          ),
                                        ],
                                      ),
                                    ),

//divder
                                    Container(
                                      color: const Color.fromARGB(
                                          255, 194, 177, 177),
                                      width: 2,
                                      height: 30,
                                    ),

                                    Text(
                                      '0 SMS',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 130,
                                    ),
                                    Icon(
                                      size: 30,
                                      Icons.share_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
// detailes role
                              Row(
                                children: [
                                  Text(
                                    'Detailed usage',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
// last role
                              Expanded(
                                child: Container(
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white, width: 2),
                                            color: Colors.black,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              color: Colors.yellow,
                                              Icons.quick_contacts_dialer,
                                              size: 19,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
// Data section

                    : _displaycontent3
                        ? Expanded(
                            child: Container(
                              child: ListView(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Today's usage",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(7),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Colors.white),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40)),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .calendar_today_outlined,
                                                    color: Colors.white,
                                                    size: 12,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    'Today',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  ),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Icon(
                                                    Icons.chevron_right,
                                                    color: Colors.amber,
                                                    size: 20,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      //0 calls role
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 10, bottom: 5),
                                        padding: EdgeInsets.all(13),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[700],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 35,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                      color: Colors.indigo[300],
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: const Center(
                                                        child: Icon(
                                                      color: Colors.black,
                                                      Icons
                                                          .data_saver_on_rounded,
                                                      size: 16,
                                                    )),
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    '74.39 MB',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 17),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 130,
                                            ),
                                            Icon(
                                              size: 30,
                                              Icons.share_outlined,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      // device data usage section
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            //socail media icon
                                            Container(
                                              width: 100,
                                              height: 37,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    child: Image.asset(
                                                      'images/chrome.png',
                                                    ),
                                                    width: 40,
                                                  ),
                                                  Positioned(
                                                    top: 3,
                                                    left: 22,
                                                    child: Image.asset(
                                                      'images/whatapp.png',
                                                    ),
                                                    width: 33,
                                                  ),
                                                  Positioned(
                                                    top: 7,
                                                    left: 40,
                                                    child: Image.asset(
                                                      'images/youtube.png',
                                                    ),
                                                    width: 30,
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Text(
                                              'Device data usage',
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: Colors.amber,
                                                  decorationColor: Colors.amber,
                                                  decorationThickness: 2),
                                            )
                                          ],
                                        ),
                                      ),
                                      //divider
                                      Divider(
                                        thickness: 1,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Detailed usage',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                      //time line section

                                      // MYTimelinetile(
                                      //   isfirst: true,
                                      //   islast: false,
                                      // ),

                                      // MYTimelinetile(
                                      //     isfirst: false, islast: false),
                                      // MYTimelinetile(
                                      //     isfirst: false, islast: true)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container()
          ],
        ),
      ),
    );
  }
}
