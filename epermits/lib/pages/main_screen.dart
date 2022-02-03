import 'package:epermits/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutx/flutx.dart';
import './account.dart';
import './create_permit.dart';

class MainScreen extends StatefulWidget {
  final Function() logoutHandler;

  MainScreen({required this.logoutHandler});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  FxBottomNavigationBarType bottomNavigationBarType = FxBottomNavigationBarType.normal;

  bool showActiveLabel = false;
  bool showLabel = false;
  Axis labelDirection = Axis.horizontal;

  @override 
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: FxSpacing.horizontal(24),
            ),
            Expanded(
              child: FxBottomNavigationBar(
                containerDecoration: BoxDecoration(
                  color: AppTheme.customTheme.cardDark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.customTheme.shadowColor.withAlpha(200),
                      offset: Offset(8, 0),
                      blurRadius: 8,
                    ),
                  ],
                ),
                activeContainerColor: AppTheme.theme.colorScheme.primary.withAlpha(30),
                fxBottomNavigationBarType: bottomNavigationBarType,
                showActiveLabel: showActiveLabel,
                showLabel: showLabel,
                activeIconSize: 22,
                iconSize: 22,
                titleSize: 12,
                activeTitleSize: 12,
                labelDirection: labelDirection,
                activeIconColor: AppTheme.theme.colorScheme.primary,
                iconColor: AppTheme.theme.colorScheme.onBackground.withAlpha(140),
                itemList: [
                  FxBottomNavigationBarItem(
                    page: Center(
                      child: Text('Home'),
                    ),
                    title: 'Home',
                    activeIconData: Icons.home,
                    iconData:  Icons.home,
                  ),
                  FxBottomNavigationBarItem(
                    page: CreatePermit(),
                    title: 'Create',
                    activeIconData: Icons.create,
                    iconData: Icons.create
                  ),
                  FxBottomNavigationBarItem(
                    page: Account(logoutHandler: widget.logoutHandler),
                    title: 'Account',
                    activeIconData: Icons.account_circle_rounded,
                    iconData: Icons.account_circle_outlined,
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: AppTheme.customTheme.cardDark,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppTheme.customTheme.cardDark,
          title: FxText.sh1('ePermits', fontWeight: 600,),
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}