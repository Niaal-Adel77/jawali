import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controller/settings_controller.dart';

class SettingsPage extends StatelessWidget {
  final controller = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(221, 65, 65, 65),
        appBar: AppBar(
          title: Text('settings'.tr),
          backgroundColor: const Color.fromARGB(221, 68, 68, 68),
        ),

        body: ListView(
          children: [
            const SizedBox(height: 16),

            // قسم اللغة
            ListTile(
              leading: const Icon(Icons.language),
              title: Text('language'.tr),
              subtitle: Text(controller.currentLanguageName),
              onTap: () {
                _showLanguageBottomSheet();
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showLanguageBottomSheet() {
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('العربية'),
              onTap: () {
                controller.changeLanguage('ar');
                Get.back();
              },
            ),
            ListTile(
              title: const Text('English'),
              onTap: () {
                controller.changeLanguage('en');
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
