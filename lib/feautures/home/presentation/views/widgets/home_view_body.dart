import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'custom_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24.0, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBarWidget(),
          SizedBox(
            height: 20,
          ),
          CustomBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            "Best Saller",
            style: Styles.textStyle18
          ),
          SizedBox(
            height: 20,
          ),
          BestSallerListViewItem()
        ],
      ),
    );
  }
}

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: SizedBox(
        height: 120,//مش مهتم بتكون ريسبونسيف لانها كدا كدا >ListView
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: const DecorationImage(
                        image: NetworkImage(
                          "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg",
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
