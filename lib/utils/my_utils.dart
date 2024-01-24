import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'my_print.dart';

class MyUtils {

  static String encodeJson(Object? object) {
    try {
      return jsonEncode(object);
    }
    catch(e, s) {
      MyPrint.printOnConsole("Error in MyUtils.encodeJson():$e");
      MyPrint.printOnConsole(s);
      return "";
    }
  }

  static dynamic decodeJson(String body) {
    try {
      return jsonDecode(body);
    }
    catch(e, s) {
      MyPrint.printOnConsole("Error in MyUtils.decodeJson():$e");
      MyPrint.printOnConsole(s);
      return null;
    }
  }


  static void hideShowKeyboard({bool isHide = true}) {
    SystemChannels.textInput.invokeMethod(isHide ? 'TextInput.hide' : 'TextInput.show');
  }

  // static void initializeHttpOverrides() {
  //   if(!kIsWeb) {
  //     HttpOverrides.global = MyHttpOverrides();
  //     HttpClient httpClient = HttpClient();
  //     httpClient.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
  //   }
  // }

  static String getSecureUrl(String url) {
    String scheme = Uri.base.scheme;
    // MyPrint.printOnConsole("scheme:$scheme");

    String current = "", target = "";
    if(scheme == "http") {
      current = "https:";
      target = "http:";
    }
    else if(scheme == "https") {
      current = "http:";
      target = "https:";
    }
    // MyPrint.printOnConsole("current:$current");

    if(current.isNotEmpty && target.isNotEmpty && url.startsWith(current)) {
      url = url.replaceFirst(current, target);
    }
    return url;
  }

  static String getHostNameFromSiteUrl(String url) {
    if(url.startsWith("http://") || url.startsWith("https://")) {
      Uri uri = Uri.parse(url);
      return uri.host;
    }

    return "";
  }




  static List<DateTime> getDaysInBetween(DateTime startDate, DateTime endDate) {
    List<DateTime> days = [];
    for (int i = 0; i <= endDate.difference(startDate).inDays; i++) {
      days.add(startDate.add(Duration(days: i)));
    }
    return days;
  }

  static double roundTo(double value, double precision) => (value * precision).round() / precision;
}