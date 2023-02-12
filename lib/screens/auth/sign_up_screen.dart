import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:15.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
           const SizedBox(height:80,),
           const Text('Create an Account',style:TextStyle(
            fontSize:25,
            fontWeight:FontWeight.w700,
           ),),
           const SizedBox(
            height:30,
           ),
           const Text('EMAIL',style:TextStyle(fontSize:17),),
           const SizedBox(height:10,),
           TextFormField(
            decoration:InputDecoration(
              contentPadding:const EdgeInsets.all(23),
              filled:true,
              fillColor:Colors.grey.shade200,
              prefixIcon:const Icon(Icons.mail,color: Color(0XFF3430CA),),
              enabledBorder:OutlineInputBorder(
                borderRadius:BorderRadius.circular(10),
                borderSide:const BorderSide(
                  color:Colors.transparent,
                ),
              ),
              focusedBorder:OutlineInputBorder(
                borderRadius:BorderRadius.circular(15),
                borderSide:const BorderSide(
                  color: Color(0XFF3430CA),
                ),
              ),
              hintText:'xyz@gmail.com'
            ),
           )
          ],
          ),
        ),
      ),
    );
  }
}