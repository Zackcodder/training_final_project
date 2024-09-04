import 'package:flutter/material.dart';

class Faqscreen extends StatefulWidget {
  const Faqscreen({super.key});

  @override
  State<Faqscreen> createState() => _FaqscreenState();
}

class _FaqscreenState extends State<Faqscreen> {
   bool _isContent1 = true;
  bool _isContent2 = false;

  bool _isButton1Clicked = true;
  bool _isButton2Clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Frequently Asked Questions',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          //search
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.grey),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Text('Search frequently asked questions')
              ],
            ),
          ),



          ///Options
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isContent1 = true;
                    _isContent2 = false;

                    _isButton1Clicked = !_isButton1Clicked;
                    _isButton2Clicked = false;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: _isButton1Clicked ? Colors.pink : Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(10),
                  child: const Text('How to videos',
                      style: TextStyle(color: Colors.white)),
                ),
              ),

              //data
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isContent1 = false;
                    _isContent2 = true;

                    _isButton1Clicked = false;
                    _isButton2Clicked = !_isButton2Clicked;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: _isButton2Clicked ? Colors.pink : Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.all(10),
                  child: const Text('Data',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
        _isContent1?
         Expanded(
          child: ListView(
            children: [
              //netflix
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only( bottom: 5),
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How to Manage your Data on Netflix App',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            //netflix web
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only( bottom: 5),
             color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How to Manage your Data on Netflix Web',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            //xtratime
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only( bottom: 5),
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How to Check your XtraTime/XtraByte Eligibility',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            //app security
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 5),
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'App Security',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            //sim lock
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 5,),
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How to Activate SIM Lock to prevent SIM Fraud',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            ],
          ),
         )
        :_isContent2?
        Column()
        : Container()

        ],
      ),
    );
  }
}
