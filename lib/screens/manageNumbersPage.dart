import 'package:flutter/material.dart';
import 'package:training_final_project/screens/more_screen.dart';

class Managenumberspage extends StatelessWidget {
  const Managenumberspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        shape: CircleBorder(),
        mini: true,
      ),
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MoreScreen()),
            );
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
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(60)),
                    child: const Center(
                      child: Text(
                        'Added Numbers',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(60)),
                    child: const Center(
                      child: Text(
                        'Beneficiaries',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
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
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
