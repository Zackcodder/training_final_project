import 'package:flutter/material.dart';

class Tipsscreen extends StatelessWidget {
  const Tipsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tips',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Text(
              'How-to videos',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            //data tips
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mobile Data tips',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
            //sim
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SIM Registration Tips',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
            //snapchat manage
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How to Manage Your Data The Simple &\nConvenient way on Snapchat',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
            //instagram
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How to Manage Your Data The Simple &\nConvenient way on Instagram',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
            //forbes8
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Forbes8',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
            //whatsapp
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How to Manage Your Data The Simple &\nConvenient way on Whatsapp',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
            //roaming
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Roaming',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
            //raoming rates
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Roaming Rates',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
            //scholars
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Welcome the next set of MTN scholars!',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
            //link accounts
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How To Link Multiple MTN Accounts',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
            //netflix
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How to Manage your Data on Netflix\nWeb',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
            //xtrtime eligibility
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How To Check your XtraTime/XtraByte\nEligibility',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
            //app security
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'App Security',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
            //activate sim
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How To Activate SIM Lock to prevent\nSIM Fraud',
                    style: TextStyle(color: Colors.pink),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
