import 'package:flutter/material.dart';

class MegaDealScreen extends StatefulWidget {
  const MegaDealScreen({super.key});

  @override
  State<MegaDealScreen> createState() => _MegaDealScreenState();
}

class _MegaDealScreenState extends State<MegaDealScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          'Mega deal zone',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
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
          SizedBox(
            width: 10,
          )
        ],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
//GEt 24gb container
            Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 6),
                          child: Text(
                            'Data4ME',
                            style: TextStyle(color: Colors.white),
                          )),
                      Text(
                        'Get 24GB + 25',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                          margin: EdgeInsets.only(bottom: 6),
                          child: Text(
                            'voice mins for ...',
                            style: TextStyle(color: Colors.white),
                          )),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                            child: Text(
                          'Crack the egg',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Image.asset(
                    'images/red.png',
                    height: 90,
                  ),
                ],
              ),
            ),
// GET 15GB contaner
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 6),
                          child: Text(
                            'Data4ME',
                            style: TextStyle(color: Colors.white),
                          )),
                      Text(
                        'Get 15GB + 20',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                          margin: EdgeInsets.only(bottom: 6),
                          child: Text(
                            'voice mins for ...',
                            style: TextStyle(color: Colors.white),
                          )),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                            child: Text(
                          'Crack the egg',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Image.asset(
                    'images/pinkegg.png',
                    height: 108,
                  ),
                ],
              ),
            ),
// Comboforme get 40Gb
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.lightGreen[800],
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 6),
                          child: Text(
                            'Combo4ME',
                            style: TextStyle(color: Colors.white),
                          )),
                      Text(
                        'Get 40GB and',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                          margin: EdgeInsets.only(bottom: 6),
                          child: Text(
                            '350 voice mins ..',
                            style: TextStyle(color: Colors.white),
                          )),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                            child: Text(
                          'Crack the egg',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Image.asset(
                    'images/blueegg.png',
                    height: 108,
                  ),
                ],
              ),
            ),
//comboforu get25gb
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.lightBlue[300],
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 6),
                          child: Text(
                            'Combo4ME',
                            style: TextStyle(color: Colors.white),
                          )),
                      Text(
                        'Get 25GB and',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                          margin: EdgeInsets.only(bottom: 6),
                          child: Text(
                            '250 voice mins ..',
                            style: TextStyle(color: Colors.white),
                          )),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                            child: Text(
                          'Crack the egg',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Image.asset(
                    'images/orangeegg.png',
                    height: 112,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
