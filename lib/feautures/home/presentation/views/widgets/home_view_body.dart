import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'best_saller_list_view_builder.dart';
import 'custom_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0, top: 20),
                child: CustomAppBarWidget(),
              ),
              SizedBox(
                height: 42,
              ),
              CustomBooksListView(size: .25,),
              SizedBox(
                height: 49,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text("Best Saller", style: Styles.textStyle18),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSallerListViewBuilder(),
          ),
        )
      ],
    );
  }
}
