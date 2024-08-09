import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';

import 'package:bookly/feautures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'best_saller_item_column_widget.dart';

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsViewPath);
      },
      child:  SizedBox(
        height: 120, //مش مهتم بتكون ريسبونسيف لانها كدا كدا >ListView
        child: Row(
          children: [
            CustomBookImage(imageUrl: "https://marketplace.canva.com/EAEh_T7-gOQ/1/0/1003w/canva-%D8%BA%D9%84%D8%A7%D9%81-%D9%83%D8%AA%D8%A7%D8%A8-%D8%B5%D9%88%D8%B1%D8%A9-%D9%85%D8%AC%D8%B1%D8%A9-%D8%B4%D8%B1%D8%A7%D8%A6%D8%B7-%D8%B9%D8%B1%D8%B6%D9%8A%D8%A9-%D8%AE%D9%8A%D8%A7%D9%84-%D8%B9%D9%84%D9%85%D9%8A-rG1k7WBoeyo.jpg",),
            SizedBox(
              width: 30,
            ),
            BestSallerItemColumnWidget()
          ],
        ),
      ),
    );
  }
}
