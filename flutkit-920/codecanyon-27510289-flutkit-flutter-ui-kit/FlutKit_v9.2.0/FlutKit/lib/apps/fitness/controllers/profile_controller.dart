import 'package:flutter/material.dart';
import 'package:flutx/flutx.dart';

import '../views/subscription_screen.dart';

class ProfileController extends FxController {
  bool showLoading = true, uiLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void goBack() {
    Navigator.pop(context);
  }

  void goToSubscription() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SubscriptionScreen(),
      ),
    );
  }

  void logout() {
    Navigator.pop(context);
  }

  void fetchData() async {
    await Future.delayed(Duration(seconds: 1));
    showLoading = false;
    uiLoading = false;
    update();
  }

  @override
  String getTag() {
    return "profile_controller";
  }
}
