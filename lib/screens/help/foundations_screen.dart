import 'package:flutter/material.dart';

class FoundationsScreen extends StatelessWidget {
  const FoundationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Subscriptions details',
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 80, left: 10, right: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Container(
                          decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('5GB Xtraspecial',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 219, 217, 217),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      //internal container
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [Text('Amount'), Text('N1500')],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 40, right: 10),
                              color: Colors.grey,
                              height: 20,
                              width: 2,
                            ),
                            Column(
                              children: [
                                Text('Expires on'),
                                Text('11th October 2024')
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 40),
                              color: Colors.grey,
                              height: 20,
                              width: 2,
                            ),
                            Column(
                              children: [Text('Frequency'), Text('30 days')],
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Get 5GB Xtraspecial Plan for N1,500. Valid for\n30 days',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                //auto renewal
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Auto renewal status'),
                      Switch(
                        value: false,
                        onChanged: (value) {},
                      )
                    ],
                  ),
                ),
                //buy again
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Buy Again',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //need help
          Container(
            padding: EdgeInsets.all(10),
            color: const Color.fromARGB(255, 51, 51, 51),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.live_help),
                Text(
                  'Need help with this subscription',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: const Color.fromARGB(255, 51, 51, 51),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.chat),
                Text(
                  'Provide feedback',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
