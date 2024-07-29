import 'package:flutter/material.dart';




class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Text(
          'Offers',
          style: TextStyle(color: Colors.white),
        ),
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 500,
          color: Colors.black,
          child: Column(
            children: [
              ///Circle row
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Text('A'),
                  )
                ],
              ),

              ///Title row
              Padding(
                padding: const EdgeInsets.only(top:10 ,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Exclusive App deals (2)',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                
                    ///View all and icon
                    Row(
                      children: [
                        Text('View all',
                            style: TextStyle(color: Colors.yellow, fontSize: 25)),
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
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ///First box
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              'Scratch to unveil ',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Text('exciting offers',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text('Countdown',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ),

                          ///countdown
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ///1st number
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Text(
                                    '0',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 40),
                                  ),
                                ),

                                ///2nd number
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Text(
                                    '5',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 40),
                                  ),
                                ),
                                Text(':',
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.black)),

                                ///3rd number
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Text(
                                    '0',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 40),
                                  ),
                                ),
                                //4th number
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Text(
                                    '8',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 40),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Days',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                                Text('Hours',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ))
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Next offer available',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text('30th July 2024',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),

                    //second box
                    Container(
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              'Scratch to unveil ',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text('exciting offers',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text('Countdown',
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ),

                          ///countdown
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ///1st number
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Text(
                                    '0',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 40),
                                  ),
                                ),

                                ///2nd number
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Text(
                                    '5',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 40),
                                  ),
                                ),
                                Text(':',
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.black)),

                                ///3rd number
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Text(
                                    '0',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 40),
                                  ),
                                ),
                                //4th number
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Text(
                                    '8',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 40),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Days',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                                Text('Hours',
                                    style: TextStyle(
                                      fontSize: 25,
                                    ))
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Next offer available',
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text('30th July 2024',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                ],
                              )
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
      ),
    );
  }
}
