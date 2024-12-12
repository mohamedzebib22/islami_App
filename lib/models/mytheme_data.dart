import 'package:flutter/material.dart';
import 'package:islami_app/constants/const.dart';

class MythemeData {

 static final ThemeData darkTheme = ThemeData(

    scaffoldBackgroundColor: Colors.transparent,

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: kWhiteColor,
          unselectedItemColor: kBlackColor,
          showSelectedLabels: true,
    )
    
  );

}