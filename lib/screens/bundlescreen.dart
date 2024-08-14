import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Bundlescreen extends StatefulWidget {
  const Bundlescreen({super.key});

  @override
  State<Bundlescreen> createState() => _BundlescreenState();
}

class _BundlescreenState extends State<Bundlescreen> {
  bool _isContent1 = true;
  bool _isContent2 = false;
  bool _isContent3 = false;

  bool _isButton1Clicked = true;
  bool _isButton2Clicked = false;
  bool _isButton3Clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 32, 31, 31),
        appBar: AppBar(
          title: const Text(
            'Buy bundles',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.pink,
          toolbarHeight: 60,
        ),
        body: Column(children: [
          /// first row
          Container(
            color: const Color.fromARGB(255, 32, 31, 31),
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //name letter n phone number
                const Row(
                  children: [
                    ///user name letter
                    CircleAvatar(
                      backgroundColor: Colors.pink,
                      child: Text(
                        'M',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'To Myself \n 0903 445 2344',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
        
                ///but for others
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Buy for others',
                          style: TextStyle(color: Colors.pink, fontSize: 14)),
                      Icon(Icons.arrow_forward_ios, color: Colors.pink),
                    ],
                  ),
                ),
              ],
            ),
          ),
        
          ///Options
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 32, 31, 31),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isContent1 = true;
                      _isContent2 = false;
                      _isContent3 = false;
                      _isButton1Clicked = !_isButton1Clicked;
                      _isButton2Clicked = false;
                      _isButton3Clicked = false;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: _isButton1Clicked
                          ? Colors.pink
                          : const Color.fromARGB(255, 32, 31, 31),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(10),
                    child: const Text('Favourites',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
        
                //Categories
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isContent1 = false;
                      _isContent2 = true;
                      _isContent3 = false;
                      _isButton1Clicked = false;
                      _isButton2Clicked = !_isButton2Clicked;
                      _isButton3Clicked = false;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: _isButton2Clicked
                            ? Colors.pink
                            : const Color.fromARGB(255, 32, 31, 31),
                        borderRadius: BorderRadius.circular(30)),
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.all(10),
                    child: const Text('Categories',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
        
                ///Buy again
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isContent1 = false;
                      _isContent2 = false;
                      _isContent3 = true;
                      _isButton1Clicked = false;
                      _isButton2Clicked = false;
                      _isButton3Clicked = !_isButton3Clicked;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: _isButton3Clicked
                            ? Colors.pink
                            : const Color.fromARGB(255, 32, 31, 31),
                        borderRadius: BorderRadius.circular(30)),
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.all(10),
                    child: const Text('Buy Again',
                        style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
          _isContent1
              ? //Favourites content
              Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Text(
                        'No favourite bundles yet ',
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        'Purchase an active data bundle to be \n able to add as favourite',
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isContent1 = false;
                            _isContent2 = true;
                            _isContent3 = false;
                            _isButton1Clicked = false;
                            _isButton2Clicked = !_isButton2Clicked;
                            _isButton3Clicked = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 20, bottom: 20),
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Text(
                            'Go to categories',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : _isContent2
                  ? //categories content
                  Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //First Column
                          Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.only(bottom: 20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 32, 31, 31),
                                ),
                                child: const Column(
                                  children: [
                                    Icon(
                                      Icons.compare_arrows,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Data bundles',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              //Int'l calling
                              Container(
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.only(bottom: 20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 32, 31, 31),
                                ),
                                child: const Column(
                                  children: [
                                    Icon(
                                      Icons.phone_in_talk_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Int\'l calling\n Bundles',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
        
                              //Visitors plan
                              Container(
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.only(bottom: 20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 32, 31, 31),
                                ),
                                child: const Column(
                                  children: [
                                    Icon(
                                      Icons.person_2_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Visitors plan',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      '*For foreigners',
                                      style: TextStyle(
                                          color: Colors.pink, fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              //Broadband mifi
                              Container(
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.only(bottom: 20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 32, 31, 31),
                                ),
                                child: const Column(
                                  children: [
                                    Icon(
                                      Icons.phone_in_talk,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Broadband\n(MiFi)\n bundles',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
        
                          //Second column
                          Column(children: [
                            //Data & voice
                            Container(
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.only(bottom: 20),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 32, 31, 31),
                              ),
                              child: const Column(
                                children: [
                                  Icon(
                                    Icons.send_to_mobile,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Data & voice\n bundles',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //sme
                            Container(
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.only(bottom: 20),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 32, 31, 31),
                              ),
                              child: const Column(
                                children: [
                                  Icon(
                                    Icons.message,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'SME bundles',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //Thryve
                            Container(
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.only(bottom: 20),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 32, 31, 31),
                              ),
                              child: const Column(
                                children: [
                                  Icon(
                                    Icons.phone_in_talk,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Thryve\n bundles',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //digital
                            Container(
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.only(bottom: 20),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 32, 31, 31),
                              ),
                              child: const Column(
                                children: [
                                  Icon(
                                    Icons.phone_in_talk,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Digital \n bundles',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ]),
        
                          //third column
                          Column(
                            children: [
                              //Social bundles
                              Container(
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.only(bottom: 20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 32, 31, 31),
                                ),
                                child: const Column(
                                  children: [
                                    Icon(
                                      Icons.ondemand_video_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Social \nbundles',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              //hynetflex
                              Container(
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.only(bottom: 20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 32, 31, 31),
                                ),
                                child: const Column(
                                  children: [
                                    Icon(
                                      Icons.router,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Broadband \n(Hynetflex)\n bundles',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              //broadband (fibrenet) bundles
                              Container(
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.only(bottom: 20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 32, 31, 31),
                                ),
                                child: const Column(
                                  children: [
                                    Icon(
                                      Icons.router,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      ' Broadband \n(Fibrenet)\n bundles',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  : _isContent3
                      ? Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                //info
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius:
                                          BorderRadius.circular(10)),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.info,
                                        color: Colors.pink,
                                      ),
                                      Text(
                                        'Your last 2 months data history is shown \nhere.',
                                        style: TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
        
                                ///buy again offers
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Column(
                                    children: [
                                      // plan card
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color.fromARGB(
                                                255, 32, 31, 31)),
                                        child: Column(
                                          children: [
                                            //First row
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                  children: [
                                                    Text(
                                                      'MTN XtraSpecial',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white),
                                                    ),
                                                    Text(
                                                      'Flatrate of 15k/sec to Local networks \n in Nigeria & discounted call to seven \n international countries.',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.info,
                                                  color: Colors.pink,
                                                )
                                              ],
                                            ),
                                            Divider(
                                              color: Colors.grey,
                                            ),
                                            //Second row
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.access_time,
                                                          color: Colors.grey,
                                                        ),
                                                        Text(
                                                          'Validity',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      '9999 days',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white),
                                                    )
                                                  ],
                                                ),
                                                //For divider
                                                // SizedBox(
                                                //   width: 3,
                                                //   height: 10,
                                                // ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.credit_card,
                                                          color: Colors.grey,
                                                        ),
                                                        Text(
                                                          'Price',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      '₦102',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white),
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(30),
                                                      border: Border.all(
                                                          color:
                                                              Colors.pink)),
                                                  child: Text(
                                                    'Buy now',
                                                    style: TextStyle(
                                                        color: Colors.pink),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      //plan card
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color.fromARGB(
                                                255, 32, 31, 31)),
                                        child: Column(
                                          children: [
                                            //First row
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                  children: [
                                                    Text(
                                                      'MTN XtraSpecial',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white),
                                                    ),
                                                    Text(
                                                      'Flatrate of 15k/sec to Local networks \n in Nigeria & discounted call to seven \n international countries.',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.info,
                                                  color: Colors.pink,
                                                )
                                              ],
                                            ),
                                            Divider(
                                              color: Colors.grey,
                                            ),
                                            //Second row
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.access_time,
                                                          color: Colors.grey,
                                                        ),
                                                        Text(
                                                          'Validity',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      '9999 days',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white),
                                                    )
                                                  ],
                                                ),
                                                //For divider
                                                // SizedBox(
                                                //   width: 3,
                                                //   height: 10,
                                                // ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.credit_card,
                                                          color: Colors.grey,
                                                        ),
                                                        Text(
                                                          'Price',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      '₦102',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white),
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(30),
                                                      border: Border.all(
                                                          color:
                                                              Colors.pink)),
                                                  child: Text(
                                                    'Buy now',
                                                    style: TextStyle(
                                                        color: Colors.pink),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
        
                                      // plan card
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color.fromARGB(
                                                255, 32, 31, 31)),
                                        child: Column(
                                          children: [
                                            //First row
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                  children: [
                                                    Text(
                                                      'MTN XtraSpecial',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white),
                                                    ),
                                                    Text(
                                                      'Flatrate of 15k/sec to Local networks \n in Nigeria & discounted call to seven \n international countries.',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.info,
                                                  color: Colors.pink,
                                                )
                                              ],
                                            ),
                                            Divider(
                                              color: Colors.grey,
                                            ),
                                            //Second row
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.access_time,
                                                          color: Colors.grey,
                                                        ),
                                                        Text(
                                                          'Validity',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      '9999 days',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white),
                                                    )
                                                  ],
                                                ),
                                                //For divider
                                                // SizedBox(
                                                //   width: 3,
                                                //   height: 10,
                                                // ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.credit_card,
                                                          color: Colors.grey,
                                                        ),
                                                        Text(
                                                          'Price',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      '₦102',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white),
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(30),
                                                      border: Border.all(
                                                          color:
                                                              Colors.pink)),
                                                  child: Text(
                                                    'Buy now',
                                                    style: TextStyle(
                                                        color: Colors.pink),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      //plan card
        
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color.fromARGB(
                                                255, 32, 31, 31)),
                                        child: Column(
                                          children: [
                                            //First row
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                  children: [
                                                    Text(
                                                      'MTN XtraSpecial',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white),
                                                    ),
                                                    Text(
                                                      'Flatrate of 15k/sec to Local networks \n in Nigeria & discounted call to seven \n international countries.',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.info,
                                                  color: Colors.pink,
                                                )
                                              ],
                                            ),
                                            Divider(
                                              color: Colors.grey,
                                            ),
                                            //Second row
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.access_time,
                                                          color: Colors.grey,
                                                        ),
                                                        Text(
                                                          'Validity',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      '9999 days',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white),
                                                    )
                                                  ],
                                                ),
                                                //For divider
                                                // SizedBox(
                                                //   width: 3,
                                                //   height: 10,
                                                // ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.credit_card,
                                                          color: Colors.grey,
                                                        ),
                                                        Text(
                                                          'Price',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      '₦102',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white),
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(30),
                                                      border: Border.all(
                                                          color:
                                                              Colors.pink)),
                                                  child: Text(
                                                    'Buy now',
                                                    style: TextStyle(
                                                        color: Colors.pink),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(),
        ]));
  }
}
