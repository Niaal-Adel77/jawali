import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SettingsController extends GetxController {
  var currentLang = 'ar'.obs;

  String get currentLanguageName {
    return currentLang.value == 'ar' ? 'العربية' : 'English';
  }

  void changeLanguage(String langCode) {
    currentLang.value = langCode;
    Get.updateLocale(Locale(langCode));
  }

  @override
  void onInit() {
    currentLang.value = Get.locale?.languageCode ?? 'ar';
    super.onInit();
  }
}