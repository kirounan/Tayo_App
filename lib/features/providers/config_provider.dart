import 'package:flutter/material.dart';

import '../../core/utils/strings.dart';

class ConfigProvider extends ChangeNotifier {
  String newChurch = AppStrings.church;

  Future<void> changeLanguage(String churchName) async {
    if (churchName == newChurch) {
      return;
    } else {
      newChurch = churchName;
    }
    notifyListeners();
  }
}
