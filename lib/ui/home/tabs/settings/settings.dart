import 'package:flutter/material.dart';
import 'package:islami/ui/home/tabs/settings/language_bottom_sheet.dart';
import 'package:islami/ui/home/tabs/settings/theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.theme, style: Theme.of(context).textTheme.labelSmall,),

          InkWell(
            onTap: (){
              showThemeBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 18, horizontal: 6),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Theme.of(context).dividerColor, width: 3)
                ),
                child: Text(AppLocalizations.of(context)!.light, style: Theme.of(context).textTheme.labelSmall)),
          ),

          Text(AppLocalizations.of(context)!.language, style: Theme.of(context).textTheme.labelSmall),

          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 18, horizontal: 6),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Theme.of(context).dividerColor, width: 3)
                ),
                child: Text(AppLocalizations.of(context)!.arabic, style: Theme.of(context).textTheme.labelSmall)),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => ThemeBottomSheet(),);
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => LanguageBottomSheet(),);
  }
}
