import 'package:flutter/material.dart';
import 'package:islami/ui/home/tabs/quran/quran_details/quraan_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SuraTitleWidget extends StatelessWidget {
  String suraTitle;
  String numOfVerses;
  int index;
  SuraTitleWidget({required this.suraTitle, required this.numOfVerses, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(
          context, QuranDetailsScreen.routeName,
        arguments: SuraArguments(
            suraTitle: suraTitle,
            index: index),
        );
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(suraTitle,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            Container(
              width: 2,
              color: Theme.of(context).dividerColor,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(numOfVerses,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuraArguments{
  String suraTitle;
  int index;

SuraArguments ({required this.suraTitle, required this.index});
}
