import 'package:flutter/material.dart';

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
        onTap: () {},
        child: Column(
          children: [
            ListTile(
              title: Text(swagElement.organization),
            )
          ],
        ),
      ),
    );
  }
}
