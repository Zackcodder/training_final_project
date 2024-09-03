import 'package:flutter/material.dart';

class Managesubpage extends StatelessWidget {
  const Managesubpage({super.key});

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
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Manage subscriptions',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
// first role
            Container(
              margin: const EdgeInsets.only(
                  bottom: 25, left: 35, right: 35, top: 30),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(child: Text('H')),
                      ),
                      const Text(
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
// active bundle sub role
            Container(
              margin: const EdgeInsets.only(left: 28, right: 28, bottom: 15),
              child: const Row(
                children: [
                  const Text(
                    'Active bundle subscriptions',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
            ),
//5gb xtraspecial role
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(color: Colors.grey[700]),
              padding:
                  const EdgeInsets.only(left: 28, right: 28, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
// mtn container
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Container(
                        width: 40,
                        height: 25,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(60)),
                        child: const Center(
                          child: Text(
                            'MTN',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),

// 5gb xtraspecial
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '5GB Xtraspecial',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Expires on: 25 September 2024',
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ],
                  ),

//chevron icon
                  IconButton(
                    icon: const Icon(Icons.chevron_right),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
// quick action
            Container(
              margin: const EdgeInsets.only(left: 28, right: 28, top: 15),
              child: const Row(
                children: [
                  Text(
                    'Quick actions',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )
                ],
              ),
            ),
// buy bundle & home
            Container(
              margin: const EdgeInsets.only(left: 40, right: 35, top: 15),
              child: Row(
                children: [
//buy bundle
                  Column(
                    children: [
                      const Icon(
                        Icons.gas_meter_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        'Buy bundles',
                        style: TextStyle(color: Colors.grey[700]),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
//home
                  Column(
                    children: [
                      const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(color: Colors.grey[700]),
                      )
                    ],
                  ),
                ],
              ),
            ),
// last role
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 20),
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
