import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        padding: const EdgeInsets.symmetric(horizontal: 10 ,vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                  Container(
                    padding: const EdgeInsets.only(
                      right: 20,
                      left: 10,
                      top: 5,
                      bottom: 5,
                    ),
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.amber[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.king_bed),
                        Text('prestige gold'),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                width: 100,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.monetization_on_rounded,
                    ),
                    Text(
                      '#***',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.notifications_none_outlined,
                size: 60,
              )
            ],
          ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text('App only'),
         ),

          Expanded(
          
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector( onTap: () {
                  
                },
                  child: Container(
                  
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber
                      
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.fireplace ,color: Colors.red,),
                        SizedBox(
                          width: 10,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Recharge offer'),
                            Text('Get 50% bonus when you recharge with '),
                            Text('your debit card')
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20,left: 20),
                          padding: EdgeInsets.all(10),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black
                          ),
                          child: Center(child: Text('View' )),
                        ),
                      ],
                    ),
                  ),
                ),
///second item
      Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber
                    
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.fireplace ,color: Colors.red,),
                      SizedBox(
                        width: 10,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Recharge offer'),
                          Text('Get 50% bonus when you recharge with '),
                          Text('your debit card')
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20,left: 20),
                        padding: EdgeInsets.all(10),
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black
                        ),
                        child: Center(child: Text('View' )),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: const BottomAppBar(),
    );
  }
}
