import 'package:flutter/material.dart';
import 'package:islami/style/theme_data.dart';
import 'package:islami/utils/image_path.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  double angle = 0;
  List<String> azkar = [
    'سبحان الله',
    'الحمد الله',
    'لا إله إلا الله',
    'الله أكبر',
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
       Stack(
         alignment: Alignment.topCenter,
         children: [
           Image.asset(getImagePathByName(imageName: 'head_sebha_logo.png')),
           Padding(
             padding: const EdgeInsets.only(top: 75.0),
             child: Transform.rotate(
               angle: angle,
               child: GestureDetector(
                   onTap: (){
                     onTap();
                   },
                   child: Image.asset(getImagePathByName(imageName: 'body_sebha_logo.png'))),
             ),
           ),
         ],
       ),
        Padding(
          padding: const EdgeInsets.only(top: 27),
          child: Text('عدد التسبيحات', textAlign: TextAlign.center, style: TextStyle(fontSize: 22),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).primaryColor,
              ),
              child: Text('$counter', style: TextStyle(fontSize: 18),),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).primaryColor,
              ),
              child: Text('${azkar[index]}', style: TextStyle(fontSize: 18),),
            ),
          ),
        ),
      ],
    );
  }
  onTap(){
    counter++;
    if(counter % 33 == 0 ){
      index++;
      counter = 0;
    }
    if(index == azkar.length){
      index = 0;
    }
    angle += 360/4;
    setState(() {

    });
  }
}