class PasswordValidator {
  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    //if (!RegExp(
    // r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
    // .hasMatch(value)) {
    // return 'Password must contain at least one uppercase letter, one lowercase letter, one number, and one special character';
    // }
    return null;
  }
}
