

import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  final String auth_token = "auth_token";
  final String user_name = "user_name";

  final String client_id = "client_id";
  final String role_id = "role_id";
  final String access_key_id = "access_key_id";
  final String token = "token";
  final String email = "email";
  final String empid = "empid";


//set data into shared preferences like this
  Future<void> setAuthToken(String auth_token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.auth_token, auth_token);
    prefs.setString(this.user_name, auth_token);
  }
  //get value from shared preferences Authentication
  Future<String> getAuthToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String auth_token;
    auth_token = pref.getString(this.auth_token) ?? null;
    return auth_token;
  }




  //set data into shared preferences for userName
  Future<void> setEmpid(String empid) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.empid, empid);
  }
//get value from shared preferences
  Future<String> getEmpid() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String empid;
    empid = pref.getString(this.empid) ?? null;
    return empid;
  }

  //get value from shared preferences
  clearEmpId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String empid;
    empid = pref.remove("empid") as String;
    return empid;
  }

  //set data into shared preferences for userName
  Future<void> setUserName(String user_name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.user_name, user_name);
  }
//get value from shared preferences
  Future<String> getUserName() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String user_name;
    user_name = pref.getString(this.user_name) ?? null;
    return user_name;
  }

  //get value from shared preferences
  clearUserName() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String user_name;
    user_name = pref.remove("user_name") as String;
    return user_name;
  }


  //set data into shared preferences for userName
  Future<void> setClientId(String client_id) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.client_id, client_id);
  }
  //get value from shared preferences
  Future<String> getClientId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String client_id;
    client_id = pref.getString(this.client_id) ?? null;
    return client_id;
  }
  //get value from shared preferences
  Future<String> clearClientId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String client_id;
    client_id = pref.remove("client_id") as String;;
    return client_id;
  }

  //set data into shared preferences for userName
  Future<void> setRoleId(String role_id) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.role_id, role_id);
  }
  //get value from shared preferences
  Future<String> getRoleId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String role_id;
    role_id = pref.getString(this.role_id) ?? null;
    return role_id;
  }

  //get value from shared preferences
  clearRoleId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String role_id;
    role_id = pref.remove("role_id") as String;
    return role_id;
  }



  //set data into shared preferences for userName
  Future<void> setAccessId(String access_key_id) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.access_key_id, access_key_id);
  }
  //get value from shared preferences
  Future<String> getAccessId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String access_key_id;
    access_key_id = pref.getString(this.access_key_id) ?? null;
    return access_key_id;
  }
  //get value from shared preferences
  clearAccessId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String access_key_id;
    access_key_id = pref.remove("access_key_id") as String;
    return access_key_id;
  }

  //set data into shared preferences for userName
  Future<void> setToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.token, token);
  }
  //get value from shared preferences
  Future<String> getToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String token;
    token = pref.getString(this.token) ?? null;
    return token;
  }

  //get value from shared preferences
   clearToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String token;
    token = pref.remove("token") as String;
    return token;
  }

  //set data into shared preferences for userName
  Future<void> setEmail(String email) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.email, email);
  }
  //get value from shared preferences
  Future<String> getEmail() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String email;
    email = pref.getString(this.email) ?? null;
    return email;
  }

  //get value from shared preferences
  clearEmail() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String email;
    email = pref.remove("email") as String;
    return email;
  }

}