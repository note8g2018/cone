class ValiDate {
  static String userNameV(String username) {
    String pattern = r'^([a-z]{3})([a-z0-9]{5,28}$)';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(username)) {
      return 'Enter Valid User Name';
    } else
      return null;
  }

  static String passWordV(String passWord) {
    String pattern = r'^([a-zA-Z0-9!@#$%^&*()_+=-]{8,31}$)';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(passWord))
      return 'Enter Valid PassWord';
    else
      return null;
  }
}
