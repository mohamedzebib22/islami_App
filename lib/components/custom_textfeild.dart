import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';
import 'package:islami_app/constants/image_name.dart';

class CustomTextfeild extends StatelessWidget {
   CustomTextfeild({super.key , required this.onChanged});
  Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      style: TextStyle(color:kPrimaryColor),
      
      decoration: InputDecoration(
        hintText: 'Sura Name',
        hintStyle: TextStyle(color: kWhiteColor ,fontSize: 18),
        prefixIcon: Image.asset(searchIcon),
        border: decorationStyle(),
        enabledBorder: decorationStyle(),
        focusedBorder: decorationStyle()
      ),
    );
  }

  OutlineInputBorder decorationStyle() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          width: 2,
          color: kPrimaryColor
        )
      );
  }
}

