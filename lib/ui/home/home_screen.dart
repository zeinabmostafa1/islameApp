import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider/settings_provider.dart';
import 'package:islami/ui/home/tabs/hadeth/hadeth.dart';
import 'package:islami/ui/home/tabs/quran/quraan.dart';
import 'package:islami/ui/home/tabs/radio/radio.dart';
import 'package:islami/ui/home/tabs/settings/settings.dart';
import 'package:islami/ui/home/tabs/tasbeh/tasbeh.dart';
import 'package:islami/utils/image_path.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
            image: AssetImage(getImagePathByName(imageName: provider.getBackgroundImageName()))),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).colorScheme.secondary,
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState((){});
            },
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(getImagePathByName(imageName:'icon_quran.png'))), label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(getImagePathByName(imageName:'icon_hadeth.png'))), label: AppLocalizations.of(context)!.hadith),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(getImagePathByName(imageName:'icon_sebha.png'))), label: AppLocalizations.of(context)!.tasbeh),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(getImagePathByName(imageName:'icon_radio.png'))), label: AppLocalizations.of(context)!.radio),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: AppLocalizations.of(context)!.setting),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}

List<Widget> tabs = [
  QuranTab(),
  HadethTab(),
  TasbehTab(),
  RadioTab(),
  SettingsTab(),
];
