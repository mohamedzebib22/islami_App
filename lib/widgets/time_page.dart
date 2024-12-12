import 'package:flutter/material.dart';
import 'package:islami_app/components/azkar_card.dart';
import 'package:islami_app/components/prayer_time.dart';
import 'package:islami_app/constants/const.dart';

class TimePage extends StatelessWidget {
  const TimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          
          Image.asset('assets/images/islami_logo.png',height: 120,),
          PrayerTime(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 20),
            child: Text('Azkar' , style: TextStyle(color: kWhiteColor, fontSize: 16),),
          ),
          Row(
            children: [
              AzkarCard(image: 'assets/images/evening_image.png', text: 'Evening Azkar'),
              AzkarCard(image: 'assets/images/morning_image.png', text: 'Morning Azkar'),
            ],
          )
        ],
      )

      );
  }
}