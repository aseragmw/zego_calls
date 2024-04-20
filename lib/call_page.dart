import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID, required this.userID, required this.username}) : super(key: key);
  final String callID;
  final String userID;
  final String username;

  @override
  Widget build(BuildContext context) {
    log("3");
    return ZegoUIKitPrebuiltCall(
      onDispose: () {
        log("4");
      },
      appID: 109338134, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          "a2118d66cead31a32f89972ff5add3855b30856427f74067bc12deab5b06f608", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userID,
      userName: username,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
