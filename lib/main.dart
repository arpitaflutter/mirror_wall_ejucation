import 'package:flutter/material.dart';
import 'package:mirror_wall_ejucation/screens/app/view/app_screen.dart';
import 'package:mirror_wall_ejucation/screens/home/provider/home_provider.dart';
import 'package:mirror_wall_ejucation/screens/home/view/home_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => home_provider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => home_screen(),
          'app':(context) => app_screen(),
        },
      ),
    ),
  );
}