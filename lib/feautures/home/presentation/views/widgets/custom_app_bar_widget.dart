import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/feautures/home/presentation/manager/getFeaturedBooks_cubit/get_featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AssetsData.logoPath,
          height: 22,
        ),
        const Spacer(),
        IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              GoRouter.of(context).push(AppRouter.searchViewPath,extra: BlocProvider.of<GetFeaturedBooksCubit>(context).searchbooks);
            },
            icon: const Icon(
              Icons.search,
              size: 30,
            ))
      ],
    );
  }
}
