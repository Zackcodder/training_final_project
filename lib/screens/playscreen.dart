import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Playscreen extends StatefulWidget {
  const Playscreen({super.key});

  @override
  State<Playscreen> createState() => _PlayscreenState();
}

class _PlayscreenState extends State<Playscreen> {
    int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();
  var imgList = [
    Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/background1.jpg'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(20),
          ),
      width: 500,
      height: 300,
    ),
    Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/background1.jpg'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 500,
      height: 300,
    ),
    Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/background1.jpg'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(20),
          ),
      width: 500,
      height: 300,
    ),
    Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/background1.jpg'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(20),
          ),
      width: 500,
      height: 300,
    ),
  ];
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
           //slider
          Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black)),
          child: CarouselSlider(
            options: CarouselOptions(
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),

            items: imgList,
            // items: imageSliders,
            carouselController: _controller,
            // [
            //   Image.asset('assets/images/flower1.jpg'),
            //   Image.asset('assets/images/ocean1.jpg'),
            //   Image.asset('assets/images/sky1.jpg'),
            //   Image.asset('assets/images/sunset1.jpg'),

            // ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.white)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
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
                        height: 150,
                        child: ListView(
                          padding: EdgeInsets.all(10),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
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
                                    Text('Audiomack',
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                //apple
                                Column(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/applemusic.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Text('Apple\nMusic',
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //footer
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Stay up to date with instant\nnotifications.',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        'Receive purchase alerts, new product arrivals,\nand exclusive offers and deals.\nSign up emails',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Container(
                        height: 50.0,
                        child: TextField(
                          onChanged: ((value) {}),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(top: 2),
                            hintText: 'xyz@gmail.com',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 2,
                      ),
                      //item
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shop',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 2,
                      ),
                      //item
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Business Solution',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 2,
                      ),
                      //item
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Legal',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 2,
                      ),
                      //item
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Help',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 2,
                      ),
                      //item
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'MTN Nigeria',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Column(
                            children: [
                              // Image.asset(
                              //   'assets/mtnlogo.png',
                              //   color: Colors.white,
                              //   width: 100,
                              //   height: 100,
                              // ),
                              const Text(
                                '©2022 MTN Nigeria Communications PLC, All rights \nreserved. Privacy Policy & Data Protection',
                                style: TextStyle(color: Colors.grey),
                                textAlign: TextAlign.center,
                              ),

                              ///socials icons
                              Padding(
                                padding: const EdgeInsets.only(top: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    //facebook
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.yellow),
                                      child: Icon(FontAwesomeIcons.facebookF),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    //twitter
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.yellow),
                                      child: Icon(FontAwesomeIcons.twitter),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    //instagram
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.yellow),
                                      child: Icon(FontAwesomeIcons.instagram),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    //linkedin
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.yellow),
                                      child: Icon(FontAwesomeIcons.linkedinIn),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    //youtube
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.yellow),
                                      child: Icon(FontAwesomeIcons.youtube),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
