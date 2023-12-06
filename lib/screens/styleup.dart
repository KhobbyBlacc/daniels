
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../utils.dart';

class StyleUp extends StatefulWidget {
  const StyleUp({super.key});
  //late SharedPreferences prefs;
  @override
  State<StyleUp> createState() => _StyleUpState();
}

class _StyleUpState extends State<StyleUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 50),
          child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (controller) async {
          await loadHtmlFromAssets(controller, 'assets/iframe.html');
              },
              javascriptChannels: {
          JavascriptChannel(
              name: 'AvatarCreated',
              onMessageReceived: (JavascriptMessage message) async {
                //  await widget.prefs.setString('avatar', message.message);
                //   final user = userFromPrefs(widget.prefs);
                //   if (!mounted) return;
                //  // if (user != null) {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => Profile(data: user)));
                //   }
              }),
              },
            ),
        ));
  }
}
