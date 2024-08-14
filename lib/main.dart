import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/providers/quran_details_provider.dart';
import 'package:islami/providers/settings_provider/settings_provider.dart';
import 'package:islami/style/theme_data.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'package:islami/splash_screen/splash.dart';
import 'package:islami/ui/home/tabs/hadeth/hadeth_details/hadeth_details.dart';
import 'package:islami/ui/home/tabs/quran/quran_details/quraan_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: MyApp()
  )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales: [
        Locale('en'), // English
        Locale('ar'),
      ],
      locale: Locale(provider.currentLang),

      routes: {
        SplashScreen.routeName : (_) => SplashScreen(),
        HomeScreen.routeName : (_) => HomeScreen(),
        QuranDetailsScreen.routeName : (_) => ChangeNotifierProvider(
            create: (context) => QuranDetailsProvider(),
        child: QuranDetailsScreen()),
        HadethDetailsScreen.routeName : (_) => HadethDetailsScreen(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.currentTheme,
    );
  }

}

