import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/swag.dart';
import 'tag_chips.dart';

class SwagCardView extends StatelessWidget {
  final SwagElement swagElement;
  const SwagCardView({
    Key? key,
    required this.swagElement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () => launch(swagElement.link),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          child: Column(
            children: [OrgHeader(swagElement: swagElement)],
          ),
        ),
      ),
    );
  }
}

class OrgHeader extends StatelessWidget {
  const OrgHeader({
    Key? key,
    required this.swagElement,
  }) : super(key: key);

  final SwagElement swagElement;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      title: RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
          children: [
            TextSpan(
              text: swagElement.organization,
              style: TextStyle(fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(swagElement.org_url),
            ),
            TextSpan(
              text: '\t(No of PR\'s - ${swagElement.no_of_prs})',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          TagChips(chips: swagElement.tags),
          SizedBox(height: 8),
          Text(
            swagElement.description,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
