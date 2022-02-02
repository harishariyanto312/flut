import 'package:epermits/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutx/flutx.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: FxSpacing.nTop(20),
      children: <Widget>[
        Column(
          children: <Widget>[
            FxText.sh1(
              'Employee Name',
              fontWeight: 600,
              letterSpacing: 0,
            ),
            FxSpacing.height(8),
          ],
        ),
        Divider(
          thickness: 0.3,
        ),
        Container(
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
        Divider(
          thickness: 0.3,
        ),
        Container(
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
        Divider(
          thickness: 0.3,
        ),
      ],
    );
  }
}