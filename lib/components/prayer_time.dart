import 'package:flutter/material.dart';
import 'package:islami_app/components/times_details_head.dart';
import 'package:islami_app/constants/const.dart';

class PrayerTime extends StatelessWidget {
  const PrayerTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: 390,
      height: 301,
      child: Stack(
        children: [
          
          Image.asset('assets/images/back_time.png',fit: BoxFit.fill,),
          Image.asset('assets/images/background_time_card.png',fit: BoxFit.fill,),

          TimeDetailsHead(),
        ],
      ),
    );
  }
}