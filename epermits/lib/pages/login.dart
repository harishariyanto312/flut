import 'package:epermits/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutx/flutx.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Login extends StatelessWidget {
  final Function() notifyParent;

  Login({required this.notifyParent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: _LoginCustomClipper(context),
            child: Container(
              alignment: Alignment.center,
              color: AppTheme.theme.colorScheme.background,
            ),
          ),
          Positioned(
            left: 30,
            right: 30,
            top: MediaQuery.of(context).size.height * 0.23,
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                FxContainer.bordered(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  color: AppTheme.theme.scaffoldBackgroundColor,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 24, top: 0),
                        child: FxText.h6('LOGIN', fontWeight: 600),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              style: FxTextStyle.b1(
                                letterSpacing: 0.1,
                                color: AppTheme.theme.colorScheme.onBackground,
                                fontWeight: 500,
                              ),
                              decoration: InputDecoration(
                                hintText: 'ID Karyawan',
                                hintStyle: FxTextStyle.sh2(
                                  letterSpacing: 0.1,
                                  color: AppTheme.theme.colorScheme.onBackground,
                                  fontWeight: 500,
                                ),
                                prefixIcon: Icon(MdiIcons.numeric),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              child: TextFormField(
                                style: FxTextStyle.b1(
                                  letterSpacing: 0.1,
                                  color: AppTheme.theme.colorScheme.onBackground,
                                  fontWeight: 500,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: FxTextStyle.sh2(
                                    letterSpacing: 0.1,
                                    color: AppTheme.theme.colorScheme.onBackground,
                                    fontWeight: 500,
                                  ),
                                  prefixIcon: Icon(MdiIcons.lockOutline),
                                  suffixIcon: IconButton(
                                    icon: Icon(MdiIcons.eyeOutline),
                                    onPressed: () {

                                    },
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              child: FxButton.block(
                                elevation: 0,
                                borderRadiusAll: 4,
                                padding: FxSpacing.y(12),
                                onPressed: () {
                                  notifyParent();
                                },
                                child: FxText.button(
                                  'Login',
                                  fontWeight: 600,
                                  color: AppTheme.theme.colorScheme.onPrimary,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Center(
                      child: Text(
                        'Bantuan',
                        style: FxTextStyle.b2(
                          fontWeight: 600,
                          color: AppTheme.theme.colorScheme.primary
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

class _LoginCustomClipper extends CustomClipper<Path> {
  final BuildContext _context;

  _LoginCustomClipper(this._context);

  @override 
  Path getClip(Size size) {
    final path = Path();
    Size size = MediaQuery.of(_context).size;
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(0, size.height * 0.6);
    path.close();
    return path;
  }

  @override 
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}