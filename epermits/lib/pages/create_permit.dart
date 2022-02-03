import 'package:epermits/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutx/flutx.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreatePermit extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: FxSpacing.nTop(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 12),
              child: FxText.sh2(
                'Create Permit',
                fontWeight: 600,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nama',
                border: AppTheme.theme.inputDecorationTheme.border,
                enabledBorder: AppTheme.theme.inputDecorationTheme.border,
                focusedBorder: AppTheme.theme.inputDecorationTheme.focusedBorder,
                prefixIcon: Icon(MdiIcons.accountOutline, size: 24,)
              ),
            ),
          ],
        ),
      ),
    );
  }
}