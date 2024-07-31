import 'package:flutter/material.dart';
import 'offer_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(),
      backgroundColor: Colors.black,
       body: Column(
          children: [
              const Row(
            mainAxisAlignment: MainAxisAlignment.start, // Aligns the text to the left
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Marketplace',
                  style: TextStyle(fontSize: 30, color: Colors.white),
            ),
              )
          ]
          ),
            Container(
              color: const Color.fromARGB(255, 49, 48, 41),
             margin: const EdgeInsets.fromLTRB(6, 4, 5, 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // first  row
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Hot', style: TextStyle(fontSize: 30, color: Colors.white)),
                      Text('MTN', style: TextStyle(fontSize: 30, color: Colors.white)),
                      Text('Fun', style: TextStyle(fontSize: 30, color: Colors.white)),
                      Text('Trans', style: TextStyle(fontSize: 30, color: Colors.white)),
                    ],
                  ),
                  // second  row
                 Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: [
               Column(
                children: [
                  // this container is for image
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const OfferScreen()),
                      );
                    },
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(59),
                       child: Column(
                        children: [
                           Image.asset('images/yelloWin.png', width: 80, height: 80, fit: BoxFit.cover
                        ),

                      ],
                       ),
                      ),
                      ),
                     
                       const Text('YelloWin', style: TextStyle(fontSize: 15, color: Colors.white)),
                      const SizedBox(height: 20),
                ],
               ),
               Column(
                children: [
                  // this container is for image
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const OfferScreen()),
                      );
                    },
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(59),
                       child: Column(
                        children: [
                           Image.asset('images/rida.jpeg', width: 80, height: 80, fit: BoxFit.cover
                        ),
                      ],
                       ),
                      ),
                      ),
                       const Text('Rida', style: TextStyle(fontSize: 15, color: Colors.white)),
                        const SizedBox(height: 20),
                ],
               ),
               Column(
                children: [
                  // this container is for image
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const OfferScreen()),
                      );
                    },
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(59),
                       child: Column(
                        children: [
                           Image.asset('images/Alend.jpeg', width: 80, height: 80, fit: BoxFit.cover
                        ),

                      ],
                       ),
                      ),
                      ),
                       const Text('Alend Loans', style: TextStyle(fontSize: 15, color: Colors.white)),
                        const SizedBox(height: 20),
                ],
               ),
              Column(
                children: [
                  // this container is for image
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const OfferScreen()),
                      );
                    },
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(59),
                       child: Column(
                        children: [
                           Image.asset('images/providus.png', width: 80, height: 80, fit: BoxFit.cover
                        ),
                      ],
                       ),
                      ),
                      ),
                       const Text('ProvidusBank', style: TextStyle(fontSize: 15, color: Colors.white)),
                        const SizedBox(height: 20),
                ],
               ),
              ],
                 ),
                  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Column(
                children: [
                  // this container is for image
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const OfferScreen()),
                      );
                    },
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(59),
                       child: Column(
                        children: [
                           Image.asset('images/dodo.png', width: 80, height: 80, fit: BoxFit.cover
                        ),

                      ],
                       ),
                      ),
                      ),
                       const Text('Dodo Pizza', style: TextStyle(fontSize: 15, color: Colors.white)),
                       const SizedBox(height: 20),
                ],
               ),
               Column(
                children: [
                  // this container is for image
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const OfferScreen()),
                      );
                    },
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(59),
                       child: Column(
                        children: [
                           Image.asset('images/jumia.png', width: 80, height: 80, fit: BoxFit.cover
                        ),

                      ],
                       ),
                      ),
                      ),
                       const Text('Jumia', style: TextStyle(fontSize: 15, color: Colors.white)),
                       const SizedBox(height: 20),
                ],
               ),
               Column(
                children: [
                  // this container is for image
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const OfferScreen()),
                      );
                    },
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(59),
                       child: Column(
                        children: [
                           Image.asset('images/buypower.png', width: 80, height: 80, fit: BoxFit.cover
                        ),

                      ],
                       ),
                      ),
                      ),
                       const Text('Buypower', style: TextStyle(fontSize: 15, color: Colors.white)),
                       const SizedBox(height: 20),
                ],
               ),
              Column(
                children: [
                  // this container is for image
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const OfferScreen()),
                      );
                    },
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(59),
                       child: Column(
                        children: [
                           Image.asset('images/ayoba.jpeg', width: 80, height: 80, fit: BoxFit.cover
                        ),
                      ],
                       ),
                      ),
                      ),
                       const Text('Ayoba', style: TextStyle(fontSize: 15, color: Colors.white)),
                       const SizedBox(height: 20),
                ],
               ),
              ],
                 ),
                  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Column(
                children: [
                  // this container is for image
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const OfferScreen()),
                      );
                    },
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(59),
                       child: Column(
                        children: [
                           Image.asset('images/super.jpeg', width: 80, height: 80, fit: BoxFit.cover
                        ),

                      ],
                       ),
                      ),
                      ),
                       const Text('Super Sport', style: TextStyle(fontSize: 15, color: Colors.white)),
                       const SizedBox(height: 20),
                ],
               ),
               Column(
                children: [
                  // this container is for image
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const OfferScreen()),
                      );
                    },
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(59),
                       child: Column(
                        children: [
                           Image.asset('images/apple music.jpeg', width: 80, height: 80, fit: BoxFit.cover
                        ),

                      ],
                       ),
                      ),
                      ),
                       const Text('Apple Music', style: TextStyle(fontSize: 15, color: Colors.white)),
                       const SizedBox(height: 20),
                ],
               ),
               Column(
                children: [
                  // this container is for image
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const OfferScreen()),
                      );
                    },
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(59),
                       child: Column(
                        children: [
                           Image.asset('images/travelstart.png', width: 80, height: 80, fit: BoxFit.cover
                        ),

                      ],
                       ),
                      ),
                      ),
                       const Text('TravelStrat', style: TextStyle(fontSize: 15, color: Colors.white)),
                       const SizedBox(height: 20),
                ],
               ),
              Column(
                children: [
                  // this container is for image
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const OfferScreen()),
                      );
                    },
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(59),
                       child: Column(
                        children: [
                           Image.asset('images/mano.png', width: 80, height: 80, fit: BoxFit.cover
                        ),
                      ],
                       ),
                      ),
                      ),
                       const Text('Mano', style: TextStyle(fontSize: 15, color: Colors.white)),
                       const SizedBox(height: 20),
                ],
               ),
              ],
                 ),
                ],
              ),
            ),
              ]
       )
    );
  }
}