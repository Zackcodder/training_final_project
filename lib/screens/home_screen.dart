import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 400,
          padding: EdgeInsets.all(20),
          height: 200,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 32, 26, 26),
              borderRadius: BorderRadius.circular(10)),
          child: const Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('09011223344', style: TextStyle(color: Colors.white)),
                    VerticalDivider(
                      width: 2,
                      thickness: 2,
                      color: Colors.white,
                    ),
                    Text('Hawau', style: TextStyle(color: Colors.white)),
                  ],
                ),
                Row(
                  children: [
                    Text('MTN XtraVa...',
                        style: TextStyle(color: Colors.white)),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.phone_in_talk_outlined, color: Colors.white),
                        Text('Airtime Balance',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Text('₦0.00', style: TextStyle(color: Colors.white)),
                    Row(
                      children: [
                        Icon(Icons.currency_exchange_outlined,
                            color: Colors.white),
                        Text('Buy Airtime',
                            style: TextStyle(color: Colors.white)),
                        Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ],
                    )
                  ],
                ),
                VerticalDivider(
                  width: 2,
                  thickness: 2,
                  color: Colors.white,
                ),
                Column(children: [
                  Row(
                    children: [
                      Icon(Icons.compare_arrows, color: Colors.white),
                      Text('Data Balance',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Text('0MB', style: TextStyle(color: Colors.white)),
                  Row(
                    children: [
                      Icon(Icons.compare_arrows, color: Colors.white),
                      Text('Buy Data', style: TextStyle(color: Colors.white)),
                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ],
                  )
                ]),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('View Details', style: TextStyle(color: Colors.white)),
                Row(
                  children: [
                    Icon(Icons.refresh, color: Colors.white),
                    Text('Refresh', style: TextStyle(color: Colors.white))
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
