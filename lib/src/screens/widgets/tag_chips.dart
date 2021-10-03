import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../theme/app_theme.dart';

class TagChips extends StatelessWidget {
  final List<String> chips;
  const TagChips({Key? key, required this.chips}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: chips.length,
        itemBuilder: (BuildContext context, int index) {
          var tagColor = TAG_COLORS[chips[index]];
          var tagEmoji = TAG_EMOJI[chips[index]];

          return Row(
            children: [
              FilterChip(
                label: Text(
                  "${tagEmoji ??= TAG_EMOJI['Default']} ${chips[index]}",
                  style: TextStyle(fontSize: 15),
                ),
                backgroundColor: tagColor ??= AppColors.mercury,
                onSelected: (_) {},
              ),
              SizedBox(width: 10),
            ],
          );
        },
      ),
    );
  }
}
