import 'package:flutter/material.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  OfferScreenState createState() => OfferScreenState();
}

class OfferScreenState extends State<OfferScreen> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToEnd() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Mega deal zone (6)',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                GestureDetector(
                  onTap: _scrollToEnd,
                  child: const Row(
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(color: Colors.yellow, fontSize: 18),
                      ),
                       SizedBox(width: 8), // Add spacing between text and icon
                        Icon(Icons.arrow_forward, color: Colors.yellow),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 250,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: _scrollController,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(10),
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(18.0), // Added border radius
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Data4ME',
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              const SizedBox(height: 7),
                              const Text(
                                'Get 24GB + 25',
                                style: TextStyle(color: Colors.white, fontSize: 17),
                              ),
                              const Text(
                                'voice mins for',
                                style: TextStyle(color: Colors.white, fontSize: 17),
                              ),
                              const Text(
                                'N4,000',
                                style: TextStyle(color: Colors.white, fontSize: 17),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(8.0), // Added border radius for inner container
                                ),
                                child: const Text(
                                  'Crack the egg',
                                  style: TextStyle(color: Colors.black, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          'images/egg.png',
                          width: 130, // Set image width
                          height: 150, // Set image height
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(10),
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(18.0), // Added border radius
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Data4ME',
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              const SizedBox(height: 7),
                              const Text(
                                'Get 24GB + 25',
                                style: TextStyle(color: Colors.white, fontSize: 17),
                              ),
                              const Text(
                                'voice mins for',
                                style: TextStyle(color: Colors.white, fontSize: 17),
                              ),
                              const Text(
                                'N4,000',
                                style: TextStyle(color: Colors.white, fontSize: 17),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(8.0), // Added border radius for inner container
                                ),
                                child: const Text(
                                  'Crack the egg',
                                  style: TextStyle(color: Colors.black, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          'images/egg.png',
                          width: 130, // Set image width
                          height: 150, // Set image height
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  // Add more containers as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
