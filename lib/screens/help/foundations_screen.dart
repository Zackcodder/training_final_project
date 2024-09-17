import 'package:flutter/material.dart';

class FoundationsScreen extends StatelessWidget {
  const FoundationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Subscriptions details',
        ),
    ),
    body: Container(
      decoration: BoxDecoration(
        image:  DecorationImage(
              image: AssetImage('assets/images/background1.jpg'),
              fit: BoxFit.cover,
            )
      )
    ),
    );
  }
}