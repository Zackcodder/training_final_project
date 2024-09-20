import 'package:flutter/material.dart';

class ReferAndEarnScreen extends StatelessWidget {
  const ReferAndEarnScreen({super.key});

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
        elevation: 0.0,
        title: const Text('Refer & earn'),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          ///image under app bar
          Container(
            height:250,
                    decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/enterprise.png'),
                fit: BoxFit.cover)),
                  ),
          const Text(
            'Invite your friends and earn',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          ///container for app referral
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 51, 50, 50),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                ///icon container for app referral
                Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.phone_android,
                      color: Colors.white,
                    )),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'App Referral',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,
                        ),
                      ],
                    ),
                    Text(
                      'Get FREE 250MB instantly, when you refer a \nfriend to download myMTN NG App. While your \nfriend gets50GB data bonus.',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),

          ///conatiner for data referral
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 51, 50, 50),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.compare_arrows_outlined,
                      color: Colors.white,
                    )),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Data Referral',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,
                        ),
                      ],
                    ),
                    Text(
                      'Get FREE 10% data bonus instantly, when you \nget your friend to buy data. While they get 50% \nreferral bonus on data purchased.',
                      style: TextStyle(color: Colors.white),
                    )
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