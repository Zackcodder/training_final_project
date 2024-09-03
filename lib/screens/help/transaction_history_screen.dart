import 'package:flutter/material.dart';

class TransactionsHistoriesScreen extends StatefulWidget {
  const TransactionsHistoriesScreen({super.key});

  @override
  State<TransactionsHistoriesScreen> createState() => _TransactionsHistoriesScreenState();
}

class _TransactionsHistoriesScreenState extends State<TransactionsHistoriesScreen> {
  
  bool _isContent1 = true;
  bool _isContent2 = false;

  bool _isButton1Clicked = true;
  bool _isButton2Clicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Transaction History'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 46, 45, 45),
        foregroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: Color.fromARGB(255, 46, 45, 45),
          ),
          child: const Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    child: Text('H'),
                  ),
                  Text(
                    'Hawau',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),

        ///Options
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isContent1 = true;
                    _isContent2 = false;

                    _isButton1Clicked = !_isButton1Clicked;
                    _isButton2Clicked = false;
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
                  child: const Text('Recharge',
                      style: TextStyle(color: Colors.white)),
                ),
              ),

              //Categories
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isContent1 = false;
                    _isContent2 = true;

                    _isButton1Clicked = false;
                    _isButton2Clicked = !_isButton2Clicked;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: _isButton2Clicked ? Colors.pink : Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.all(10),
                  child: const Text('Subscriptions',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
        _isContent1
            ? Expanded(
              child: ListView(
                  children: [
                    //boxes
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.pink,
                            ),
                            child: const Text('Aug 2024'),
                          ),
                          const Row(
                            children: [
                              //date
                              Column(
                                children: [
                                  Text('Sun'),
                                  Text(
                                    '11',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              CircleAvatar(
                                child: Text('U'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Recharge for 0901 234 5678'),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'N2,000.0',
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink.shade200,
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Paid via'),
                                    Text('VTU'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.refresh),
                                    Text('Recharge again'),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
              
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              //date
                              Column(
                                children: [
                                  Text('Sun'),
                                  Text(
                                    '04',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              CircleAvatar(
                                child: Text('U'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Recharge for 0901 234 5678'),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'N2,000.0',
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink.shade200,
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Paid via'),
                                    Text('VTU'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.refresh),
                                    Text('Recharge again'),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.pink,
                            ),
                            child: const Text('Jul 2024'),
                          ),
                          const Row(
                            children: [
                              //date
                              Column(
                                children: [
                                  Text('Wed'),
                                  Text(
                                    '31',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              CircleAvatar(
                                child: Text('U'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Recharge for 0901 234 5678'),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'N2,000.0',
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink.shade200,
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Paid via'),
                                    Text('VTU'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.refresh),
                                    Text('Recharge again'),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
              
                    ///4
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              //date
                              Column(
                                children: [
                                  Text('Mon'),
                                  Text(
                                    '22',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              CircleAvatar(
                                child: Text('U'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Recharge for 0901 234 5678'),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'N2,000.0',
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink.shade200,
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Paid via'),
                                    Text('VTU'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.refresh),
                                    Text('Recharge again'),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
            )
            : _isContent2
                ?
                //Subscriptions
                Expanded(
                  child: ListView(
                      children: [
                        //boxes
                         Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pink,
                                ),
                                child: const Text('Aug 2024'),
                              ),
                              const Row(
                                children: [
                                  //date
                                  Column(
                                    children: [
                                      Text('Sat'),
                                      Text(
                                        '24',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  CircleAvatar(
                                    child: Text('U'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Recharge for 0901 234 5678'),
                                      Text('5GB Xtraspecial'),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'N1,500.0',
                                    style: TextStyle(color: Colors.red),
                                  )
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                margin: const EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.pink.shade200,
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Paid via'),
                                        Text('Data Subscription'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.refresh),
                                        Text('Buy again'),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pink,
                                ),
                                child: const Text('Aug 2024'),
                              ),
                              const Row(
                                children: [
                                  //date
                                  Column(
                                    children: [
                                      Text('Thu'),
                                      Text(
                                        '15',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  CircleAvatar(
                                    child: Text('U'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Recharge for 0901 234 5678'),
                                      Text('5GB Xtraspecial'),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'N1,500.0',
                                    style: TextStyle(color: Colors.red),
                                  )
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                margin: const EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.pink.shade200,
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Paid via'),
                                        Text('Data Subscription'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.refresh),
                                        Text('Buy again'),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        //2nd
                         Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pink,
                                ),
                                child: const Text('Jul 2024'),
                              ),
                              const Row(
                                children: [
                                  //date
                                  Column(
                                    children: [
                                      Text('Wed'),
                                      Text(
                                        '24',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  CircleAvatar(
                                    child: Text('U'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Recharge for 0901 234 5678'),
                                      Text('5GB Xtraspecial'),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'N1,500.0',
                                    style: TextStyle(color: Colors.red),
                                  )
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                margin: const EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.pink.shade200,
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Paid via'),
                                        Text('Data Subscription'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.refresh),
                                        Text('Buy again'),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                )
                : Container()
      ]),
    );
  }
}