import 'package:flutter/material.dart';
import 'package:islami/ui/home/tabs/hadeth/hadeth_details/hadeth_details.dart';
import 'hadeth.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithTitleWidget extends StatelessWidget {
HadithItem hadithItem;
  HadithTitleWidget({super.key, required this.hadithItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
          arguments: hadithItem
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Text(hadithItem.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        )
        ,
      ),
    );
  }
}
