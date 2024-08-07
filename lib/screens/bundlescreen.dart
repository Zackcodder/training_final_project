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
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Buy bundles'),
        ),
        body: Column(children: [
          /// first row
          Container(
            color: Colors.pink,
            padding: const EdgeInsets.all(8),
            height: 60,
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
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),

                ///but for others
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Buy for others',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      Icon(Icons.arrow_forward_ios, color: Colors.yellow),
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
                      Container(
                        padding: const EdgeInsets.only(
                            left: 40, right: 40, top: 20, bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          'Go to categories',
                          style: TextStyle(color: Colors.black),
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
                      child: Column(
                        children: [
                          //First row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //Data bundles
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.all(25),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 32, 31, 31),
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
                              //Data and voice bundles
                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
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
                              //Social bundles
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 32, 31, 31),
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
                            ],
                          ),
                          //Second row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //int'l calling
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 32, 31, 31),
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
                              //SME bundles
                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
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
                              //broadband
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 32, 31, 31),
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
                            ],
                          ),
                          //Third row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //Visitors plan
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 32, 31, 31),
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
                                    )
                                  ],
                                ),
                              ),
                              //Thryve bundles
                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
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
                              //broadband (fibrenet) bundles
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 32, 31, 31),
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
                          ),
                          //Fourth row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //Broadband(MiFi) bundles
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 32, 31, 31),
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
                              //Digital bundles
                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
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
                            ],
                          ),
                        ],
                      ),
                    )
                  : _isContent3
                      ? Container(
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              //info
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.info,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                        'Your last 2 months data history is shown \nhere.')
                                  ],
                                ),
                              ),
                              // plan card
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 32, 31, 31)),
                                child: const Column(
                                  children: [
                                    //First row
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'MTN XtraSpecial',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              'Flatrate of 15k/sec to Local networks \n in Nigeria & discounted call to seven \n international countries.',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.info,
                                          color: Colors.yellow,
                                        )
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                    //Second row
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                                      color: Colors.grey),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '9999 days',
                                              style: TextStyle(
                                                  color: Colors.white),
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
                                                      color: Colors.grey),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '102',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        Text(
                                          'Buy now',
                                          style:
                                              TextStyle(color: Colors.yellow),
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
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 32, 31, 31)),
                                child: const Column(
                                  children: [
                                    //First row
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'MTN XtraSpecial',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              'Flatrate of 15k/sec to Local networks \n in Nigeria & discounted call to seven \n international countries.',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.info,
                                          color: Colors.yellow,
                                        )
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                    //Second row
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                                      color: Colors.grey),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '9999 days',
                                              style: TextStyle(
                                                  color: Colors.white),
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
                                                      color: Colors.grey),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '102',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        Text(
                                          'Buy now',
                                          style:
                                              TextStyle(color: Colors.yellow),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
        ]));
  }
}
