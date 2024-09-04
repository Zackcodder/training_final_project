import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Contact us'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('MTN stores near you', style: TextStyle(color: Colors.white),),
              Container(
                child: Row(
                  children: [
                    Text('Store locator', style: TextStyle(color: Colors.pink),),
                    Icon(Icons.arrow_forward_ios, color: Colors.pink,)
                  ],
                ),
              )
            ],
          ),
          Image.asset('assets/images/googlemap.jpg',
          height: 150,
          width: MediaQuery.of(context).size.width, fit: BoxFit.cover,)
        ],
      ),
    );
  }
}