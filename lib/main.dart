import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/View/Auth/features/BatteryInfo/battery_info.dart';
import 'package:tyamo/View/Auth/features/UserStatus/user_status.dart';
import 'package:tyamo/View/Auth/features/deviceinfo/device_info.dart';
import 'package:tyamo/View/Auth/forgot_passowrd.dart';
import 'package:tyamo/View/Auth/loging.dart';
import 'package:tyamo/View/Homepage/homepage.dart';
import 'package:tyamo/View/invitation/accept_invite.dart';
import 'package:tyamo/View/invitation/invite_friend.dart';
import 'package:tyamo/View/profile/profile_settings.dart';
import 'package:tyamo/View/profile/profile_setup.dart';

void main() {
  runApp(Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: "Tyamo",
        home: BatteryInfo(),
      );
    });
  }
}