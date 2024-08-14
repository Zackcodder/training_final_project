import 'package:flutter/material.dart';

class Referscreen extends StatelessWidget {
  const Referscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/refer.jpg'),
                  fit: BoxFit.cover)),
        ),
        title: Text('Refer & earn'),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Invite your friends and earn',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 51, 50, 50),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.phone_android,
                      color: Colors.white,
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                      'Get FREE 250MB instantly, when you refer a friend\nto download myMTN NG App. While your friend gets\n50GB data bonus.',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 51, 50, 50),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.compare_arrows_outlined,
                      color: Colors.white,
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                      'Get FREE 10% data bonus instantly, when you get\nyour friend to buy data. While they get 50% referral\nbonus on data purchased.',
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
