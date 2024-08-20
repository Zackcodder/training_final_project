import 'package:flutter/material.dart';

class BorrowScreen extends StatefulWidget {
  const BorrowScreen({super.key});

  @override
  State<BorrowScreen> createState() => _BorrowScreenState();
}

class _BorrowScreenState extends State<BorrowScreen>  with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 31, 31),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'VDT Talk',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add a little Xtra!',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const Text(
              'Use MTN borrow to keep moving',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            /// airtimen data container
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedBuilder(
                      animation: _animation,
                      builder: (context, child) {
                        return Expanded(
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: _animation.value == 0
                                  ? Colors.transparent
                                  : Colors.yellow,
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Data'),
                                CircleAvatar(
                                  child: Icon(Icons.send_to_mobile_rounded),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 200,
                      decoration: const BoxDecoration(color: Colors.yellow),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Airtime'),
                          CircleAvatar(
                            child: Icon(Icons.send_to_mobile_rounded),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Text(
              '*Oh Dear! Your prepaid balance needs to be less than\n N75 to qualify for an airtime loan.',
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 30,),
            const Text(
              '* Our terms and conditions are activated when\nyou borrow airtime or data.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}