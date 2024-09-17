import 'package:flutter/material.dart';
import 'package:training_final_project/screens/help/help_screen.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  int _currentStep = 0;
  int _feelsStep = 0;

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

  // Mapping slider values to corresponding emojis, colors, and texts
  final List<String> _emojis = [
    "assets/gif/awful.gif", // Example paths for emoji gifs
    "assets/gif/fair.gif",
    "assets/gif/average.gif",
    "assets/gif/good.gif",
    "assets/gif/great.gif"
  ];

  final List<String> _texts = [
    "I'm feeling awful",
    "I'm feeling sad",
    "I'm feeling okay",
    "I'm feeling good",
    "I'm feeling great"
  ];

  final List<Color> _backgroundColors = [
    const Color.fromARGB(255, 177, 94, 94),
    const Color.fromARGB(255, 250, 137, 137),
    const Color.fromARGB(255, 194, 192, 60),
    Colors.lightGreen,
    Colors.green,
  ];

  final List<String> _feelings = ["POOR", "FAIR", "AVERAGE", "GOOD", "GREAT"];

  void _updateFeedback(double value) {
    setState(() {
      _feelsStep = value.toInt();
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
        child: ListView(
          children: [
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return LinearProgressIndicator(
                  value: _animationController.value * (_currentStep) / 3,
                  backgroundColor: Colors.grey.shade700,
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.pink),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _currentStep == 0
                      ? ' 1/ 4'
                      : _currentStep == 1
                          ? '2/4'
                          : _currentStep == 2
                              ? ' 3/ 4'
                              : ' 4/ 4',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                _currentStep < 4
                    ? const Text(
                        "I'll do it later",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  if (_currentStep == 0) ...[
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
                  ] else if (_currentStep == 1) ...[
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
                  ] else if (_currentStep == 2) ...[
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
                  ] else if (_currentStep == 3) ...[
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
                    const Text(
                      'Additional feedback (optional)',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField()),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: const Icon(
                              Icons.attach_file,
                              color: Colors.grey,
                            )),
                        const SizedBox(width: 10.0),
                        const Text(
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
                        padding: const EdgeInsets.only(
                            left: 50, right: 50, top: 20, bottom: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink),
                        child: const Text(
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
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: _backgroundColors[_feelsStep],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              _feelings[_feelsStep],
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 50,
              ),
            ),
          ),
          Positioned(
            top: 40,
            child: Image.asset(
              _emojis[_feelsStep],
              width: 60,
              height: 60,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 120),
            height: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey),
            child: Slider(
              value: _feelsStep.toDouble(),
              min: 0,
              max: 4,
              divisions: 4,
              activeColor: Colors.transparent,
              onChanged: (value) {
                _updateFeedback(value); // Update the slider value
              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_texts[_feelsStep]),
                    _currentStep < 4
                        ? GestureDetector(
                            onTap: _nextStep,
                            child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.greenAccent.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Center(
                                  child: Text(
                                'Next',
                                style: TextStyle(color: Colors.white),
                              )),
                            ))
                        : const SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
