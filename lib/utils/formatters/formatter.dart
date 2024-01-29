import 'package:intl/intl.dart';

class MyFormatter {
  MyFormatter._();

  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  // remove dots from email to avoid multiple accounts creation by one email
  static String formatEmail(String email) {
    final emailSplited = email.trim().split('@');
    final firstPart = emailSplited[0].replaceAll('.', '');
    final finalEmail = '$firstPart@${emailSplited[1]}';

    return finalEmail;
  }
}
