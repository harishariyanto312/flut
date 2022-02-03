import 'package:epermits/theme/app_theme.dart';
import 'package:flutter/material.dart';
import './pages/login.dart';
import './pages/main_screen.dart';

void main() => runApp(ePermit());

class ePermit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      title: 'E-Permit Sejati',
      home: CheckAuthentication(),
    );
  }
}

class CheckAuthentication extends StatefulWidget {

  @override
  State<CheckAuthentication> createState() => _CheckAuthenticationState();
}

class _CheckAuthenticationState extends State<CheckAuthentication> {
  bool isAuthenticated = false;

  void loginHandler() {
    setState(() {
      isAuthenticated = true;
    });
  }

  void logoutHandler() {
    setState(() {
      isAuthenticated = false;
    });
  }

  @override 
  Widget build(BuildContext context) {
    if (isAuthenticated) {
      return MainScreen(logoutHandler: logoutHandler,);
    }
    else {
      return Login(loginHandler: loginHandler,);
    }
  }
}
