import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';

class TimeCard extends StatelessWidget {
  const TimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      width: 86,
      height: 106,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 126, 110, 82),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Expanded(
            child: Text(
              'Asr',
              style: TextStyle(color: kWhiteColor, fontSize: 14),
            ),
          ),
          Expanded(
            child: Text(
              '04:38',
              style: TextStyle(color: kWhiteColor, fontSize: 20),
            ),
          ),
          Expanded(
            child: Text(
              'Pm',
              style: TextStyle(color: kWhiteColor, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
