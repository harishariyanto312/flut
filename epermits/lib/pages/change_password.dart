import 'package:epermits/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutx/flutx.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ChangePassword extends StatefulWidget {
  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _passwordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      if (_passwordVisible) {
        _passwordVisible = false;
      }
      else {
        _passwordVisible = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.customTheme.cardDark,
        title: FxText.sh1('Change Password', fontWeight: 600,),
      ),
      backgroundColor: AppTheme.customTheme.cardDark,
      body: ListView(
        padding: FxSpacing.nTop(20),
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: TextFormField(
                    style: FxTextStyle.sh2(
                      letterSpacing: 0,
                      color: AppTheme.theme.colorScheme.onBackground,
                      fontWeight: 500,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Old Password',
                      hintStyle: FxTextStyle.sh2(
                        letterSpacing: 0,
                        color: AppTheme.theme.colorScheme.onBackground,
                        fontWeight: 500,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: AppTheme.customTheme.card,
                      prefixIcon: Icon(MdiIcons.lockOutline),
                      suffixIcon: IconButton(
                        icon: _passwordVisible ? Icon(MdiIcons.eyeOffOutline) : Icon(MdiIcons.eyeOutline),
                        onPressed: () {
                          _togglePasswordVisibility();
                        },
                      ),
                    ),
                    textCapitalization: TextCapitalization.sentences,
                    obscureText: !_passwordVisible,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: TextFormField(
                    style: FxTextStyle.sh2(
                      letterSpacing: 0,
                      color: AppTheme.theme.colorScheme.onBackground,
                      fontWeight: 500,
                    ),
                    decoration: InputDecoration(
                      hintText: 'New Password',
                      hintStyle: FxTextStyle.sh2(
                        letterSpacing: 0,
                        color: AppTheme.theme.colorScheme.onBackground,
                        fontWeight: 500,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: AppTheme.customTheme.card,
                      prefixIcon: Icon(MdiIcons.lockOutline),
                      suffixIcon: IconButton(
                        icon: _passwordVisible ? Icon(MdiIcons.eyeOffOutline) : Icon(MdiIcons.eyeOutline),
                        onPressed: () {
                          _togglePasswordVisibility();
                        },
                      ),
                    ),
                    textCapitalization: TextCapitalization.sentences,
                    obscureText: !_passwordVisible,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        boxShadow: [
                          BoxShadow(
                            color: AppTheme.theme.colorScheme.primary.withAlpha(28),
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, true);
                        },
                        child: FxText.b2(
                          'Save',
                          fontWeight: 600,
                          color: AppTheme.theme.colorScheme.onPrimary,
                        ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(FxSpacing.xy(16, 0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}