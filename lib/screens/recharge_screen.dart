// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class Recharge extends StatefulWidget {
  const Recharge({super.key});

  @override
  State<Recharge> createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final text = _controller.text;
      _controller.value = _controller.value.copyWith(
        text: _formatNumber(text),
        selection: TextSelection.collapsed(offset: _formatNumber(text).length),
      );
    });
  }

  String _formatNumber(String s) {
    return NumberFormat.decimalPattern()
        .format(int.tryParse(s.replaceAll(',', '')) ?? 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: const Text(
          'Recharge',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splashscreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            /// first row
            Container(
              color: Colors.pink,
              padding: const EdgeInsets.all(8),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name letter n phone number
                  const Row(
                    children: [
                      ///user name letter
                      CircleAvatar(
                        backgroundColor: Colors.pink,
                        child: Text(
                          'M',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'To Myself \n 0903 445 2344',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),

                  ///but for others
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Buy for others',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                        Icon(Icons.arrow_forward_ios, color: Colors.yellow),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///airtime and voucher recharge
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      border: Border.all(color: Colors.pink),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(10),
                    child: const Text('Airtime Recharge',
                        style: TextStyle(color: Colors.black)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(30)),
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.all(10),
                    child: const Text('Voucher Recharge',
                        style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ),

            ///amount text field
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///enter aount hint and price range
                  const Text('Enter Amount:',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  TextFormField(
                    controller: _controller,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      helperText: 'Min:N50 | Max :N150,000',
                      helperStyle: TextStyle(fontSize: 20, color: Colors.white),
                      hintStyle: TextStyle(fontSize: 20, color: Colors.white),
                      hintText: 'N0.00',
                    ),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  )
                ],
              ),
            ),

            ///amount options
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ///amount 1
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: const Center(
                      child: Text(
                        '+₦500',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),

                  ///amount 2
                  Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: const Center(
                      child: Text(
                        '+₦1,000',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),

                  ///amount 3
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: const Center(
                      child: Text(
                        '+₦3,000',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),

                  ///amount 4
                  Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: const Center(
                      child: Text(
                        '+₦5,000',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),

                  ///amount 5
                  Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: const Center(
                      child: Text(
                        '+₦7,000',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),

                  ///amount 6
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: const Center(
                      child: Text(
                        '+₦10,000',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //awoof for u container
            Container(
              margin: const EdgeInsets.all(10),
              //first container
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[900],
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //container
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: const BoxDecoration(
                          color: Colors.pink,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(
                            FontAwesomeIcons.certificate,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                      //awuf 4 u
                      const Row(
                        children: [
                          Text('Awuf4u offer ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),

                  // 2nd circle
                  Container(
                    width: 27,
                    height: 27,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink, width: 2),
                        shape: BoxShape.circle),
                  ),
                ],
              ),
            ),

            // enjoy 100% bonus container
            SizedBox(
              height: 100,
              child: Container(
                margin: const EdgeInsets.only(right: 10, left: 10, bottom: 25),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Center(
                      child: Icon(
                        FontAwesomeIcons.certificate,
                        color: Colors.yellow,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                        'Enjoy 100% bonus when you \nrecharge with your debit card '),
                    Image.asset(
                      'assets/extra-bonus.png',
                      height: 100,
                      width: 100,
                    )
                  ],
                ),
              ),
            ),

            ///recahrge again
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.only(bottom: 15),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.black),
              child: Column(
                children: [
                  ///recharge again and vew all
                  const Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recharge Again',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Row(
                          children: [
                            Text(
                              'View all',
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 14,
                              ),
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.amber,
                              size: 27,
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  ///circular container
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Image.asset(
                      'assets/ghost.png',
                      height: 100,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(5),
                      child: const Text(
                        'No Recent Recharge',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  const Text(
                    'You havent purchased any \nairtime recently',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),

            ///proceed button
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             const PaymentGateWayOptionScreen()));
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 5, left: 10, right: 10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: const Text(
                    'Proceed',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // Scaffold(
    //   body: Container(
    //     color: Colors.black54,
    //     child: Column(
    //       children: [
    //         //awoof for u container
    //         Container(
    //           margin: EdgeInsets.all(35),
    //           //first container
    //           padding: EdgeInsets.all(15),
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(10),
    //             color: Colors.grey[900],
    //           ),

    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               //container
    //               Container(
    //                 width: 50,
    //                 height: 50,
    //                 decoration: BoxDecoration(
    //                     color: Colors.yellow, shape: BoxShape.circle),
    //               ),

    //               //awuf 4 u
    //               Row(
    //                 children: [
    //                   Text('Awuf4u offer ',
    //                       style: TextStyle(fontSize: 20, color: Colors.white)),
    //                   Icon(
    //                     Icons.arrow_drop_down,
    //                     size: 30,
    //                     color: Colors.white,
    //                   )
    //                 ],
    //               ),
    //               SizedBox(
    //                 width: 125,
    //               ),

    //               // 2nd circle
    //               Container(
    //                 width: 27,
    //                 height: 27,
    //                 decoration: BoxDecoration(
    //                     border: Border.all(color: Colors.yellow, width: 2),
    //                     shape: BoxShape.circle),
    //               ),
    //             ],
    //           ),
    //         ),
    //         // enjoy 100% bonus container
    //         Container(
    //           color: Colors.yellow,
    //           margin: EdgeInsets.only(left: 35, right: 35, bottom: 15),
    //           padding: EdgeInsets.all(10),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Container(
    //                 width: 27,
    //                 height: 27,
    //                 decoration: BoxDecoration(
    //                     border: Border.all(color: Colors.black, width: 2),
    //                     shape: BoxShape.circle),
    //               ),
    //               Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   Text('Enjoy 100% bonus when you recharge',
    //                       style: TextStyle(
    //                           fontSize: 15, fontWeight: FontWeight.bold)),
    //                   Text('using Momo and 50% bonus on',
    //                       style: TextStyle(
    //                           fontSize: 13.5, fontWeight: FontWeight.bold)),
    //                   Text('rechage with bank card',
    //                       style: TextStyle(
    //                           fontSize: 13, fontWeight: FontWeight.bold)),
    //                 ],
    //               ),
    //               SizedBox(
    //                 width: 20,
    //               ),
    //               Column(
    //                 children: [
    //                   //container of extra
    //                   Container(
    //                     decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Colors.black,
    //                     ),
    //                     margin: EdgeInsets.all(5),
    //                     height: 30,
    //                     width: 60,
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: [
    //                         Text(
    //                           'EXTRA',
    //                           style:
    //                               TextStyle(fontSize: 11, color: Colors.white),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   //container of bonus
    //                   Container(
    //                     decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(10),
    //                       color: Colors.black,
    //                     ),
    //                     margin: EdgeInsets.all(5),
    //                     height: 30,
    //                     width: 60,
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: [
    //                         Text(
    //                           'BONUS',
    //                           style:
    //                               TextStyle(fontSize: 11, color: Colors.yellow),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //         Expanded(
    //             child: Container(
    //           decoration: BoxDecoration(color: Colors.grey[900]),
    //           child: Column(
    //             children: [
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Container(
    //                       margin: EdgeInsets.only(left: 35),
    //                       child: Text(
    //                         'Recharge Again',
    //                         style: TextStyle(
    //                             color: Colors.white,
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 20),
    //                       )),
    //                   Container(
    //                     margin: EdgeInsets.all(35),
    //                     child: Row(
    //                       children: [
    //                         Text(
    //                           'View all',
    //                           style: TextStyle(
    //                             color: Colors.amber,
    //                             fontSize: 21,
    //                           ),
    //                         ),
    //                         Icon(
    //                           Icons.chevron_right_rounded,
    //                           color: Colors.amber,
    //                           size: 27,
    //                         )
    //                       ],
    //                     ),
    //                   )
    //                 ],
    //               ),
    //               Container(
    //                 margin: EdgeInsets.all(10),
    //                 height: 110,
    //                 width: 110,
    //                 decoration: BoxDecoration(
    //                     shape: BoxShape.circle, color: Colors.white),
    //               ),
    //               Container(
    //                   margin: EdgeInsets.all(5),
    //                   child: Text(
    //                     'No Recent Recharge',
    //                     style: TextStyle(
    //                         color: Colors.white,
    //                         fontWeight: FontWeight.bold,
    //                         fontSize: 20),
    //                   )),
    //               Text(
    //                 'you havent purchased any',
    //                 style: TextStyle(color: Colors.white, fontSize: 15),
    //               ),
    //               Text(
    //                 'airtime recently',
    //                 style: TextStyle(color: Colors.white, fontSize: 15),
    //               ),
    //             ],
    //           ),
    //         )),
    //       ],
    //     ),
    //   ),
    // );
  }
}
