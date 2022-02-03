import 'package:epermits/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutx/flutx.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import './change_password.dart';

class Account extends StatelessWidget {
  final Function() logoutHandler;

  Account({required this.logoutHandler});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: FxSpacing.nTop(20),
      children: <Widget>[
        Column(
          children: <Widget>[
            FxSpacing.height(2),
            FxText.sh1(
              'Employee Name',
              fontWeight: 600,
              letterSpacing: 0,
            ),
            FxSpacing.height(8),
            FxText.sh2(
              '12345678',
            ),
          ],
        ),
        Divider(
          thickness: 0.3,
        ),
        InkWell(
          onTap: () async {
            final result = await Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => ChangePassword())
            );

            if (result) {
            ScaffoldMessenger.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: FxText.sh2(
                    'Password has been changed',
                    color: AppTheme.theme.colorScheme.onPrimary,
                  ),
                  backgroundColor: AppTheme.theme.colorScheme.primary,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            }
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Icon(
                    MdiIcons.lockOutline,
                    size: 24,
                    color: AppTheme.theme.colorScheme.onBackground,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 16),
                    child: FxText.sh1(
                      'Change Password',
                      fontWeight: 600,
                    )
                  ),
                ),
                Container(
                  child: Icon(
                    MdiIcons.chevronRight,
                    size: 24,
                    color: AppTheme.theme.colorScheme.onBackground,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 0.3,
        ),
        InkWell(
          onTap: () {
            // logoutHandler();
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text('Logout Confirm'),
                content: Text('Are you sure you want to logout?'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context, 'Cancel');
                    },
                    child: Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context, 'OK');
                      logoutHandler();
                    },
                    child: Text('OK'),
                  ),
                ],
              )
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Icon(
                    MdiIcons.logout,
                    size: 24,
                    color: AppTheme.theme.colorScheme.onBackground,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 16),
                    child: FxText.sh1(
                      'Logout',
                      fontWeight: 600,
                    ),
                  ),
                ),
                Container(
                  child: Icon(
                    MdiIcons.chevronRight,
                    size: 24,
                    color: AppTheme.theme.colorScheme.onBackground,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 0.3,
        ),
      ],
    );
  }
}