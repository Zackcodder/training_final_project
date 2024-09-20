// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Managenumberspage extends StatefulWidget {
  const Managenumberspage({super.key});

  @override
  State<Managenumberspage> createState() => _ManagenumberspageState();
}

class _ManagenumberspageState extends State<Managenumberspage> {
  bool _displaycontent1 = true;
  bool _displaycontent2 = false;
//
  bool _whenclicked1 = true;
  bool _whenclicked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Manage numbers',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
// first role
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 8),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _displaycontent1 = true;
                        _displaycontent2 = false;
                        //
                        _whenclicked1 = !_whenclicked1;
                        _whenclicked2 = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(60)),
                      child: Center(
                        child: Text(
                          'Added Numbers',
                          style: TextStyle(
                            color: _whenclicked1 ? Colors.white : Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _displaycontent1 = false;
                        _displaycontent2 = true;

                        //
                        _whenclicked1 = false;
                        _whenclicked2 = !_whenclicked2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(60)),
                      child: Center(
                        child: Text(
                          'Beneficiaries',
                          style: TextStyle(
                            color: _whenclicked2 ? Colors.white : Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
//icons
            _displaycontent1
                ? Expanded(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 70),
                          child: Center(
                            child: Image.asset(
                              'images/casual.png',
                              height: 200,
                            ),
                          ),
                        ),
//oh oh text role
                        Text(
                          'Oh Oh! No added number has been added Thank',
                          style: TextStyle(color: Colors.grey),
                        ),
// you text role
                        Text(
                          'you.',
                          style: TextStyle(color: Colors.grey),
                        ),
// icon role
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        color: Colors.yellow,
                                        Icons.quick_contacts_dialer,
                                        size: 19,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )

//BENEFICIARIES SECTION
                : _displaycontent2
                    ? Expanded(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 22),
                              child: Row(
                                
                                children: [Text('Your beneficiaries (0)',style: TextStyle(color: Colors.white),)],),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 70),
                              child: Center(
                                child: Image.asset(
                                  'images/casual.png',
                                  height: 200,
                                ),
                              ),
                            ),
//oh oh text role
                            Text(
                              'NO beneficiary added',
                              style: TextStyle(color: Colors.grey),
                            ),
// you text role
                            Text(
                              'Tap on below icon to add',
                              style: TextStyle(color: Colors.grey),
                            ),
// icon role
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          color: Colors.black,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            color: Colors.yellow,
                                            Icons.quick_contacts_dialer,
                                            size: 19,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        shape: CircleBorder(),
        mini: true,
      ),
    );
  }
}
