import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:training_final_project/screens/help/help_screen.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  int _currentStep = 1;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _nextStep() {
    setState(() {
      _currentStep++;
      if (_currentStep <= 4) {
        _animationController.forward(from: 0.0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Feedback"),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [ 
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return LinearProgressIndicator(
                  value: _animationController.value * (_currentStep - 1) /4,
                  backgroundColor: Colors.grey.shade700,
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.pink),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _currentStep == 1
                      ? ' 1/ 4'
                      : _currentStep == 2
                          ? '2/4'
                          : _currentStep == 3
                              ? ' 3/ 4'
                              : ' 4/ 4',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                _currentStep < 4
                  ?Text(
                  "I'll do it later",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ):SizedBox(),
              ],
            ),
           
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  if (_currentStep == 1) ...[
                    const SizedBox(height: 10.0),
                    const Text(
                      "Let's begin",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      '"Airtime Recharge is\n very easy"',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "Please select your feedback",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    _buildFeedbackCard(),
                  ] else if (_currentStep == 2) ...[
                    // Step 2 content
                    // ...
                    const SizedBox(height: 10.0),
                    const Text(
                      "Impressive!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      '"Bundle purchase is \nlike a cake walk"',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "Please select your feedback",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    _buildFeedbackCard(),
                  ] else if (_currentStep == 3) ...[
                    // Step 3 content
                    // ...
                    const SizedBox(height: 10.0),
                    const Text(
                      "Great, User",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      '"I received the best\ncustomer service"',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "Please select your feedback",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    _buildFeedbackCard(),
                  ] else if (_currentStep == 4) ...[
                    // Step 4 content
                    // ...
                    const SizedBox(height: 10.0),
                    const Text(
                      "Yay! One last thing",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      '"I\'d like to refer MTN\n to my friends"',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "Please select your feedback",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    _buildFeedbackCard(),
                    const SizedBox(height: 20.0),
                    Text(
                      'Additional feedback (optional)',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField()),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: Icon(
                              Icons.attach_file,
                              color: Colors.grey,
                            )),
                        const SizedBox(width: 10.0),
                        Text(
                          'Add Attachment',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HelpScreen()));
                  },
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 50, right: 50, top: 20, bottom: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink),
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeedbackCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10.0),
          // Rating field here
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),

          const SizedBox(height: 20.0),
          _currentStep < 4
              ? ElevatedButton(
                  onPressed: _nextStep,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(color: Colors.black),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
