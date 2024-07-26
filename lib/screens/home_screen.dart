import 'package:flutter/material.dart';
import 'package:training_final_project/screens/offers_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 500,
          padding: const EdgeInsets.all(15),
          height: 320,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 253, 195, 4),
                  Color.fromARGB(255, 240, 224, 82)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )),
          child:

              ///Column for all
              Column(children: [
            /// conatin num, name and mtn name
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Text(
                        '0806 044 9642',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 18,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text('Ayomide', style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text('MTN XtraVa...', style: TextStyle(fontSize: 20)),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )
              ],
            ),

            ///Divider
            const Divider(
              color: Color.fromARGB(255, 194, 177, 177),
            ),

            ///row containing airtime and data balance
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.phone_in_talk_outlined),
                        Text('Airtime Balance', style: TextStyle(fontSize: 25)),
                      ],
                    ),
                    const Text('₦0.00',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    const Text('Bonus Airtime : ₦945.89',
                        style: TextStyle(fontSize: 20)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OffersScreen()));
                      },
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.currency_exchange_outlined,
                                color: Colors.white),
                            Text('Buy Airtime',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  color: const Color.fromARGB(255, 194, 177, 177),
                  width: 2,
                  height: 200,
                ),
                Column(children: [
                  const Row(
                    children: [
                      Icon(Icons.compare_arrows),
                      Text('Data Balance', style: TextStyle(fontSize: 25)),
                    ],
                  ),
                  const Text('0MB',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.compare_arrows, color: Colors.white),
                          Text('Buy Data',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          Icon(Icons.arrow_forward_ios, color: Colors.white),
                        ],
                      ),
                    ),
                  )
                ]),
              ],
            ),

            ///Divider
            const Divider(
              color: Color.fromARGB(255, 194, 177, 177),
            ),

            ///Details and Refresh row
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'View Details',
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    Icon(Icons.refresh),
                    Text('Refresh', style: TextStyle(fontSize: 20))
                  ],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
