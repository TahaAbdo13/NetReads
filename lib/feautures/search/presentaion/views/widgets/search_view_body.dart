import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTextFormField(),
          SizedBox(
            height: 16,
          ),
          Text("Search Result", style: Styles.textStyle18),
          SizedBox(
            height: 20,
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
