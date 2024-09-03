import 'package:flutter/material.dart';
import 'package:training_final_project/screens/more_screen.dart';

class Usagehistorypage extends StatelessWidget {
  const Usagehistorypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
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
          'Usage History',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
// first role
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(child: Text('H')),
                      ),
                      Text(
                        'Hawau',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
// call sms data role
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(40)),
                    child: const Center(child: Text('Calls')),
                  ),
                  Text(
                    'SMS',
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      'Data',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
// todays usage role
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today's usage",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(40)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          color: Colors.white,
                          size: 12,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Today',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Colors.amber,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
//0 calls role
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 8),
                    child: Row(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.indigo[300],
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                              child: Icon(
                            color: Colors.black,
                            Icons.phone_in_talk_outlined,
                            size: 16,
                          )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '# 0',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                  ),

//divder
                  Container(
                    color: const Color.fromARGB(255, 194, 177, 177),
                    width: 2,
                    height: 30,
                  ),

                  Text(
                    '0 Calls',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Icon(
                    size: 30,
                    Icons.share_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
// detailes role
            Row(
              children: [
                Text(
                  'Detailed usage',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
// last role
            Expanded(
              child: Container(
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
