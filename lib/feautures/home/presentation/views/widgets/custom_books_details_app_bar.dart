import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBooksDetailsAppBar extends StatelessWidget {
  const CustomBooksDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: const Icon(Icons.close)),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
      ],
    );
  }
}
