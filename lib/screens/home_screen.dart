import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(),
      backgroundColor: Colors.black,
       body: Column(
          children: [
            const Text( 
             
              'Marketplace',
              style: TextStyle(fontSize: 30),
            ),
            Container(
              color: Color.fromARGB(255, 49, 48, 41),
             margin: const EdgeInsets.fromLTRB(6, 4, 5, 0),
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
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      ),
                    child: Column(
                      children: [
                      Image.asset('images/yelloWin.png', width: 100, height: 100, fit: BoxFit.cover
                      ),
                     const Text('YelloWin', style: TextStyle(fontSize: 20, color: Colors.white)),
                     ]
                    )
               )
               ],
               ),
                  Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      ),
                    child: Column(
                      children: [
                      Image.asset('images/rida.jpeg', width: 100, height: 100, fit: BoxFit.cover
                      ),
                     const Text('Rida', style: TextStyle(fontSize: 20, color: Colors.white)),
                     ]
                    )
               )
               ],
               ),
                 Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      ),
                    child: Column(
                      children: [
                      Image.asset('images/alend.jpeg', width: 100, height: 100, fit: BoxFit.cover
                      ),
                     const Text('Alend Loans', style: TextStyle(fontSize: 20, color: Colors.white)),
                     ]
                    )
               )
               ],
               ),
                  Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      ),
                    child: Column(
                      children: [
                      Image.asset('images/providus.png', width: 100, height: 100, fit: BoxFit.cover
                      ),
                     const Text('ProvidusBank', style: TextStyle(fontSize: 20, color: Colors.white)),
                     ]
                    )
               )
               ],
               ),            
], 
                 ),
                 // Third  row 
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      ),
                    child: Column(
                      children: [
                      Image.asset('images/dodo.png', width: 100, height: 100, fit: BoxFit.cover
                      ),
                     const Text('Dodo Pizza', style: TextStyle(fontSize: 20, color: Colors.white)),
                     ]
                    )
               )
               ],
               ),
                  Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      ),
                    child: Column(
                      children: [
                      Image.asset('images/jumia.png', width: 100, height: 100, fit: BoxFit.cover
                      ),
                     const Text('Jumia', style: TextStyle(fontSize: 20, color: Colors.white)),
                     ]
                    )
               )
               ],
               ),
                 Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      ),
                    child: Column(
                      children: [
                      Image.asset('images/buypower.jpeg', width: 100, height: 100, fit: BoxFit.cover
                      ),
                     const Text('BuyPower', style: TextStyle(fontSize: 20, color: Colors.white)),
                     ]
                    )
               )
               ],
               ),
                  Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      ),
                    child: Column(
                      children: [
                      Image.asset('images/ayoba.jpeg', width: 100, height: 100, fit: BoxFit.cover
                      ),
                     const Text('Ayoba', style: TextStyle(fontSize: 20, color: Colors.white)),
                     ]
                    )
               )
               ],
               ),            
]

    ),
// Fourth Row
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      ),
                    child: Column(
                      children: [
                      Image.asset('images/super.jpeg', width: 100, height: 100, fit: BoxFit.cover
                      ),
                     const Text('Super Sport', style: TextStyle(fontSize: 20, color: Colors.white)),
                     ]
                    )
               )
               ],
               ),
                  Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      ),
                    child: Column(
                      children: [
                      Image.asset('images/apple music.jpeg', width: 100, height: 100, fit: BoxFit.cover
                      ),
                     const Text('Apple Music', style: TextStyle(fontSize: 20, color: Colors.white)),
                     ]
                    )
               )
               ],
               ),
                 Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      ),
                    child: Column(
                      children: [
                      Image.asset('images/travelstart.png', width: 100, height: 100, fit: BoxFit.cover
                      ),
                     const Text('TravelStart', style: TextStyle(fontSize: 20, color: Colors.white)),
                     ]
                    )
               )
               ],
               ),
                  Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      ),
                    child: Column(
                      children: [
                      Image.asset('images/mano.png', width: 100, height: 100, fit: BoxFit.cover
                      ),
                     const Text('Mano', style: TextStyle(fontSize: 20, color: Colors.white)),
                     ]
                    )
               )
               ],
               ),            
]
           )
  ],
           ),
            )
          ]
       )
    );
  }
}
