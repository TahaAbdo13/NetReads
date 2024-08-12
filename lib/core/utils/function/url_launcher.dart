import 'package:bookly/core/utils/function/custom_snack_bar_error_messae.dart';
import 'package:bookly/core/utils/function/custom_snack_bar_success_message.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customUrlLauncher(
    {required context, required String urlSearch}) async {
  Uri url = Uri.parse(urlSearch);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
    customSnackBarSuccessMessage(context);
  } else {
    customSnackBarErrorMessage(context, url);
  }
}
