class AppUrls {
  AppUrls._();

  static const String _baseUrl = 'http://10.0.20.64:8014/api/v1';
  static const String register = '$_baseUrl/auth/create-account';
  static const String login = '$_baseUrl/auth/login';
  static const String verifyOtp = '$_baseUrl/auth/email-verify';
  static const String forgetPassword = '$_baseUrl/auth/forgot-password';
  static const String verifyResetPasswordOtp = '$_baseUrl/auth/verify-reset-password-otp';
  static const String resetPassword = '$_baseUrl/auth/reset-password';


}
