import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExternalAppLauncherScreen extends StatefulWidget {
  const ExternalAppLauncherScreen({super.key});

  @override
  State<ExternalAppLauncherScreen> createState() =>
      _ExternalAppLauncherScreenState();
}

class _ExternalAppLauncherScreenState extends State<ExternalAppLauncherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("External App Launcher"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// ------------------------ INSTAGRAM ---------------------------
            IconButton(
                onPressed: () async {
                  await LaunchApp.openApp(
                      androidPackageName: "com.instagram.android");
                },
                icon: const FaIcon(
                  FontAwesomeIcons.instagram,
                  size: 40,
                  color: Colors.red,
                )),

            /// -------------------------------- FACEBOOK -----------------------
            IconButton(
                onPressed: () async {
                  await LaunchApp.openApp(
                      androidPackageName: "com.facebook.katana");
                },
                icon: const FaIcon(
                  FontAwesomeIcons.facebook,
                  size: 40,
                  color: Colors.blue,
                )),

            /// ------------------------------------ Whatsapp ---------------------
            IconButton(
                onPressed: () async {
                  await LaunchApp.openApp(androidPackageName: "com.whatsapp");
                },
                icon: const FaIcon(
                  FontAwesomeIcons.whatsapp,
                  size: 40,
                  color: Colors.green,
                )),
          ],
        ),
      ),
    );
  }
}

/// in this video user navigate to other apps --> instagram , facebook , WhatsApp
/// STEP 1
/// ADD DEPENDENCE --> External app launcher -- > pubspec.yaml
/// ADD DEPENDENCE --> fontosam  for icons
/// COMPLETE --> DONE
/// NEXT VIDEO OPEN CAMERA NA DIALER PAID
/// FINAL TEST

/// SOURCE CODE ON GITHUB
