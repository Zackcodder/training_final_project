import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Offerscreen extends StatefulWidget {
  const Offerscreen({super.key});

  @override
  State<Offerscreen> createState() => _OfferscreenState();
}

class _OfferscreenState extends State<Offerscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 90),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text('Hot deals (3)',
                        style: TextStyle(color: Colors.white, fontSize: 27)),
                    Text(
                      'checkout exciting deals made for you',
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(color: Colors.amber, fontSize: 25),
                      ),
                      Icon(
                        Icons.forward,
                        color: Colors.amber,
                        size: 25,
                      )
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  //1 container
                  Container(
                    height: 300,
                    width: 300,
                    padding: EdgeInsets.all(25),
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'tap here to',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Text('scratch',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ))
                      ],
                    ),
                  ),
// 2 container
                  Container(
                    height: 300,
                    width: 300,
                    padding: EdgeInsets.all(25),
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('tap here to',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                        Text(
                          'scratch',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
// 3 container
                  Container(
                    height: 300,
                    width: 300,
                    padding: EdgeInsets.all(25),
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink[100],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'tap here to',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Text(
                          'scratch',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
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
