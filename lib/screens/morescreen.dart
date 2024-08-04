import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Rewards'),
          Row(
            children: [
              Icon(Icons.card_giftcard),
              Text('Offers'),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
          Row(
            children: [
              Icon(Icons.person_outline),
              Text('My referrals'),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
          Row(
            children: [
              Icon(Icons.volume_up_outlined),
              Text('Refer & earn'),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
          Divider(),
          Text('Device data usage'),
          Text('5G coverage locator'),
          Text('Speed test'),
          Text('App tour'),
          Text('Privacy Policy'),
          Text('Terms and conditions'),
          Text('Request to delete account'),
          Text('Logout'),

          //Footer
          Container(
            child: Column(
              children: [
                Text('Version 1.15.1'),
                Text(
                    '2022 MTN Nigeria Communications PLC \n All rights reserved'),

                    Row(
                      children: [
                        Text('Loving MTN App?'),
                        Text('Share today and win exciting rewards')
                      ],
                    )
              ],
            ),
          )
        ],
      ),
    );
  }
}
