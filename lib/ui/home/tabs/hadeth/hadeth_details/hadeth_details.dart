import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider/settings_provider.dart';
import 'package:islami/ui/home/tabs/hadeth/hadeth.dart';
import 'package:islami/ui/home/tabs/hadeth/hadeth_details/hadeth_content_widget.dart';
import 'package:provider/provider.dart';

import '../../../../../utils/image_path.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = '/hadeth_details';
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);

     var hadithItem = ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(getImagePathByName(imageName: provider.getBackgroundImageName())))
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadithItem.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                child: Card(
                  child: HadethContentWidget(content: hadithItem.content),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
