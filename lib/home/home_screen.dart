import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 50,),
        Container(
          height: 50,
          width: double.infinity,
          color: Colors.amber.withOpacity(0.6),
          child: Row(
            children: [
              Icon(Icons.info),
              Text('Please verify your email'),

            ],
          ),
        )
      ],
    ));
  }
}
