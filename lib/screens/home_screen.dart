import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_final_project/screens/bundlescreen.dart';
import 'package:training_final_project/screens/date_subs/borrow%20screen.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:training_final_project/screens/date_subs/recharge_screen.dart';
import 'package:training_final_project/screens/date_subs/share_screen.dart';
import 'package:training_final_project/screens/deals/mega_deal_screen.dart';
import 'package:training_final_project/screens/deals/offerscreen.dart';
import 'package:training_final_project/screens/deals/refer_and_earn_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;
  late Animation<double> _animation4;
  int selectedIndex = 0;

  final List<String> items = ['HOT', 'MTN', 'FUN'];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    _animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    _animation1 = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0, 0.6, curve: Curves.easeInOut),
    );

    _animation2 = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.7, 0.9, curve: Curves.easeInOut),
    );

    _animation3 = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.8, 0.9, curve: Curves.easeInOut),
    );

    _animation4 = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.9, 1, curve: Curves.easeInOut),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildAnimatedWidget(Animation<double> animation, Widget child) {
    return FadeTransition(
      opacity: animation,
      child: SlideTransition(
        position: Tween<Offset>(begin: const Offset(0, -0.1), end: Offset.zero)
            .animate(animation),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        children: [
          /// customer details
          _buildAnimatedWidget(
            _animation1,
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Colors.grey,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ///name, number and notification
                    _buildAnimatedWidget(
                      _animation2,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///name number and category
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ///welcome note with user name
                              const Text(
                                'Hello, Success!',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),

                              /// customer id number
                              const Text(
                                '+234 904 667 7897',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),

                              ///prestiage gold
                              Container(
                                padding: const EdgeInsets.only(
                                  right: 20,
                                  left: 10,
                                  top: 5,
                                  bottom: 5,
                                ),
                                // width: 250,
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.king_bed),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('prestige gold'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(Icons.arrow_forward),
                                  ],
                                ),
                              )
                            ],
                          ),

                          ///account balance
                          _buildAnimatedWidget(
                            _animation3,
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  // width: 100,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.pink, width: 2),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.monetization_on_rounded,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '#***',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),

                                ///notification icon
                                IconButton(
                                  icon: const Icon(
                                    Icons.notifications_none_outlined,
                                    size: 30,
                                    color: Colors.pink,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///app only deals text
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'App-only deals',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),

                    ///ads slider
                    _buildAnimatedWidget(
                      _animation4,
                      SizedBox(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Offerscreen(),
                                    ));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.pink),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                          'assets/images/hotdeal1.png'),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Recharge offer',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                            'Get 50% bonus when you \nrecharge with your debit card '),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      height: 40,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.black),
                                      child: const Center(
                                          child: Text(
                                        'View',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            ///second item
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const MegaDealScreen(),
                                    ));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.pink),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                          'assets/images/hotdeal1.png'),
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Recharge offer'),
                                        Text(
                                            'Get 50% bonus when you \nrecharge with your debit card'),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      height: 40,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Colors.black),
                                      child: const Center(
                                          child: Text(
                                        'View',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),

          ///data information
          _buildAnimatedWidget(
            _animation1,
            Container(
              margin: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              // height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.pink,
              ),
              child:

                  ///Column for all
                  _buildAnimatedWidget(
                _animation3,
                Column(
                  children: [
                    /// container num, name and mtn name
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            //phone number text
                            const Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Text(
                                '+234 901 456 4567',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),

                            ///divider line
                            Container(
                              color: Colors.black,
                              width: 2,
                              height: 18,
                            ),

                            ///user name
                            const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                'Hawau',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ],
                        ),

                        ///mtn name n icon
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'ProAuto...',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )
                          ],
                        ),
                      ],
                    ),

                    ///Divider
                    const Divider(
                      color: Color.fromARGB(255, 194, 177, 177),
                    ),

                    ///row containing airtime and data balance
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///for buy data and airtime balance ets
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.wallet,
                                  color: Colors.yellow,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Wallet Balance',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white)),
                              ],
                            ),
                            const Text('₦0.00',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                            const Text('Bonus: ₦945.89',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                )),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Recharge()));
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                // height: 40,
                                // width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30)),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.currency_exchange_outlined,
                                        color: Colors.white),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('Fund Wallet',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14)),
                                    Icon(Icons.arrow_forward_ios,
                                        color: Colors.white),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),

                        ///divider line
                        Container(
                          color: const Color.fromARGB(255, 194, 177, 177),
                          width: 2,
                          height: 120,
                        ),

                        ///for data balance n buy data
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.compare_arrows),
                                  Text(
                                    'Data Balance',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                '0MB',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Bundlescreen()));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  margin: const EdgeInsets.only(top: 20),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.compare_arrows,
                                          color: Colors.white),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Buy Data',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward_ios,
                                          color: Colors.white),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'View Details',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.refresh),
                            Text(
                              'Refresh',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          ///offer, shares, borroe and refer
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Quick Action',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.only(left: 10, right: 10),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.pink),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ///offer
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Offerscreen()));
                  },
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.gifts,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text(
                        'Offers',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),

                ///share
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShareScreen()));
                  },
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.rotate,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),

                ///borrow
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BorrowScreen()));
                  },
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.piggyBank,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text(
                        'Borrow',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),

                ///refer and earn
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReferAndEarnScreen()));
                  },
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.moneyBill1Wave,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text(
                        'Refer & earn',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          ///market place
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Marketplace',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.pink,
            ),
            margin: const EdgeInsets.fromLTRB(6, 4, 5, 0),
            padding: const EdgeInsets.fromLTRB(10, 5, 15, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('MTN',
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    Text('Hot',
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    Text('Fun',
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    Text('Trans',
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // second  row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ///yellow win
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // this container is for image
                        GestureDetector(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/yelloWin.png'),
                          ),
                        ),
                        const Text('MTN',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ],
                    ),

                    ///ride
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // this container is for image

                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/rida.jpeg'),
                        ),
                        Text('rida',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ],
                    ),

                    ///alend loan
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // this container is for image

                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/alend.jpeg'),
                        ),
                        Text('Alend Loan',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ],
                    ),

                    ///providus
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // this container is for image
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/providus.png'),
                        ),
                        Text('Providus',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ],
                    ),
                  ],
                ),
                // Third  row
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ///dodo piza
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // this container is for image
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/images/dodo.png'),
                        ),
                        Text('Dodo \nPizza',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ],
                    ),

                    ///jumia
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // this container is for image
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/jumia.png'),
                        ),
                        Text('Jumia',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ],
                    ),

                    ///buy power
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // this container is for image
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/buypower.png'),
                        ),
                        Text('Buy Power',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ],
                    ),

                    ///ayoba
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // this container is for image
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/ayoba.jpeg'),
                        ),
                        Text('Ayoba',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ],
                    ),
                  ],
                ),
                // Fourth Row
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ///super
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // this container is for image
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/super.jpeg'),
                        ),
                        Text('Super \nSport',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ],
                    ),

                    ///apple music
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // this container is for image
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/apple music.jpeg'),
                        ),
                        Text('Apple \nMusic',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ],
                    ),

                    ///travel start
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // this container is for image
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/travelstart.png'),
                        ),
                        Text('Travel \n Start',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ],
                    ),

                    ///mano
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // this container is for image
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/images/mano.png'),
                        ),
                        Text('Mano',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          ///
          // Stack(
          //   alignment: Alignment.center,
          //   children: [
          //     CurvedContainer(
          //       selectedIndex: selectedIndex,
          //       color: kcGreen,
          //       // colors[selectedIndex],
          //     ),
          //     Positioned(
          //       top: 25,
          //       left: (selectedIndex + 1) * 300.0 / 4 - 5,
          //       child: DotPainterWidget(),
          //     ),
          //   ],
          // ),

          ///

          ///History
          // ListView.builder(
          //   itemCount: 3,
          //   itemBuilder: (BuildContext context, int index) {
          //     return  Container(
          //         margin: const EdgeInsets.only(bottom: 15),
          //         padding: const EdgeInsets.all(5),
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(8),
          //           border: Border.all(color: Colors.pink.withOpacity(0.3)),
          //         ),
          //         child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: [
          //               ///title icon
          //               Container(
          //                 margin: const EdgeInsets.only(right: 16),
          //                 child:  CircleAvatar(
          //                     backgroundColor: kcLightPink,
          //                     radius: 15,
          //                     child: Image.asset('assets/images/MTNlogo.png')
          //                 ),
          //               ),
          //               const Column(
          //                   crossAxisAlignment:
          //                   CrossAxisAlignment.start,
          //                   mainAxisAlignment:
          //                   MainAxisAlignment.spaceAround,
          //                   children: [
          //                     Text('Transaction Receipt',
          //                         style: TextStyle()),
          //                     Text('TID: 2323424437348934723820',
          //                         style: TextStyle(
          //                           color: Colors.black,
          //                           fontFamily: 'Montserrat',
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w400,
          //                         )),
          //                     Text('April 23,2024',
          //                         style: TextStyle(
          //                           color: Colors.grey,
          //                           fontFamily: 'Montserrat',
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w500,
          //                         )),
          //                     Text('SUCCESSFUL',
          //                         style: TextStyle(
          //                           color: Colors.grey,
          //                           fontFamily: 'Montserrat',
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w500,
          //                         )),
          //                   ]),
          //               ///amount
          //               const AppTexts(text: 'NGN 25,000', textStyle: kVerificationMediumTextStyle)
          //             ]));
          //   },
          // ),
        ],
      ),
    );
  }
}
