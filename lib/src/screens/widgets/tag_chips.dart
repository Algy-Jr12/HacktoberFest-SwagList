import 'package:flutter/material.dart';

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
          return Row(
            children: [
              FilterChip(
                label: Text(
                  chips[index],
                  style: TextStyle(fontSize: 15),
                ),
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
