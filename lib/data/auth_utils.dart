import 'package:shared_preferences/shared_preferences.dart';

class AuthUtils {
  static String? name, username, token, id, location, email;

  static Future<void> saveUserData(
      String userName,
      String userUserName,
      String userToken,
      String userId,
      String userLocation,
      String userEmail) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('token', userToken);
    await sharedPreferences.setString('name', userName);
    await sharedPreferences.setString('username', userUserName);
    await sharedPreferences.setString('lcoation', userLocation);
    await sharedPreferences.setString('id', userId);
    await sharedPreferences.setString('email', userEmail);

    name = userName;
    username = userUserName;
    token = userToken;
    id = userLocation;
    location = userId;
    email = userEmail;
  }

  static Future<bool> checkLoginState() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString('token');

    if (token == null) {
      return false;
    } else {
      return true;
    }
  }

  static Future<void> getAuthData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    token = sharedPreferences.getString('token');
    name = sharedPreferences.getString('name');
    username = sharedPreferences.getString('username');
    location = sharedPreferences.getString('location');
    id = sharedPreferences.getString('id');
    email = sharedPreferences.getString('email');
  }

  static Future<void> clearData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.clear();
  }

}
