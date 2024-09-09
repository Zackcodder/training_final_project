import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Contact us'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MTN stores near you',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Store locator',
                          style: TextStyle(color: Colors.pink),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.pink,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/images/googlemap.jpg',
              height: 150,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Text(
              'Chat with Zigi',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        'assets/images/messenger.jpg',
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        'assets/images/whatsapp.jpg',
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        'assets/images/telegram.jpg',
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            ),
            Text(
              'Corporate Address',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('MTN Plaza, Awolowo Road, Ikoyi\n101233, Lagos, Nigeria',style: TextStyle(color: Colors.white),),
                Icon(Icons.send, color: Colors.grey,)
              ],
            ),
            Divider(),
            Text('Follow us on',style: TextStyle(color: Colors.white),),
            Row(
              children: [
                 SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        'assets/images/facebook.jpg',
                        fit: BoxFit.cover,
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        'assets/images/x.jpg',
                        fit: BoxFit.cover,
                      )),
                       SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        'assets/images/instagram.jpg',
                        fit: BoxFit.cover,
                      )),
              ],
            ),
            Divider(),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.mail),
                  ),
                  Text('Write to us', style: TextStyle(color: Colors.white),),
                  Icon(Icons.arrow_forward,color: Colors.grey,)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.call_outlined),
                  ),
                  Text('300', style: TextStyle(color: Colors.white),),
                  Icon(Icons.arrow_forward,color: Colors.grey,)
                ],
              ),
            ),
            
            
        
          ],
        ),
      ),
    );
  }
}
