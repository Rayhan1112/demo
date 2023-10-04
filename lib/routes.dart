import 'package:demo/Login.dart';
import 'package:demo/data.dart';
import 'package:get/get.dart';

class RouteClass{
  static String login="/";
  static String getdata="/";

  static String getLogin()=>login;
  static String getData()=>getdata;

  static List<GetPage> routes = [
    GetPage(page: () => Login(), name: login,transition: Transition.downToUp),
    GetPage(page: () => data(), name: getdata,transition: Transition.downToUp),

  ];

}