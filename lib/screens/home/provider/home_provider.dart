import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class home_provider extends ChangeNotifier
{
  List url = [
    "https://en.wikipedia.org",
    "https://www.w3schools.com",
    "https://www.javatpoint.com",
    "https://www.tutorialspoint.com",
    "https://byjus.com",
    "https://www.vedantu.com",
    "https://brainly.in",
    "https://study.com",
  ];

  List images = [
    "assets/images/wikipedia.png",
    "assets/images/w3schools.png",
    "assets/images/javapoint.png",
    "assets/images/tutorialspoint.png",
    "assets/images/byjus.webp",
    "assets/images/vedantu.png",
    "assets/images/brainly.png",
    "assets/images/study.png"
  ];

  List name = [
    "Wikipedia",
    "W3schools",
    "Javapoint",
    "Tutorialspoint",
    "byju's",
    "Vedantu",
    "Brainly",
    "Study"
  ];

  WebViewController? webViewController;

  void loadWebsite(int index)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${url[index]}"));
  }
}