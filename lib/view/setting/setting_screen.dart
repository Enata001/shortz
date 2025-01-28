import 'package:shortz/custom_view/app_bar_custom.dart';
import 'package:shortz/languages/languages_keys.dart';
import 'package:shortz/view/setting/widget/setting_center_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [AppBarCustom(title: LKey.settings.tr), SettingCenterArea()],
      ),
    );
  }
}
