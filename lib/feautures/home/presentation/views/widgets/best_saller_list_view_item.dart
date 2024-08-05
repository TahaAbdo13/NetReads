import 'package:bookly/core/utils/app_router.dart';

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
      child: const SizedBox(
        height: 120, //مش مهتم بتكون ريسبونسيف لانها كدا كدا >ListView
        child: Row(
          children: [
            CustomBookImage(),
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
