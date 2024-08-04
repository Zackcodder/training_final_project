// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProfilePage> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        body: Container(
          child: Column(
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

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30)),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
//my account
                      Container(
                        margin: const EdgeInsets.only(
                            top: 30, bottom: 15, left: 10),
                        alignment: FractionalOffset.topLeft,
                        child: const Column(
                          children: [
                            Text(
                              'My Account',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
//usage history
                      Container(
                        margin: EdgeInsets.all(8),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.av_timer_rounded,
                              color: Colors.white,
                            ),
                            Text(
                              'Usage history',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 253,
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
//manage subscription
                      Container(
                        margin: EdgeInsets.all(8),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.play_circle_outline,
                              color: Colors.white,
                            ),
                            Text(
                              'Manage subscriptions',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
//transaction history
                      Container(
                        margin: EdgeInsets.all(8),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.av_timer_rounded,
                              color: Colors.white,
                            ),
                            Text(
                              'Transaction history',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 220,
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
//manage numbers
                      Container(
                        margin: EdgeInsets.all(8),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.save_as_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'Manage numbers',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 230,
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
// theme & appearance
                      Container(
                        margin: EdgeInsets.all(8),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              FontAwesomeIcons.fill,
                              color: Colors.white,
                            ),
                            Text(
                              'Theme & appearance',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 209,
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
//Biometrics
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.fingerprint_rounded,
                              color: Colors.white,
                            ),
                            Text(
                              'Biometrics',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 230,
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
                        margin: EdgeInsets.all(8),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.sim_card_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'SIM Upgrade',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 255,
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.grey,
                            )
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
                        margin: EdgeInsets.only(top: 5, left: 10, bottom: 5),
                        alignment: FractionalOffset.topLeft,
                        child: const Column(
                          children: [
                            Text(
                              'Share & Borrow',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
// share airtime/data
                      Container(
                        margin: EdgeInsets.all(5),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.exit_to_app_rounded,
                              
                              color: Colors.white,
                            ),
                            Text(
                              'Share Airtime/Data',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 209,
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
// borrow data & airtime
                      Container(
                        margin: EdgeInsets.all(5),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                            Icons.subdirectory_arrow_left_rounded,
                              color: Colors.white,
                            ),
                            Text(
                              'Borrow Airtime/Data',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 209,
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
