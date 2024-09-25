import 'package:flutter/material.dart';

class Playscreen extends StatelessWidget {
  const Playscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Play'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ///Title row
          Container(
            padding: EdgeInsets.all(8),
            color: const Color.fromARGB(255, 43, 41, 41),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.play_circle,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.black,
                    ),
                    Text(
                      "MTNPLAY",
                      style: TextStyle(color: Colors.pink, fontSize: 20),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                  child: Row(
                    children: [Icon(Icons.person), Text('USER')],
                  ),
                )
              ],
            ),
          ),
          //offers
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Exclusive offers & subscriptions',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.pink,
                              width: 3,
                              style: BorderStyle.solid))),
                  child: Text(
                    'Offers',
                    style: TextStyle(color: Colors.pink, fontSize: 15),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //offer 1
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/images/imageforplay.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Offer 1',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ]),
                    //offer 2
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:
                                Image.asset('assets/images/imageforplay.jpg'),
                          ),
                          Text(
                            'Offer 2',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ]),
                  ],
                ),
                //What's new
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'What\'s new?',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            //item 1
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Kids TV Videos',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 2
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Audiomack',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 3
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'MTN Skils \n academy plus',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 4
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'PlayZone',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 5
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Sports world \n TV ',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //Music
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Music',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            //item 1
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Kids TV Videos',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 2
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Audiomack',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 3
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'MTN Skils \n academy plus',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 4
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'PlayZone',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 5
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Sports world \n TV ',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //Videos
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Videos',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            //item 1
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Kids TV Videos',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 2
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Audiomack',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 3
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'MTN Skils \n academy plus',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 4
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'PlayZone',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 5
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Sports world \n TV ',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //Games
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Games',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            //item 1
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Kids TV Videos',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 2
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Audiomack',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 3
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'MTN Skils \n academy plus',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 4
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'PlayZone',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 5
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Sports world \n TV ',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //Lifestyle
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Lifestyle',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            //item 1
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Kids TV Videos',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 2
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Audiomack',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 3
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'MTN Skils \n academy plus',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 4
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'PlayZone',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            //item 5
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 120,
                                    height: 160,
                                    child: Image.asset(
                                      'assets/images/imageforplay2.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Sports world \n TV ',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                //Explore channels
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Explore Channels',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/audiomack.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                               Text('Audiomack',style: TextStyle(color: Colors.white))     
                                  ],
                                ),
                                //apple
                                  Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/audiomack.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                               Text('Apple\nMusic',style: TextStyle(color: Colors.white))     
                                  ],
                                ),
                                
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
