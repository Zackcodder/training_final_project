import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:training_final_project/screens/manageNumbersPage.dart";
import "package:training_final_project/screens/manageSubpage.dart";
import "package:training_final_project/screens/usageHistoryPage.dart";

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        body: Container(
          child: ListView(
            children: [
              //info profile
              Container(
                margin: const EdgeInsets.all(40.0),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.person_outline_rounded,
                          size: 30,
                        ),
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hawau',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '0906 557 5428',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'hawaubaraje@gmail.com',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(30)),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //my account
                    Container(
                      margin: const EdgeInsets.only(
                        top: 30,
                        bottom: 15,
                      ),
                      child: const Text(
                        'My Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
//usage history
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.av_timer_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Usage history',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.chevron_right),
                            color: Colors.grey,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Usagehistorypage()),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    //manage subscription
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.play_circle_outline,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Manage subscriptions',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.chevron_right),
                            color: Colors.grey,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Managesubpage()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    //transaction history
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.av_timer_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Transaction history',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.chevron_right),
                            color: Colors.grey,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    //manage numbers
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.save_as_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Manage numbers',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.chevron_right),
                            color: Colors.grey,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Managenumberspage()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    // theme & appearance
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.fill,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Theme & appearance',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.chevron_right),
                            color: Colors.grey,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    //Biometrics
                    Container(
                      margin: const EdgeInsets.only(bottom: 8, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.fingerprint_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Biometrics',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Transform.scale(
                            scale: 0.75,
                            child: Switch(
                                value: _switchValue,
                                onChanged: (value) {
                                  setState(() {
                                    _switchValue = value;
                                  });
                                }),
                          )
                        ],
                      ),
                    ),
                    // sim upgrade
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.sim_card_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'SIM Upgrade',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.chevron_right),
                            color: Colors.grey,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    // divider
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    // share & borrow
                    Container(
                      margin: const EdgeInsets.only(top: 5, bottom: 5),
                      child: const Column(
                        children: [
                          Text(
                            'Share & Borrow',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    // share airtime/data
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.exit_to_app_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Share Airtime/Data',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.chevron_right),
                            color: Colors.grey,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    // borrow data & airtime
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.subdirectory_arrow_left_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Borrow Airtime/Data',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.chevron_right),
                            color: Colors.grey,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),

                    //
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    const Text(
                      'Rewards',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.card_giftcard, color: Colors.white),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Offers',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ],
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person_outline,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('My referrals',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ],
                        ),
                        Icon(Icons.chevron_right_rounded, color: Colors.grey)
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.volume_up_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Refer & earn',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ],
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    const Divider(),

                    const Text(
                      'Device data usage',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('5G coverage locator',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Speed test',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('App tour',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Privacy Policy',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Terms and conditions',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Request to delete account',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Logout',
                        style: TextStyle(color: Colors.white, fontSize: 15)),

                    //Footer
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/mtnlogo.png',
                            color: Colors.white,
                            width: 100,
                            height: 100,
                          ),
                          const Text('Version 1.15.1',
                              style: TextStyle(color: Colors.white)),
                          const Text(
                            '©2022 MTN Nigeria Communications PLC \n All rights reserved',
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                  Color.fromARGB(255, 247, 234, 117),
                                  Color.fromARGB(255, 66, 173, 70)
                                ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            child: Row(
                              children: [
                                //for mtn logo
                                Image.asset(
                                  'assets/mtnlogo.png',
                                  width: 60,
                                  height: 60,
                                ),
                                const Column(
                                  children: [
                                    Text('Loving MTN App?',
                                        style: TextStyle(color: Colors.blue)),
                                    Text('Share today and win exciting rewards',
                                        style: TextStyle(color: Colors.grey)),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
