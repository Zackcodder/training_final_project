import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: const Text(
          'MTN Share',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Container(
        padding:
            const EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 30),
        margin: const EdgeInsets.only(top: 30),
        height: double.maxFinite,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ListView(
          children: [
            const Text(
              'Sharing is caring',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const Text(
              'Show you friends you care',
              style: TextStyle(color: Colors.white),
            ),

            ///date share container
            Container(
              margin: const EdgeInsets.only(top: 30),
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.pink,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    FontAwesomeIcons.phoneFlip,
                    color: Colors.black,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Date Share',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '* You can only share a max of 5GB \n date per transaction per day',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),

            ///airtime sharing container
            Container(
              margin: const EdgeInsets.only(top: 30),
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.pink,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    FontAwesomeIcons.phoneFlip,
                    color: Colors.black,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Airtime Share',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '* Max 50,000 per day',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '* Min.50, Max.5,000 per transaction',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),

            ///SME data share container
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 30),
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.pink,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    FontAwesomeIcons.city,
                    color: Colors.black,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'SME DataShare',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        textAlign: TextAlign.justify,
                        '* MTN Sme DataShare is a prepaid \nservice that allows business owner \nto buy data bundle and share with \nthier staff. This service is specifically \ndesigned for drowing businesses \n offering them the ability to centrally \nmanage internet usegae per staff accross \nthier businesses',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),

            ///divider line
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(
              height: 30,
            ),

            ///aggreement text
            const Text(
              'By sharing, you agree to the terms and conditions \n of share data and airtime',
              style: TextStyle(color: Colors.white),
            ),

            ///create pin container
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(10),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.pink.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10)),
              child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.rocketchat, color: Colors.white,),
                      SizedBox(width: 20,),
                      Text('Create Pin', style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,color: Colors.white,
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