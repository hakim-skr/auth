import 'package:flutter/material.dart';

class MyHelper {
  MyHelper._();

  static void showAlert(String title, String message, BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text(title),
              content: Text(message),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK'),
                )
              ]);
        });
  }
  static Color darkenColor(Color color, double factor) {
    assert(factor >= 0 && factor <= 1);

    // Calculate the new color components
    int red = (color.red * (1 - factor)).round();
    int green = (color.green * (1 - factor)).round();
    int blue = (color.blue * (1 - factor)).round();

    // Create and return the new color
    return Color.fromRGBO(red, green, blue, 1.0);
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }
}
