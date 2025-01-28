import 'dart:io';

import 'package:shortz/modal/setting/setting.dart';
import 'package:shortz/utils/app_res.dart';
import 'package:shortz/utils/firebase_res.dart';
import 'package:shortz/utils/session_manager.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class CommonFun {
  static Future<void> interstitialAd(
      Function(InterstitialAd ad) onAdLoaded) async {
    SessionManager sessionManager = SessionManager();
    await sessionManager.initPref();
    SettingData? settingData = sessionManager.getSetting()?.data;
    InterstitialAd.load(
      adUnitId: Platform.isIOS
          ? "${settingData?.admobIntIos}"
          : "${settingData?.admobInt}",
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: onAdLoaded,
        onAdFailedToLoad: (LoadAdError error) {
          print('onAdFailedToLoad');
        },
      ),
    );
  }

  static String getLastMsg({required String type, required String message}) {
    return type == FirebaseRes.image
        ? AppRes.imageMessage
        : type == FirebaseRes.video
            ? AppRes.videoMessage
            : message;
  }
}
