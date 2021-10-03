import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import '../../theme/app_theme.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding: EdgeInsets.symmetric(horizontal: 5),
      title: Text(
        Strings.headerQues,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 16),
          children: [
            TextSpan(text: Strings.headerAns1),
            TextSpan(
              text: Strings.headerAns2,
              style: TextStyle(
                color: AppColors.brightRed,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(Constants.CONTRIB_URL),
            ),
            TextSpan(text: Strings.addSwag),
            TextSpan(
              text: '\n\n${Constants.LIST_URL}',
              style: TextStyle(
                color: AppColors.dullRed,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(Constants.LIST_URL),
            ),
          ],
        ),
      ),
    );
  }
}
