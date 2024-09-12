import 'package:flutter/material.dart';

class TrackComplaintScreen extends StatelessWidget {
  const TrackComplaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Track Complaint'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          ///textfield
          Center(
            child: Container(
              margin: const EdgeInsets.only(right: 10, left: 10),
              height: 50.0,
              child: TextField(
                onChanged: ((value) {}),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(top: 2),
                  hintText: 'Enter Complaint ID: 123456789',
                  hintStyle: TextStyle(color: Colors.grey,),
                 suffixIcon: Icon(Icons.search,
                    size: 30.0,
                    color: Colors.grey,),
                ),
              ),
            ),
          ),
          Container(
            margin:EdgeInsets.all(20) ,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),

            child: Text('Enter your complaint ID to know the\nstatus of your complaint'),
          ),
        ],
      ),
    );
  }
}