import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';
import 'package:islami_app/constants/image_name.dart';

class SuraContainer extends StatelessWidget {
  const SuraContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: 283,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kPrimaryColor,
          ),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Alanbia' , style: TextStyle(fontSize: 16),),
                Text('الانبياء' ,style: TextStyle(fontSize: 16),),
                Text('112views', style: TextStyle(fontSize: 16),),
              ],),
              Spacer(),
              Image.asset(suraLogo),
              
            ],
          ),
        ),
      ],
    );
  }
}