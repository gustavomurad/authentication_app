import 'package:authentication_app/pages/login_page.dart';
import 'package:authentication_app/pages/signup_page.dart';
import 'package:authentication_app/pages/welcome_page.dart';
import 'package:seafarer/seafarer.dart';

class Routes {
  static final seafarer = Seafarer();

  static void createRoutes() {
    seafarer.addRoutes([
      SeafarerRoute(
        name: "/welcome",
        builder: (context, args, params) {
          return WelcomePage();
        },
      ),
      SeafarerRoute(
        name: "/login",
        builder: (context, args, params) {
          return LoginPage();
        },
      ),
      SeafarerRoute(
        name: "/signup",
        builder: (context, args, params) {
          return SignUpPage();
        },
      ),
    ]);
  }
}
