
class Urls{
  Urls._();

  static const String _baseUrl = 'https://task.teamrabbil.com/api/v1';
  static String registration = '$_baseUrl/registration';
  static String logIn = '$_baseUrl/login';
  static String createTask = '$_baseUrl/createTask';
  static String taskStatusCount = '$_baseUrl/taskStatusCount';
  static String newTasks = '$_baseUrl/listTaskByStatus/New';
  static String inProgressTask = '$_baseUrl/listTaskByStatus/Progress';
  static String updateProfile = '$_baseUrl/profileUpdate';
  static String recoverResetPass = '$_baseUrl/RecoverResetPass';
  static String sendOTPEmail(String email) => '$_baseUrl/RecoverVerifyEmail/$email';

  static String otpVerify(String email,String otp) => '$_baseUrl/RecoverVerifyOTP/$email/$otp';
  static String deleteTask(String id) => '$_baseUrl/deleteTask/$id';

  static String updateTask(String id, String status) => '$_baseUrl/updateTaskStatus/$id/$status';

}