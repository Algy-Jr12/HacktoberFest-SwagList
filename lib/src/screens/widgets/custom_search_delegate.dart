import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hf_swag_list/extensions.dart';
import 'package:hf_swag_list/src/screens/widgets/card_view.dart';
import '../../models/swag.dart';

class CustomSearchDelegate extends SearchDelegate {
  final List<SwagElement> swagList;

  CustomSearchDelegate(this.swagList);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          }
          query = '';
        },
        icon: Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(
        Icons.arrow_back,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Get matching results that contains query
    List matched = [];
    swagList.forEach((element) {
      if (element.organization.containsIgnoreCase(query.trim())) {
        matched.add(element);
      }
    });

    return matched.isNotEmpty
        ? ListView.builder(
            itemCount: matched.length,
            itemBuilder: (context, index) {
              return SwagCardView(
                swagElement: matched[index],
              );
            })
        : Center(
            child: Text(
            'No Results Found',
            style: TextStyle(fontSize: 20),
          ));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Column();
  }
}
