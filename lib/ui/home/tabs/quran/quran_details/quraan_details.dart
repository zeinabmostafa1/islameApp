import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/providers/quran_details_provider.dart';
import 'package:islami/providers/settings_provider/settings_provider.dart';
import 'package:islami/ui/home/tabs/quran/quran_details/verse_widget.dart';
import 'package:islami/ui/home/tabs/quran/sura_title_widget.dart';
import 'package:islami/utils/image_path.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


class QuranDetailsScreen extends StatefulWidget {
 static const String routeName = '/quran_details';

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
 List <String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var quranDetailsProvider = Provider.of<QuranDetailsProvider>(context);

    SuraArguments arguments =
      ModalRoute.of(context)?.settings.arguments as SuraArguments;
    quranDetailsProvider.loadFiles(arguments.index);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(getImagePathByName(imageName: provider.getBackgroundImageName())))
    ),
      child: Scaffold(
       appBar: AppBar(
         title: Text(arguments.suraTitle,),
       ),
        body: quranDetailsProvider.quran.isEmpty ?
        Center(
          child: CircularProgressIndicator()) :
            Card(
              child: ListView.separated(
                  itemBuilder: (context, index) => VerseWidget(
                      verse: quranDetailsProvider.quran[index]),
                  separatorBuilder: (context, index) => Container(
                    color: Theme.of(context).dividerColor,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 22),
                  ),
                  itemCount: quranDetailsProvider.quran.length),
            )
      ),
    );
  }

  // void loadFiles (int index) async{
  //  String fileContent = await rootBundle.loadString('assets/quran_files/${index+1}.txt');
  //  List <String> suraLines = fileContent.split('\n');
  //  verses = suraLines;
  //
  //  setState(() {
  //
  //  });
  // }
}

