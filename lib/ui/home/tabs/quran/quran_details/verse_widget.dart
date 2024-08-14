import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class VerseWidget extends StatelessWidget {
  String verse;

  VerseWidget ({required this.verse});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      alignment: Alignment.center,
      child: Text(verse,textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
