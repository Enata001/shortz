# Shortzz

# Date: 23 January 2025

## Progress
### Implemented Features:

- **Error Handling**:
  - Fixed issues related to project and folder structure, ensuring compatibility and proper functioning of the application.
  - Fixed video_thumbnail package issue
  - Reorganized the project directories and resolved configuration mismatches to align with Flutter and Android requirements.

---

### Challenges
1. **Invalid or Missing Branch Key Error**:
  - Solution: Update the `AndroidManifest.xml` file with the correct Branch key from the Branch dashboard.

2. **Google Sign-In Error**:
  - Solution: Verify the OAuth 2.0 client ID in `google_services.json` and ensured SHA-1 fingerprints were correctly added to the Firebase project.

3. **`HandshakeException` for Self-Signed Certificates**:
  - Occurs during network requests, likely due to invalid or untrusted certificates.
  - Potential Solution: Implement custom certificate handling or update the server with trusted certificates.

---
# Building the application
  - To build the application, you have to comment out the package or make changes to the video thumbnail package.

## Modifying the Video Thumbnail Package

To integrate the `video_thumbnail` package into your project, you need to make the following modifications in the package directory:

The location should be something like this:
```
C:\Users\user\AppData\Local\Pub\Cache\hosted\pub.dev\video_thumbnail-0.5.3\
```

### 1. Update the Android Manifest File
1. Open the `AndroidManifest.xml` file located in the `src/main` folder.
2. Remove the `package` attribute so that the file looks like this:
   ```xml
   <manifest xmlns:android="http://schemas.android.com/apk/res/android">
       <!-- other manifest content -->
   </manifest>
   ```

### 2. Add a Namespace to `build.gradle`
1. Open the `build.gradle` file in the `android` directory of the package.
2. Add the `namespace` property under the `android` block to look something like this:
   ```gradle
   android {
       namespace "xyz.justsoft.video_thumbnail"
       // ... rest of android config
   }
   ```

### Example Directory Structure
Here’s how the modified directory structure should look:

```
video_thumbnail/
├── android/
│   ├── src/
│   │   ├── main/
│   │   │   ├── AndroidManifest.xml
│   ├── build.gradle
```

### Additional Notes
- These changes ensure compatibility with the latest Android Gradle Plugin versions.
- Remember to clean and rebuild your project after making these modifications:
  ```bash
  flutter clean
  flutter pub get
  ```


# Date: 23 October 2024

## Summary

- Reel download issue fixed
- Video preview orientation corrected[README.md](..%2Fbubbly%202%2FREADME.md)
- Bug fixes and performance improvements

#### Updated Files
[README.md](..%2Fbubbly%202%2FREADME.md)
- [settings.gradle](android/settings.gradle)
- [pubspec.yaml](../shortz_/pubspec.yaml)
- Podfile
- api_service.dart
- camera_screen.dart
- const_res.dart
- english_en.dart
- item_video.dart
- login_sheet.dart
- preview_screen.dart
- share_sheet.dart
- wallet_screen.dart
- for_u_screen.dart
- item_following.dart
- main.dart
- preview_screen.dart
- upload_screen.dart
- video_list_screen.dart
- video_view.dart
- videos_by_hashtag.dart

#### Added Files

- None

#### Deleted Files

- None

----------------------------------------------------------------------------------------------------

# Date: 19 September 2024

## Summary

- replace library `mobile_scanner: ^5.2.3`  to `qr_code_scanner_plus: ^2.0.6`
- comment bug fixed
- upload sheet add `DetectableTextEditingController`
- Update pubspec.yaml file some library

#### Updated Files
- comment_screen.dart
- pubspec.yaml
- scan_qr_code_screen.dart
- upload_screen.dart

#### Added Files
None

#### Deleted Files
None

----------------------------------------------------------------------------------------------------

# Date: 1 August 2024

## Summary

- Remove Library - `carousel_slider`
- Change Library -
-
Remove `image_gallery_saver` Add `saver_gallery`   
  Remove `qr_code_scanner` Add `mobile_scanner`

#### Updated Files

- [AndroidManifest.xml](android/app/src/main/AndroidManifest.xml)
- [Info.plist](ios/Runner/Info.plist)
- [pubspec.yaml](../shortz_/pubspec.yaml)
- [settings.gradle](android/settings.gradle)
- main.dart
- app_res.dart
- scan_qr_code_screen.dart
- camera_screen.dart
- following_screen.dart
- gift_sheet.dart
- languages_keys.dart
- share_sheet.dart
- arabic_ar.dart
- chinese_zh.dart
- danish_da.dart
- dutch_nl.dart
- english_en.dart
- france_fr.dart
- german_de.dart
- greek_el.dart
- hindi_hi.dart
- indonesian_id.dart
- japanese_ja.dart
- korean_ko.dart
- norwegian_bokmal_nb.dart
- polish_pl.dart
- portuguese_pt.dart
- russian_ru.dart
- spanish_es.dart
- thai_th.dart
- turkish_tr.dart
- vietnamese_vi.dart

#### Added Files

None

#### Deleted Files

- messages_all.dart
- messages_en.dart
- intl_en.arb
- l10n.dart

----------------------------------------------------------------------------------------------------

# Date: 19 June 2024

## Summary
- Apple Sign in
- Comment sheet loader
- `const_res.dart` file add video limit maxUploadMB and maxUploadSecond

#### Updated Files
- [pubspec.yaml](../shortz_/pubspec.yaml)
- [build.gradle](android/app/build.gradle)
- api_service.dart
- camera_screen.dart
- comment_screen.dart
- common_ui.dart
- const_res.dart
- login_sheet.dart

#### Added Files

None

#### Deleted Files

None

----------------------------------------------------------------------------------------------------

# Date: 12 June 2024

## Summary
- User Camera Don't Allow Permission Screen

#### Updated Files
- [AppDelegate.swift](ios/Runner/AppDelegate.swift)
- [Info.plist](ios/Runner/Info.plist)
- [Podfile](ios/Podfile)
- [pubspec.yaml](../shortz_/pubspec.yaml)
- [SwiftFlutterDailogPlugin.swift](CameraPlugin/camera/ios/Classes/SwiftFlutterDailogPlugin.swift)
- assert_image.dart
- camera_screen.dart
- end_user_license_agreement.dart
- item_video.dart
- live_stream_view_model.dart
- main.dart
- main_screen.dart
- settings.gradle
- share_sheet.dart
- videos_by_sound.dart

#### Added Files

- ic_camera_permission.png
- microphone.png
- no-video.png

#### Deleted Files

- bubble_corner.png
- bubble_single.png
- bubble_single_small.png
- bubbles.png
- bubbles_small.png
- camera.jpg
- idol.jpg
- malaika.jpg

----------------------------------------------------------------------------------------------------

# Date: 10 May 2024

## Summary
- Add In App Purchase
- Migrate Gradle Files
- Library update
- Remove app_tracking_transparency Library and Add Consent Form for Ad Mob

#### Updated Files
- api_service.dart
- common_ui.dart
- dialog_coins_plan.dart
- wallet_screen.dart
- upload_screen.dart
- webview_screen.dart
- item_video.dart
- login_sheet.dart
- main.dart
- main_screen.dart
- broad_cast_screen_view_model.dart
- end_user_license_agreement.dart
- camera_screen.dart
- [AndroidManifest.xml](/android/app/src/debug/AndroidManifest.xml)
- [AndroidManifest.xml](/android/app/src/main/AndroidManifest.xml)
- [AndroidManifest.xml](/android/app/src/profile/AndroidManifest.xml)
- [BubblyCameraPlugin.kt](/CameraPlugin/camera/android/src/main/kotlin/com/retrytech/bubbly_camera)
- [build.gradle](/android/app/build.gradle)
- [build.gradle](/android)
- [build.gradle](/CameraPlugin/camera/android/build.gradle)
- [CameraXView.kt](/CameraPlugin/camera/android/src/main/kotlin/com/retrytech/bubbly_camera/CameraXView.kt)
- [gradle.properties](/android/gradle.properties)
- [gradle-wrapper.properties](/android/gradle/wrapper/gradle-wrapper.properties)
- [MainActivity.kt](/android/app/src/main/kotlin/com/retrytech/bubbly/MainActivity.kt)
- [settings.gradle](/android/settings.gradle)
- pubspec.yaml

#### Added Files
- proguard-rules.pro
- [ads_service.dart](/lib/service/ads_service.dart)

#### Deleted Files
- MyPlayStoreBilling.java