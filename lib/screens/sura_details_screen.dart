import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/constants/const.dart';
import 'package:islami_app/models/sura_details_model.dart';
import 'package:islami_app/components/custom_appbar.dart';
import 'package:islami_app/components/item_sura_content.dart';

class SuraDetailsScreen extends StatefulWidget {
   SuraDetailsScreen({super.key});
  
   static String id = 'SuraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsModel;
    if(verses.isEmpty){
      loadFiles(args.index);
    }
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/sura__details_background.png') , fit: BoxFit.fill),
      ),
      child: Column(
        children: [
          SizedBox(height: 20,),
          CustomAppbar(title: args.suraErName,),
          Text(args.suraArName , style:  TextStyle(color:kPrimaryColor, fontSize: 20),),
          Expanded(
            child:
            verses.isEmpty ? CircularProgressIndicator():
             ListView.builder(
              
              itemCount: verses.length,
              itemBuilder: (context , index){
              return ItemSuraContent(content: verses[index], index: index,);
            
            }),
          )

        ],
      ),
    ),
    );
  }

  void loadFiles(int index) async{
    String content =await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {
      
    });
  }
}