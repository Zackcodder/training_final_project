import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Text(
              'Rewards',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.card_giftcard, color: Colors.white),
                    Text('Offers',
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
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
                    Text('My referrals',
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                  ],
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.grey)
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
                    Text('Refer & earn',
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                )
              ],
            ),
            const Divider(),

            const Row(
              children: [
                Text(
                  'Device data usage',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
            const Row(
              children: [
                Text('5G coverage locator',
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ],
            ),
            const Row(
              children: [
                Text('Speed test',
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ],
            ),
            const Row(
              children: [
                Text('App tour',
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ],
            ),
            const Row(
              children: [
                Text('Privacy Policy',
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ],
            ),
            const Row(
              children: [
                Text('Terms and conditions',
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ],
            ),
            const Row(
              children: [
                Text('Request to delete account',
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ],
            ),
            const Row(
              children: [
                Text('Logout',
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ],
            ),

            //Footer
            Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/mtnlogoo.png',
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
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Color.fromARGB(255, 247, 234, 117),
                          Color.fromARGB(255, 163, 241, 166)
                        ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child:  Row(
                      children: [
                        //for mtn logo
                       Image.asset('assets/images/mtnlogoo.png',width: 60,height: 60,),
                        Column(
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
    );
  }
}
