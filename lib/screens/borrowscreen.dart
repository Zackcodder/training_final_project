import 'package:flutter/material.dart';

class Borrowscreen extends StatefulWidget {
  const Borrowscreen({super.key});

  @override
  State<Borrowscreen> createState() => _BorrowscreenState();
}

class _BorrowscreenState extends State<Borrowscreen>
    with TickerProviderStateMixin {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 31, 31),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          'XtraTalk',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add a little Xtra!',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Use MTN borrow to keep moving',
              style: TextStyle(color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return Container(
                        width: 220,
                        height: 200,
                        decoration: BoxDecoration(
                          color: _animation.value == 0
                              ? Colors.transparent
                              : Colors.yellow,
                        ),
                        child: Column(
                          children: [
                            Text('Data'),
                            CircleAvatar(
                              child: Icon(Icons.send_to_mobile_rounded),
                            )
                          ],
                        ),
                      );
                    }),
                Container(
                  width: 220,
                  height: 200,
                  decoration: BoxDecoration(color: Colors.yellow),
                  child: Column(
                    children: [
                      Text('Airtime'),
                      CircleAvatar(
                        child: Icon(Icons.send_to_mobile_rounded),
                      )
                    ],
                  ),
                )
              ],
            ),
            Text(
              '*Oh Dear! Your prepaid balance needs to be less than\n N75 to qualify for an airtime loan.',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '* Our terms and conditions are activated when\nyou borrow airtime or data.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
