import 'package:flutter/material.dart';

class ViewPlanDetails extends StatelessWidget {
  const ViewPlanDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: ListView(
        children: [
          // name, cancle button and logo
          Container(
            margin: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///avater n user name
                const Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Text('H'),
                      ),
                    ),
                    Text(
                      'Hawau',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 150,
                ),
      
                ///cancle button and logo
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // robot icon
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          color: Colors.yellow,
                          Icons.quick_contacts_dialer,
                          size: 18,
                        ),
                      ),
                    ),
                    // X icon
                    IconButton(
                      icon: const Icon(Icons.clear),
                      iconSize: 35,
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
      
          ///body of screen
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(30)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // prepaid,mtn and extra specail
                Container(
                  padding: const EdgeInsets.only(right: 15, top: 10, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //prepaid
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.save_outlined,
                                color: Colors.grey[600],
                                size: 17,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text('Prepaid',
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          Text('0906 557 5428',
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 13)),
                        ],
                      ),
                
                      ///mtn logo, text and icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //mtn
                          Container(
                            width: 40,
                            height: 25,
                            margin: const EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(60)),
                            child: const Center(
                                child: Text(
                              'VDT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                
                          // xtra special
                          const Text(
                            'Xtra special',
                            style: TextStyle(
                                color: Colors.amber, fontSize: 14),
                          ),
                          //chevron icon
                          IconButton(
                            icon: const Icon(Icons.chevron_right),
                            color: Colors.amber,
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                //divider
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                // data,airtime,other balance
                Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Data',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Airtime',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Other balances',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              //divider
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                //data balace & 4.4gb
                Container(
                  margin: const EdgeInsets.only(
                      left: 15, right: 15, top: 8, bottom: 8),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    //data balance
                      const Row(
                        children: [
                          Icon(
                            Icons.arrow_downward,
                            size: 15,
                          ),
                          Icon(
                            Icons.arrow_upward,
                            size: 15,
                          ),
                          Text(
                            'Data balance',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                //4.4gb left
                      Container(
                        margin: const EdgeInsets.only(left: 30),
                        child: const Text(
                          '4.4gb left',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                // auto renew status
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Auto renew status',
                      style: TextStyle(color: Colors.amber),
                    ),
                    IconButton(
                      icon: const Icon(Icons.chevron_right),
                      color: Colors.amber,
                      onPressed: () {},
                    ),
                  ],
                ),
                 //5gb xtraspecail
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(
                      left: 15, right: 15, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('5GB XtraSpecial Bundle',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          const Text(
                            '4.4 GB left',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Expires on',
                            style: TextStyle(color: Colors.grey[800]),
                          ),
                        ],
                      ),
                      const Text('04 Sep 2024',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                  //divder
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                    // you can also
                Container(
                  margin: const EdgeInsets.only(top: 5, left: 10),
                  child: const Text(
                    'You can also',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                  //buy bundle/and other role
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                // buy bundle
                      Column(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Icon(Icons.gas_meter_outlined),
                            ),
                          ),
                          Text('Buy Bundle',
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 13))
                        ],
                      ),
                // transaction history
                      Column(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            margin: const EdgeInsets.only(top: 16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Icon(Icons.list_alt_sharp),
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'Transaction \nhistory',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13))
                        ],
                      ),
                //share data
                      Column(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Icon(Icons.gas_meter_outlined),
                            ),
                          ),
                          Text('Share data',
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 13))
                        ],
                      ),
                //borrow
                      Column(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Icon(Icons.gas_meter_outlined),
                            ),
                          ),
                          Text('Borrow',
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 13))
                        ],
                      ),
                    ],
                  ),
                ),
                  //manage sub
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            margin: const EdgeInsets.only(top: 16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Icon(Icons.play_circle_outline),
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'Manage \nsubsription',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}