import 'package:flutter/material.dart';
import 'package:islami_app/components/radio_and_reciters.dart';
import 'package:islami_app/components/radio_item.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/islami_logo.png'),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              RadioAndReciters(title: 'Radio'),
              SizedBox(width: 1,),
              RadioAndReciters(title: 'Reciters'),
            ],),
          ),
          
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 20,
              itemBuilder: (context , index){
              return RadioItem();
            }),
          )
          

        ],
      ) 
    );
  }
}