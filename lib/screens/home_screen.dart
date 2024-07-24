import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 500,
          padding: EdgeInsets.all(20),
          height: 320,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [Colors.orange, Colors.yellow],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
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
                    Text('09011223344'),
                    Container(
                      color: Colors.black,
                      width: 3,
                      height: 15,
                    ),
                    Text('Hawau'),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'MTN XtraVa...',
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )
              ],
            ),

            ///Divider
            Divider(
              color: Colors.grey,
            ),

            ///row containing airtime and data balance
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.phone_in_talk_outlined),
                        Text('Airtime Balance', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Text('₦0.00', style: TextStyle(fontSize: 20)),
                    Text('Bonus Airtime : ₦0.00'),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Icon(Icons.currency_exchange_outlined,
                              color: Colors.white),
                          Text('Buy Airtime',
                              style: TextStyle(color: Colors.white)),
                          Icon(Icons.arrow_forward_ios, color: Colors.white),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  color: Colors.grey,
                  width: 3,
                  height: 200,
                ),
                Column(children: [
                  Row(
                    children: [
                      Icon(Icons.compare_arrows),
                      Text('Data Balance', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Text('0MB', style: TextStyle(fontSize: 20)),
                  Container(
                    color: Colors.black,
                    child: Row(
                      children: [
                        Icon(Icons.compare_arrows, color: Colors.white),
                        Text('Buy Data', style: TextStyle(color: Colors.white)),
                        Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ],
                    ),
                  )
                ]),
              ],
            ),

            ///Divider
            Divider(
              color: Colors.grey,
            ),

            ///Details and Refresh row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('View Details'),
                Row(
                  children: [Icon(Icons.refresh), Text('Refresh')],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
