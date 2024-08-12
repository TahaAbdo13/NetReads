import 'package:bookly/core/utils/function/url_launcher.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/cstom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  final BookModel bookModel;
  const BooksAction({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              topRight: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
            color: Colors.white,
            text: '19.99€',
            onPressed: () {},
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                bottomLeft: Radius.circular(0),
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              color: const Color(0xffEF8262),
              text: getText(bookModel: bookModel),
              onPressed:(){
                customUrlLauncher(context: context, urlSearch: bookModel.volumeInfo.previewLink!);
              },
              style: Styles.textStyle14
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }

  String getText({required BookModel bookModel}) {
    if ((bookModel.volumeInfo.previewLink! != null)) {
      return 'Free preview';
    } else {
      return 'Not Available';
    }
  }
}
