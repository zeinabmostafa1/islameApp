import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranDetailsProvider extends ChangeNotifier{
  List<String> quran = [];

  void loadFiles (int index) async{
    String fileContent =
      await rootBundle.loadString('assets/quran_files/${index+1}.txt');
    List <String> suraLines = fileContent.split('\n');
    quran = suraLines;
    notifyListeners();
  }
}