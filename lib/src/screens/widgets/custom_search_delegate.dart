import 'package:flutter/material.dart';

import '../../cubit/swag_cubit.dart';

class CustomSearchDelegate extends SearchDelegate {
  final SwagCubit swagCubit;

  CustomSearchDelegate(this.swagCubit);

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
    // TODO return Widget showing matched data result
    return Column();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO return List of suggestion of matching query on type
    /**
     * use global variable "query" to get matched data
     */
    return Column();
  }
}
