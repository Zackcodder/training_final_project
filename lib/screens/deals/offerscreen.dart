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
      appBar: AppBar(centerTitle: true, title: const Text('Offers')),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          color: const Color.fromARGB(255, 29, 28, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///starting of Hawau code
              ///Circle row with name
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Text('A'),
              ),

              ///Title row
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Exclusive App deals (2)',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),

                    ///View all and icon
                    Row(
                      children: [
                        Text('View all',
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 18)),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.yellow,
                        )
                      ],
                    )
                  ],
                ),
              ),

              ///Boxes row
              SizedBox(
                height: 270,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ///First box
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Scratch to unveil \nexciting offers',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Countdown',
                                style: TextStyle(fontSize: 14, color: Colors.white)),
                          ),

                          ///countdown
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ///day clock
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        ///1st number
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          padding: const EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                              top: 10,
                                              bottom: 10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                          child: const Text(
                                            '0',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ),

                                        ///2nd number
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          padding: const EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                              top: 10,
                                              bottom: 10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                          child: const Text(
                                            '5',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'Days',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),

                                const Text(':',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black)),

                                ///hours clock
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        ///3rd number
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          padding: const EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                              top: 10,
                                              bottom: 10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                          child: const Text(
                                            '0',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ),
                                        //4th number
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          padding: const EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                              top: 10,
                                              bottom: 10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                          child: const Text(
                                            '8',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text('Hours',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Column(
                            children: [
                              Text(
                                'Next offer available',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              Text('30th July 2024',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      ),
                    ),

                    //second box
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          const Text(
                            'Scratch to unveil \nexciting offers',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Countdown',
                                style: TextStyle(fontSize: 14, color: Colors.white)),
                          ),

                          ///countdown
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ///day clock
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        ///1st number
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          padding: const EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                              top: 10,
                                              bottom: 10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                          child: const Text(
                                            '0',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ),

                                        ///2nd number
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          padding: const EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                              top: 10,
                                              bottom: 10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                          child: const Text(
                                            '5',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'Days',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),

                                const Text(':',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black)),

                                ///hours clock
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        ///3rd number
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          padding: const EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                              top: 10,
                                              bottom: 10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                          child: const Text(
                                            '0',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ),
                                        //4th number
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          padding: const EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                              top: 10,
                                              bottom: 10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                          child: const Text(
                                            '8',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text('Hours',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Column(
                            children: [
                              Text(
                                'Next offer available',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              Text('30th July 2024',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              ///ending of hawau code

              ///starting of blessing code
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Mega deal zone (6)',
                        style: TextStyle(color: Colors.yellow)),
                    Row(children: [
                      Text('View all', style: TextStyle(color: Colors.yellow)),
                      Icon(Icons.arrow_forward_ios, color:Colors.yellow),
                    ]),
                  ]),
              SizedBox(
                height: 250,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ///1st container
                      Container(
                        margin: const EdgeInsets.all(15),
                        padding: const EdgeInsets.all(10),
                        width: 340,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(
                              18.0), // Added border radius
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Data4ME',
                                  style:TextStyle(color: Colors.white, fontSize: 14),
                                ),
                                const SizedBox(height: 7),
                                const Text(
                                  'Get 24GB + 25',
                                  style:TextStyle(color: Colors.white, fontSize: 18),
                                ),
                                const Text(
                                  'voice mins for',
                                  style:TextStyle(color: Colors.white, fontSize: 18),
                                ),
                                const Text(
                                  'N4,000',
                                  style:TextStyle(color: Colors.white, fontSize: 18),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Added border radius for inner container
                                  ),
                                  child: const Text(
                                    'Crack the egg',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/images/egg.png',
                              width: 130, // Set image width
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(15),
                        padding: const EdgeInsets.all(10),
                        width: 340,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(
                              18.0), // Added border radius
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Data4ME',
                                  style:TextStyle(color: Colors.white, fontSize: 14),
                                ),
                                const SizedBox(height: 7),
                                const Text(
                                  'Get 24GB + 25',
                                  style:TextStyle(color: Colors.white, fontSize: 18),
                                ),
                                const Text(
                                  'voice mins for',
                                  style:TextStyle(color: Colors.white, fontSize: 18),
                                ),
                                const Text(
                                  'N4,000',
                                  style:TextStyle(color: Colors.white, fontSize: 18),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Added border radius for inner container
                                  ),
                                  child: const Text(
                                    'Crack the egg',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              'assets/images/egg.png',
                              width: 150, // Set image width
                              height: 100, 
                            ),
                          ],
                        ),
                      ),
                      // Add more containers as needed
                    ],
                  ),
                ),
              ),

              ///ending of blessing code
              ///
              ///starting of success code
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hot deals (3)',
                          style: TextStyle(color: Colors.yellow, fontSize: 14, )),
                      Row(
                        children: [
                          Text(
                            'View all',
                            style: TextStyle(color: Colors.amber, fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.amber,
                            size: 25,
                          )
                        ],
                      )
                    ],
                  ),
                  Text(
                    'checkout exciting deals made for you',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //1 container
                    Container(
                      padding: const EdgeInsets.all(25),
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
                      padding: const EdgeInsets.all(25),
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('tap here to',
                              style: TextStyle(color: Colors.white, fontSize: 25)),
                          Text(
                            'scratch',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    // 3 container
                    Container(
                      padding: const EdgeInsets.all(25),
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink[100],
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'tap here to',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Text(
                            'scratch',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )

              ///ending of success code
            ],
          ),
        ),
      ),
    );
  }
}
