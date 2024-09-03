import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///use this propertie when u want to 
      ///make the bodyof the app start
      ///directly under your appbar
      ///also make the color of you 
      ///appbar transparent
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Tips',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Container(
        color: Colors.grey,
        child: ListView(
          children: [
              ///textfield
              Container(
                height: 100,
                color: Colors.grey,
                child: Center(
                  child: Container(
                        margin: const EdgeInsets.only(right: 10, left: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 56.0,
                        child: TextField(
                          onChanged: ((value) {
                          }),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(top: 2),
                            hintText: 'Search Tips',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30.0,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(45.0),
                              ),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                ),
              ),
            ///body
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10), topRight: Radius.circular(10))),
              child: Column(
                children: [
                  const Text(
                    'How-to videos',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  //data tips
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
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
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
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
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
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
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
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
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
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
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
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
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
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
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
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
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
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
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
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
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
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
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
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
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
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
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Row(
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
          ],
        ),
      ),
    );
  }
}
