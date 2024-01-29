class MyValidator {
  MyValidator._();

  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) return " $fieldName is required";
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Email is required.';
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    if (!emailRegex.hasMatch(value)) return "invalid email adress ! ";

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    // Check if the password contains at least one number
    if (!value.contains(RegExp(r'\d'))) {
      return 'Password must contain at least one number';
    }
    // Check if the password contains at least one specila character
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number is required.";
    }
    String cleanedPhoneNumber = value.replaceAll(RegExp(r'\D'), '');
    RegExp phoneRegex =
        RegExp(r'^\+?\d{1,4}[-\s]?\(?\d{1,4}\)?[-\s]?\d{1,4}[-\s]?\d{1,10}$');
    if (!phoneRegex.hasMatch(cleanedPhoneNumber)) {
      return 'Invalid phone number format.';
    }
    return null;
  }
}
