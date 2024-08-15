import 'package:flutter/material.dart';

class Databundles extends StatefulWidget {
  const Databundles({super.key});

  @override
  State<Databundles> createState() => _DatabundlesState();
}

class _DatabundlesState extends State<Databundles> {
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
          title: const Text(
            'Data bundles',
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
                    child: const Text('Daily',
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
                    child: const Text('Weekly',
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
                    child: const Text('Monthly',
                        style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),

          _isContent1
              ? //daily
              Expanded(
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
                              borderRadius: BorderRadius.circular(10)),
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
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 32, 31, 31)),
                                child: Column(
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
                                              '1 day',
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
                                              '₦102',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                  color: Colors.pink)),
                                          child: Text(
                                            'Buy now',
                                            style:
                                                TextStyle(color: Colors.pink),
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
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 32, 31, 31)),
                                child: Column(
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
                                              '1 day',
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
                                              '₦102',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                  color: Colors.pink)),
                                          child: Text(
                                            'Buy now',
                                            style:
                                                TextStyle(color: Colors.pink),
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
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 32, 31, 31)),
                                child: Column(
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
                                              '1 day',
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
                                              '₦102',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                  color: Colors.pink)),
                                          child: Text(
                                            'Buy now',
                                            style:
                                                TextStyle(color: Colors.pink),
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
              : _isContent2
                  ?
                  //Weekly
                  Expanded(
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
                                  borderRadius: BorderRadius.circular(10)),
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
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            255, 32, 31, 31)),
                                    child: Column(
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
                                                  '7 days',
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
                                                  '₦102',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                      color: Colors.pink)),
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
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            255, 32, 31, 31)),
                                    child: Column(
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
                                                  '7 days',
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
                                                  '₦102',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                      color: Colors.pink)),
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
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            255, 32, 31, 31)),
                                    child: Column(
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
                                                  '7 days',
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
                                                  '₦102',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                      color: Colors.pink)),
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
                  : _isContent3
                      ?
                      //Monthly
                      Expanded(
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
                                      borderRadius: BorderRadius.circular(10)),
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
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'MTN XtraSpecial',
                                                      style: TextStyle(
                                                          color: Colors.white),
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
                                                              color:
                                                                  Colors.grey),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      '30 days',
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
                                                              color:
                                                                  Colors.grey),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      '₦102',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      border: Border.all(
                                                          color: Colors.pink)),
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
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'MTN XtraSpecial',
                                                      style: TextStyle(
                                                          color: Colors.white),
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
                                                              color:
                                                                  Colors.grey),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      '30 days',
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
                                                              color:
                                                                  Colors.grey),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      '₦102',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      border: Border.all(
                                                          color: Colors.pink)),
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
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'MTN XtraSpecial',
                                                      style: TextStyle(
                                                          color: Colors.white),
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
                                                              color:
                                                                  Colors.grey),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      '30 days',
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
                                                              color:
                                                                  Colors.grey),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      '₦102',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      border: Border.all(
                                                          color: Colors.pink)),
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
