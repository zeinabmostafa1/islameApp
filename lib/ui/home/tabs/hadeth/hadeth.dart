import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/home/tabs/hadeth/hadith_title_widget.dart';
import 'package:islami/utils/image_path.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HadethTab extends StatefulWidget {
   HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadithItem> hadithList = [];

  @override
  Widget build(BuildContext context) {
    if(hadithList.isEmpty) {
      loadHadethFile();
    }
    return Container(
      child: hadithList.isEmpty ? Center(child: CircularProgressIndicator(),) :

      Column(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(getImagePathByName(imageName: 'hadeth_logo.png'))),
          Expanded(
            flex: 3,
            child: ListView.separated(
                itemBuilder: (context, index) => HadithTitleWidget(hadithItem: hadithList[index],),
                separatorBuilder: (context, index) => Container(
                  width: double.infinity,
                  height: 2,
                  color: Theme.of(context).dividerColor,
                  margin: EdgeInsets.symmetric(horizontal: 28),
                ),
                itemCount: hadithList.length),
          )
        ],
      ),
    );
  }

  void loadHadethFile() async{
    String fileContent = await rootBundle.loadString('assets/ahadeth_file/ahadeth.txt');
    var allAhadeth = fileContent.split('#');
    for (int i = 0; i < allAhadeth.length;i++){
      List<String> hadithLines = allAhadeth[i].trim().split('\n');
      String hadithTitle = hadithLines[0];
      hadithLines.removeAt(0);
      hadithLines.join('\n');
      String hadithContent = hadithLines.join('\n');

      HadithItem hadithItem = HadithItem(title: hadithTitle, content: hadithContent);
      hadithList.add(hadithItem);
    }
    setState(() {

    });
  }
}

class HadithItem{
  String title;
  String content;
  HadithItem({required this.title, required this.content});
}
