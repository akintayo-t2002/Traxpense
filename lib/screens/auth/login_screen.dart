

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:15.0),
        child: SafeArea(
          child: Column(
            children:[
           SizedBox(height:30,),
           Text('Create an Account',style:TextStyle(
            fontSize:25,
            fontWeight:FontWeight.w700,
           ),)
            ],
          ),
        ),
      ),
    );
  }
}