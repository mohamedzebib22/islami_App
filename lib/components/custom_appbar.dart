import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';

class CustomAppbar extends StatelessWidget {
   CustomAppbar({super.key , required this.title});

  String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back ,  color: kPrimaryColor, size: 18,)),
        Spacer(flex: 2,),
        Text(title , style: TextStyle(color: kPrimaryColor , fontSize: 20 ,fontWeight: FontWeight.bold),),
        Spacer(flex: 3,),
      ],
    );
  }
}