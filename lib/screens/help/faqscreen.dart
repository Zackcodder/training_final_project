import 'package:flutter/material.dart';

class Faqscreen extends StatefulWidget {
  const Faqscreen({super.key});

  @override
  State<Faqscreen> createState() => _FaqscreenState();
}

class _FaqscreenState extends State<Faqscreen> {
  bool _isContent1 = true;
  bool _isContent2 = false;
  bool _isContent3 = false;
  bool _isContent4 = false;
  bool _isContent5 = false;
  bool _isContent6 = false;
  bool _isContent7 = false;
  bool _isContent8 = false;


  bool _isButton1Clicked = true;
  bool _isButton2Clicked = false;
  bool _isButton3Clicked = false;
  bool _isButton4Clicked = false;
  bool _isButton5Clicked = false;
  bool _isButton6Clicked = false;
  bool _isButton7Clicked = false;
  bool _isButton8Clicked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Frequently Asked Questions',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          ///textfield
          Container(
            height: 100,
            color: Colors.black,
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50.0,
                child: TextField(
                  onChanged: ((value) {}),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(top: 2),
                    hintText: 'Search Frequently Asked Questions',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 12),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30.0,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(45.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ),

          ///Options
          Container(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                         _isContent1 = true;
                        _isContent2 = false;
                        _isContent3 = false;
                        _isContent4 = false;
                        _isContent5 = false;
                        _isContent6 = false;
                        _isContent7 = false;
                        _isContent8 = false;

                        _isButton1Clicked = !_isButton1Clicked;
                        _isButton2Clicked = false;
                        _isButton3Clicked = false;
                        _isButton4Clicked = false;
                        _isButton5Clicked = false;
                        _isButton6Clicked = false;
                        _isButton7Clicked = false;
                        _isButton8Clicked = false;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _isButton1Clicked ? Colors.pink : Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      child: const Text('How to videos',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),

                  //data
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isContent1 = false;
                        _isContent2 = true;
                        _isContent3 = false;
                        _isContent4 = false;
                        _isContent5 = false;
                        _isContent6 = false;
                        _isContent7 = false;
                        _isContent8 = false;

                        _isButton1Clicked = false;
                        _isButton2Clicked = !_isButton2Clicked;
                        _isButton3Clicked = false;
                        _isButton4Clicked = false;
                        _isButton5Clicked = false;
                        _isButton6Clicked = false;
                        _isButton7Clicked = false;
                        _isButton8Clicked = false;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: _isButton2Clicked ? Colors.pink : Colors.black,
                          borderRadius: BorderRadius.circular(30)),
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      child: const Text('Data',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  //share
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isContent1 =false;
                        _isContent2 = false;
                        _isContent3 = true;
                        _isContent4 = false;
                        _isContent5 = false;
                        _isContent6 = false;
                        _isContent7 = false;
                        _isContent8 = false;

                        _isButton1Clicked = false;
                        _isButton2Clicked = false;
                        _isButton3Clicked = !_isButton3Clicked;
                        _isButton4Clicked = false;
                        _isButton5Clicked = false;
                        _isButton6Clicked = false;
                        _isButton7Clicked = false;
                        _isButton8Clicked = false;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _isButton3Clicked ? Colors.pink : Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      child: const Text('Share',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  //borrow
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isContent1 = false;
                        _isContent2 = false;
                        _isContent3 = false;
                        _isContent4 = true;
                        _isContent5 = false;
                        _isContent6 = false;
                        _isContent7 = false;
                        _isContent8 = false;

                        _isButton1Clicked = false;
                        _isButton2Clicked = false;
                        _isButton3Clicked = false;
                        _isButton4Clicked = !_isButton4Clicked;
                        _isButton5Clicked = false;
                        _isButton6Clicked = false;
                        _isButton7Clicked = false;
                        _isButton8Clicked = false;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _isButton4Clicked ? Colors.pink : Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      child: const Text('Borrow',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  //recharge
                  GestureDetector(
                    onTap: () {
                      setState(() {
                       _isContent1 = false;
                        _isContent2 = false;
                        _isContent3 = false;
                        _isContent4 = false;
                        _isContent5 = true;
                        _isContent6 = false;
                        _isContent7 = false;
                        _isContent8 = false;

                        _isButton1Clicked = false;
                        _isButton2Clicked = false;
                        _isButton3Clicked = false;
                        _isButton4Clicked = false;
                        _isButton5Clicked = !_isButton5Clicked;
                        _isButton6Clicked = false;
                        _isButton7Clicked = false;
                        _isButton8Clicked = false;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _isButton5Clicked ? Colors.pink : Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      child: const Text('Recharge',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  //roaming
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isContent1 = false;
                        _isContent2 = false;
                        _isContent3 = false;
                        _isContent4 = false;
                        _isContent5 = false;
                        _isContent6 = true;
                        _isContent7 = false;
                        _isContent8 = false;

                        _isButton1Clicked = false;
                        _isButton2Clicked = false;
                        _isButton3Clicked = false;
                        _isButton4Clicked = false;
                        _isButton5Clicked = false;
                        _isButton6Clicked = !_isButton6Clicked;
                        _isButton7Clicked = false;
                        _isButton8Clicked = false;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _isButton6Clicked ? Colors.pink : Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      child: const Text('Roaming',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  //prestige
                  GestureDetector(
                    onTap: () {
                      setState(() {
                       _isContent1 = false;
                        _isContent2 = false;
                        _isContent3 = false;
                        _isContent4 = false;
                        _isContent5 = false;
                        _isContent6 = false;
                        _isContent7 = true;
                        _isContent8 = false;

                        _isButton1Clicked = false;
                        _isButton2Clicked = false;
                        _isButton3Clicked = false;
                        _isButton4Clicked = false;
                        _isButton5Clicked = false;
                        _isButton6Clicked = false;
                        _isButton7Clicked = !_isButton7Clicked;
                        _isButton8Clicked = false;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _isButton7Clicked ? Colors.pink : Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      child: const Text('Prestige',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  //5G
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isContent1 = false;
                        _isContent2 = false;
                        _isContent3 = false;
                        _isContent4 = false;
                        _isContent5 = false;
                        _isContent6 = false;
                        _isContent7 = false;
                        _isContent8 = true;

                        _isButton1Clicked = false;
                        _isButton2Clicked = false;
                        _isButton3Clicked = false;
                        _isButton4Clicked = false;
                        _isButton5Clicked = false;
                        _isButton6Clicked = false;
                        _isButton7Clicked = false;
                        _isButton8Clicked = !_isButton8Clicked;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _isButton7Clicked ? Colors.pink : Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      child: const Text('5G',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _isContent1
              ?
              //how to videos
              Expanded(
                  child: ListView(
                    children: [
                      //netflix
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(bottom: 5),
                        color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'How to Manage your Data on Netflix App',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      //netflix web
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(bottom: 5),
                        color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'How to Manage your Data on Netflix Web',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      //xtratime
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(bottom: 5),
                        color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'How to Check your XtraTime/XtraByte Eligibility',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      //app security
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(bottom: 5),
                        color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'App Security',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      //sim lock
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(
                          bottom: 5,
                        ),
                        color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'How to Activate SIM Lock to prevent SIM Fraud',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : _isContent2
                  ?
                  //Data
                  Expanded(
                      child: ListView(
                        children: [
                          //can i share
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(bottom: 5),
                            color: Colors.grey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Can i share my MTN Data Bundle?',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          //rollover
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(bottom: 5),
                            color: Colors.grey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Will I be able to rollover my unused data bonus?',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          //what is
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(bottom: 5),
                            color: Colors.grey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'What is MTN Data bundle?',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          //can i purchase
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(bottom: 5),
                            color: Colors.grey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Can I purchase multiple MTN data bundles?',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          //check
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(
                              bottom: 5,
                            ),
                            color: Colors.grey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'How do i check my MTN data bundle balance?',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          //subscribe
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(
                              bottom: 5,
                            ),
                            color: Colors.grey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'How do i subscribe to MTN data bundles?',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          //who can
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(
                              bottom: 5,
                            ),
                            color: Colors.grey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Who can subscribe to MTN data bundles?',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : _isContent3
                      ? Expanded(
                          child: ListView(
                            children: [
                              //amount
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(bottom: 5),
                                color: Colors.grey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'What amount of data can I transfer at a time?',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              //how many in a day
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(bottom: 5),
                                color: Colors.grey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'How many times can I transfer data in a day?',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              //how many buy
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(bottom: 5),
                                color: Colors.grey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'How many times can i buy data for my loved ones?',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              //types to gift
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(bottom: 5),
                                color: Colors.grey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'What types of the data bundle can i gift a friend?',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              //rollover unused gift
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                  bottom: 5,
                                ),
                                color: Colors.grey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Will I be able to rollover my unused gifted data bundle ?',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              //gifted balance
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                  bottom: 5,
                                ),
                                color: Colors.grey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'How do i check the balance of my gifted data bundle?',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              //xtrabyte transfer
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                  bottom: 5,
                                ),
                                color: Colors.grey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Can i transfer data from my XtraByte balance to friend?',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container()
        ],
      ),
    );
  }
}
