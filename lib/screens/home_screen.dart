import 'package:flutter/material.dart';
import 'package:training_final_project/screens/offers_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [
          /// user infor by Success
          Container(
            height: 310,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///name number and category
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "y'ello,Ayomide",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            '0806 004 9642',
                            style: TextStyle(fontSize: 20, color: Colors.white),
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
                              color: Colors.amber[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            // width: 100,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          const Icon(
                            Icons.notifications_none_outlined,
                            size: 30,
                          )
                        ],
                      ),
                    ],
                  ),

                  ///app only deals text
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'App-only deals',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder:(context) => Offerscreen() ,)
                            // );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.fireplace_outlined,
                                  color: Colors.red,
                                  size: 50,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Recharge offer',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                        'Get 50% bonus when you recharge with '),
                                    Text('your debit card')
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 20, left: 20),
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.black),
                                  child: const Center(
                                      child: Text(
                                    'View',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),

                        ///second item
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.amber),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.fireplace_outlined,
                                color: Colors.red,
                                size: 50,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Recharge offer'),
                                  Text('Get 50% bonus when you recharge with '),
                                  Text('your debit card')
                                ],
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(right: 20, left: 20),
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.black),
                                child: const Center(
                                    child: Text(
                                  'View',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),

          ///user balance card by Hawau
          Container(
            margin: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            height: 250,
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
                            '0806 044 9642',
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
                            'Ayomide',
                          ),
                        ),
                      ],
                    ),

                    ///mtn name n icon
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'MTN XtraVa...',
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///for buy data and airtime balance ets
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.phone_in_talk_outlined),
                            Text('Airtime Balance',
                                style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        const Text('₦0.00',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('Bonus Airtime : ₦945.89',
                            style: TextStyle(fontSize: 14)),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OffersScreen()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            // height: 40,
                            // width: 200,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.currency_exchange_outlined,
                                    color: Colors.white),
                                Text('Buy Airtime',
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
                      margin: const EdgeInsets.only(right: 10),
                      color: const Color.fromARGB(255, 194, 177, 177),
                      width: 2,
                      height: 149,
                    ),

                    ///for data balance n buy data
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.compare_arrows),
                              Text('Data Balance',
                                  style: TextStyle(fontSize: 14)),
                            ],
                          ),
                          const Text('0MB',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.compare_arrows, color: Colors.white),
                                Text('Buy Data',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                Icon(Icons.arrow_forward_ios,
                                    color: Colors.white),
                              ],
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
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.refresh),
                        Text('Refresh', style: TextStyle(fontSize: 20))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),

          /// market place by Blessing
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///market place title
              const Text(
                'Marketplace',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Container(
                color: const Color.fromARGB(255, 49, 48, 41),
                margin: const EdgeInsets.fromLTRB(6, 4, 5, 0),
                padding: EdgeInsets.fromLTRB(10, 5, 15, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // first  row
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Hot',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        Text('MTN',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        Text('Fun',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        Text('Trans',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ],
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
                              child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(360)),
                                  child: Image.asset(
                                      'assets/images/yelloWin.png',
                                      fit: BoxFit.cover)),
                            ),
                            const Text('YelloWin',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ],
                        ),

                        ///ride
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // this container is for image
                            Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(360)),
                                child: Image.asset('assets/images/rida.jpeg',
                                    fit: BoxFit.cover)),
                            const Text('rida',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ],
                        ),

                        ///alend loan
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // this container is for image
                            Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(360)),
                                child: Image.asset('assets/images/alend.jpeg',
                                    fit: BoxFit.cover)),
                            const Text('Alend Loan',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ],
                        ),

                        ///providus
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // this container is for image
                            Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(360)),
                                child: Image.asset('assets/images/providus.png',
                                    fit: BoxFit.cover)),
                            const Text('Providus',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                    // Third  row
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ///dodo piza
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // this container is for image
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(360)),
                                  child: Image.asset('assets/images/dodo.png',
                                      fit: BoxFit.cover)),
                              const Text('Dodo Pizza',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          ),

                          ///jumia
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // this container is for image
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(360)),
                                  child: Image.asset('assets/images/jumia.png',
                                      fit: BoxFit.cover)),
                              const Text('Jumia',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          ),

                          ///buy power
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // this container is for image
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(360)),
                                  child: Image.asset(
                                      'assets/images/buypower.png',
                                      fit: BoxFit.cover)),
                              const Text('Buy Power',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          ),

                          ///ayoba
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // this container is for image
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(360)),
                                  child: Image.asset('assets/images/ayoba.jpeg',
                                      fit: BoxFit.cover)),
                              const Text('Ayoba',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          ),
                        ]),
                    // Fourth Row
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ///super
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // this container is for image
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(360)),
                                  child: Image.asset('assets/images/super.jpeg',
                                      fit: BoxFit.cover)),
                              const Text('Super \nSport',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          ),

                          ///apple music
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // this container is for image
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(360)),
                                  child: Image.asset(
                                      'assets/images/apple music.jpeg',
                                      fit: BoxFit.cover)),
                              const Text('Apple \nMusic',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          ),

                          ///travel start
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // this container is for image
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(360)),
                                  child: Image.asset(
                                      'assets/images/travelstart.png',
                                      fit: BoxFit.cover)),
                              const Text('Travel \nStart',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          ),

                          ///mano
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // this container is for image
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(360)),
                                  child: Image.asset('assets/images/mano.png',
                                      fit: BoxFit.cover)),
                              const Text('Mano',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          ),
                        ])
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white.withOpacity(0.2),
        child: BottomAppBar(
          color: Colors.black,
          shape: const CircularNotchedRectangle(),
          notchMargin: 18.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.home, 'Home', 0),
              _buildNavItem(Icons.play_arrow, 'Play', 1),
              const SizedBox(width: 40), // Space for the floating action button
              _buildNavItem(Icons.help_outline, 'Help', 2),
              _buildNavItem(Icons.more_horiz, 'More', 3),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 100,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.yellow,
          shape: const CircleBorder(),
          onPressed: () {
            // Action for the FAB
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    Color color = _selectedIndex == index ? Colors.yellow : Colors.grey;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Text(label, style: TextStyle(color: color)),
        ],
      ),
    );
  }
}
