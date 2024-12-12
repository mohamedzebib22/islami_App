import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/models/hadeth_model.dart';
import 'package:islami_app/components/hadeth_item.dart';

class HadethPage extends StatefulWidget {
  const HadethPage({super.key});

  @override
  State<HadethPage> createState() => _HadethPageState();
}

class _HadethPageState extends State<HadethPage> { 
  List<HadethModel> hadethList =[];
  @override
  Widget build(BuildContext context) {
    if(hadethList.isEmpty){
      readHadeth();
    }
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/islami_logo.png'),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
            itemCount: hadethList.length,
            itemBuilder: (context , index){
            return hadethList.isEmpty ? Center(child: CircularProgressIndicator()):

            HadethItem(title: hadethList[index].title, content: hadethList[index].content.join('\n'));
            
                    
                  }),
          )
        ],
      )
    );
  }

  void readHadeth() async{
    for(int i=1;i<=50;i++){
      var hadeth =await rootBundle.loadString('assets/hadeth/h$i.txt');
      List<String> hadethLines=hadeth.split('\n');
      String title=hadethLines[0];
      hadethLines.removeAt(0);
      HadethModel hadethModel = HadethModel(title: title, content: hadethLines);
      hadethList.add(hadethModel);
      setState(() {
        
      });
      
    }
  }
}

