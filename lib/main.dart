import 'package:authentication_app/pages/welcome_page.dart';
import 'package:authentication_app/routes/routes.dart';
import 'package:authentication_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF13161F),
    statusBarColor: Color(0xFF13161F).withOpacity(0.9),
  ));
  Routes.createRoutes();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Authentication',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomePage(),
      navigatorKey: Routes.seafarer.navigatorKey,
      onGenerateRoute: Routes.seafarer.generator(),
    );
  }
}
