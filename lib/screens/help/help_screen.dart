import 'package:flutter/material.dart';
import 'package:training_final_project/screens/help/contact_screen.dart';
import 'package:training_final_project/screens/help/faqscreen.dart';
import 'package:training_final_project/screens/help/feedback_page.dart';
import 'package:training_final_project/screens/help/tips_screen.dart';
import 'package:training_final_project/screens/help/track_complaint_screen.dart';
import 'package:training_final_project/screens/help/transaction_history_screen.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 45, 45),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.chat_bubble,color: Colors.pink,),
                    Text(
                      'Hey Hawau,',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'How can we help you?',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Icon(
                  Icons.search,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.black),
            child: Column(
              children: [
                //tips
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TipsScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.lightbulb,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tips',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Watch how-to videos',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //transaction
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TransactionsHistoriesScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.text_snippet,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Transactions',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Check out all your transaction history',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //FAQs
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Faqscreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.question_answer,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Frequently asked Questions',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Get quick answers to all your questions',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //track complaint
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrackComplaintScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.pending_actions_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Track Complaint',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Know the status of your complaint',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //contact us
                GestureDetector(
                   onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContactScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone_in_talk_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact us',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Get in touch with us',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //foundation
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.handshake,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MTN Foundation',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'View projects and activities',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                //feedback
                GestureDetector(
                   onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FeedbackPage()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.thumb_up_sharp,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Feedback',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Share your feedback and help us serve you better',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}