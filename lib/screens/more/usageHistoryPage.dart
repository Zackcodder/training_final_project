import 'package:flutter/material.dart';

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
      backgroundColor: Colors.pink[900],
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
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // user name and name tag
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///name tag
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(child: Text('H')),
                ),

                ///user name
                const Text(
                  'Hawau',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            // call sms data toggle button
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 25),
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
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 25, right: 25),
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
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 25, right: 25),
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
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 25, right: 25),
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
            // calls display information
            _displaycontent1
                ? Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Today's usage",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.white),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: const Row(
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
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            padding: const EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                color: Colors.grey[700],
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(left: 8),
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
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
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

                                const Text(
                                  '0 Calls',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                const SizedBox(
                                  width: 130,
                                ),
                                const Icon(
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
                          const Row(
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
                //SMS display information
                : _displaycontent2
                    ? Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Today's usage",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: const Row(
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
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                padding: const EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                    color: Colors.grey[700],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(left: 8),
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
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Text(
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

                                    const Text(
                                      '0 SMS',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    const SizedBox(
                                      width: 130,
                                    ),
                                    const Icon(
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
                              const Row(
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
                    // Data display information
                    : _displaycontent3
                        ? Expanded(
                            child: ListView(
                              children: [
                                Column(
                                  children: [
                                    ///today usage text and today button
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ///today usage text
                                        const Text(
                                          "Today's usage",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17),
                                        ),

                                        ///today calender button
                                        Container(
                                          padding: const EdgeInsets.all(7),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          child: const Row(
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
                                    //data balance usage
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 20, bottom: 15),
                                      padding: const EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[700],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsets.only(left: 8),
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
                                                    Icons.data_saver_on_rounded,
                                                    size: 16,
                                                  )),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                const Text(
                                                  '74.39 MB',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 17),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 130,
                                          ),
                                          const Icon(
                                            size: 30,
                                            Icons.share_outlined,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                    // social media display and device data usage
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        //socail media icon
                                        SizedBox(
                                          width: 100,
                                          height: 37,
                                          child: Stack(
                                            children: [
                                              ///chrome image
                                              Positioned(
                                                width: 40,
                                                height: 40,
                                                child: Image.asset(
                                                  'assets/facebook.jpg',
                                                ),
                                              ),
                                              Positioned(
                                                top: 3,
                                                left: 22,
                                                width: 33,
                                                height: 33,
                                                child: Image.asset(
                                                  'assets/instagram.jpg',
                                                ),
                                              ),
                                              Positioned(
                                                top: 7,
                                                left: 40,
                                                width: 30,
                                                child: Image.asset(
                                                  'assets/whatsapp.jpg',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        ///device data usgae text button
                                        const Text(
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
                                    //divider
                                    const Divider(
                                      thickness: 1,
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 0),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Detailed usage',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),

                                    ///usgae details
                                    const DataUsageWithTimers(),
                                  ],
                                ),
                              ],
                            ),
                          )
                        : Container()
          ],
        ),
      ),
    );
  }
}

class DataUsageWithTimers extends StatelessWidget {
  const DataUsageWithTimers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          ///now
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///timer icons
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 8, 78, 110),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(
                            Icons.schedule,
                            size: 20,
                            color: Colors.white,
                          )),
                      Container(
                        color: const Color.fromARGB(255, 8, 78, 110),
                        height: 25,
                        width: 1,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Now',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),

              ///data vlaue
              const Text(
                '0.0 Bytes',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),

          ///3pm
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///timer icons
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 8, 78, 110),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(
                            Icons.schedule,
                            size: 20,
                            color: Colors.white,
                          )),
                      Container(
                        color: const Color.fromARGB(255, 8, 78, 110),
                        height: 25,
                        width: 1,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '3PM',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),

              ///data vlaue
              const Text(
                '0.0 Bytes',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),

          ///2pm
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///timer icons
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 8, 78, 110),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(
                            Icons.schedule,
                            size: 20,
                            color: Colors.white,
                          )),
                      Container(
                        color: const Color.fromARGB(255, 8, 78, 110),
                        height: 25,
                        width: 1,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '2PM',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),

              ///data vlaue
              const Text(
                '0.0 Bytes',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),

          ///1pm
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///timer icons
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 8, 78, 110),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(
                            Icons.schedule,
                            size: 20,
                            color: Colors.white,
                          )),
                      Container(
                        color: const Color.fromARGB(255, 8, 78, 110),
                        height: 25,
                        width: 1,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '1PM',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),

              ///data vlaue
              const Text(
                '0.0 Bytes',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),

          ///12pm
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///timer icons
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 8, 78, 110),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(
                            Icons.schedule,
                            size: 20,
                            color: Colors.white,
                          )),
                      Container(
                        color: const Color.fromARGB(255, 8, 78, 110),
                        height: 25,
                        width: 1,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '12PM',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),

              ///data vlaue
              const Text(
                '0.0 Bytes',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
