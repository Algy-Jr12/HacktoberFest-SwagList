import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/swag.dart';

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
            children: [
              ListTile(
                isThreeLine: true,
                title: Text(
                  swagElement.organization,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text('No of PR\'s - ${swagElement.no_of_prs}'),
                    SizedBox(height: 8),
                    Text(
                      swagElement.description,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
