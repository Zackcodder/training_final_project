import 'package:flutter/material.dart';

class MegaDealScreen extends StatelessWidget {
  const MegaDealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          color: Colors.white,
          onPressed: () {},
        ),
        title: const Text(
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
          const SizedBox(
            width: 10,
          )
        ],
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            //GEt 24gb container
            Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 6),
                          child: const Text(
                            'Data4ME',
                            style: TextStyle(color: Colors.white),
                          )),
                      const Text(
                        'Get 24GB + 25',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                          margin: const EdgeInsets.only(bottom: 6),
                          child: const Text(
                            'voice mins for ...',
                            style: TextStyle(color: Colors.white),
                          )),
                      Container(
                        padding: const EdgeInsets.all(6),
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
                  const SizedBox(
                    width: 100,
                  ),
                  Image.asset(
                    'assets/egg.png',
                    height: 90,
                  ),
                ],
              ),
            ),
            // GET 15GB contaner
            Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 6),
                          child: const Text(
                            'Data4ME',
                            style: TextStyle(color: Colors.white),
                          )),
                      const Text(
                        'Get 15GB + 20',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                          margin: const EdgeInsets.only(bottom: 6),
                          child: const Text(
                            'voice mins for ...',
                            style: TextStyle(color: Colors.white),
                          )),
                      Container(
                        padding: const EdgeInsets.all(6),
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
                  const SizedBox(
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
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.lightGreen[800],
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 6),
                          child: const Text(
                            'Combo4ME',
                            style: TextStyle(color: Colors.white),
                          )),
                      const Text(
                        'Get 40GB and',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                          margin: const EdgeInsets.only(bottom: 6),
                          child: const Text(
                            '350 voice mins ..',
                            style: TextStyle(color: Colors.white),
                          )),
                      Container(
                        padding: const EdgeInsets.all(6),
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
                  const SizedBox(
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
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.lightBlue[300],
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 6),
                          child: const Text(
                            'Combo4ME',
                            style: TextStyle(color: Colors.white),
                          )),
                      const Text(
                        'Get 25GB and',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                          margin: const EdgeInsets.only(bottom: 6),
                          child: const Text(
                            '250 voice mins ..',
                            style: TextStyle(color: Colors.white),
                          )),
                      Container(
                        padding: const EdgeInsets.all(6),
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
                  const SizedBox(
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