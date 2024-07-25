import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:scb_app/src/common/dropdownApp.dart';
import 'package:scb_app/src/pages/login/login_controller.dart';
import 'package:scb_app/src/theme/app_theme.dart';
import 'package:scb_app/src/widget/button_app.dart';

import '../../widget/image_text_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final LoginController _con = LoginController();
  final bool _passwordVisible = false;
  bool changePassword = false;
  bool success = false;
  bool _obscureText = true;

  void refresh() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context, refresh);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _con.key,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ResponsiveGridRow(
                          children: [
                            ResponsiveGridCol(
                                xs: 0,
                                sm: 2,
                                md: 2,
                                lg: 3,
                                xl: 4,
                                child: Container()),
                            ResponsiveGridCol(
                              xs: 12,
                              sm: 8,
                              md: 8,
                              lg: 6,
                              xl: 4,
                              child: Container(
                                alignment: const Alignment(0, 0),
                                margin:
                                    const EdgeInsets.only(left: 40, right: 40),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    _logo(),
                                    ResponsiveGridRow(
                                      children: [
                                        ResponsiveGridCol(
                                          xs: 3,
                                          sm: 3,
                                          md: 3,
                                          lg: 3,
                                          xl: 3,
                                          child: DropdownApp(),
                                        ),
                                        ResponsiveGridCol(
                                          xs: 9,
                                          sm: 9,
                                          md: 9,
                                          lg: 9,
                                          xl: 9,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                color: AppTheme.kLightColor),
                                            child: TextFormField(
                                              controller:
                                                  _con.userDocumentController,
                                              style: TextStyle(
                                                  color: AppTheme.kDarkColor),
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 15.0,
                                                        horizontal: 20.0),
                                                hintText: 'Número de documento',
                                                labelStyle: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(0.3)),
                                                hintStyle: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(0.3)),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        height:
                                            AppTheme.spaceBetweenFormElements),
                                    ResponsiveGridRow(
                                      children: [
                                        ResponsiveGridCol(
                                          xs: 12,
                                          sm: 12,
                                          md: 12,
                                          lg: 12,
                                          xl: 12,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                color: AppTheme.kLightColor),
                                            child: TextFormField(
                                              controller:
                                                  _con.passwordController,
                                              obscureText: _obscureText,
                                              style: TextStyle(
                                                  color: AppTheme.kDarkColor),
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 15.0,
                                                        horizontal: 20.0),
                                                hintText: 'Contraseña',
                                                labelStyle: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(0.3)),
                                                hintStyle: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(0.3)),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                suffixIcon: GestureDetector(
                                                    child: _obscureText == true
                                                        ? Image.asset(
                                                            'assets/images/ic_eye_open.png',
                                                            width: 30,
                                                            height: 30,
                                                          )
                                                        : Image.asset(
                                                            'assets/images/ic_eye_close.png',
                                                            width: 30,
                                                            height: 30,
                                                          ),
                                                    onTap: () {
                                                      setState(() {
                                                        _obscureText =
                                                            !_obscureText;
                                                      });
                                                    }),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 12),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Recordar datos',
                                            textAlign: TextAlign.left,
                                            style: AppTheme.bodyTextSecondary,
                                          ),
                                        ),
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, 'forgot-password',
                                                  arguments: "");
                                            },
                                            child: Text(
                                              'Olvidé mi Contraseña',
                                              textAlign: TextAlign.right,
                                              style: AppTheme.bodyTextPrimary,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 12),
                                    Stack(
                                      children: [
                                        Positioned(
                                          child: Image.asset(
                                            "assets/images/ic_fingerprint.png",
                                          ),
                                        ),
                                        _buttonLogin(),
                                      ],
                                    ),
                                    const SizedBox(height: 30),
                                    RichText(
                                      textAlign: TextAlign.justify,
                                      text: TextSpan(
                                        text: '¿Eres nuevo? ',
                                        style: AppTheme.bodyTextSecondary,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "Registrate Aquí !!",
                                            style: AppTheme.bodyTextPrimary,
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = _onTextSpanClicked,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, 'locate-us',
                                                arguments: "");
                                          },
                                          child: const ImageTextWidget(
                                            imagePath:
                                                'assets/images/ic_location.png',
                                            text: 'Ubícanos',
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, 'contact-us',
                                                arguments: "");
                                          },
                                          child: ImageTextWidget(
                                            imagePath:
                                                'assets/images/ic_contact.png',
                                            text: 'Contacto',
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            ResponsiveGridCol(
                                xs: 0,
                                sm: 2,
                                md: 2,
                                lg: 3,
                                xl: 4,
                                child: Container()),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _logo() {
    return Center(
      child: Image.asset(
        'assets/images/logo.png',
        width: 250,
        height: 250,
      ),
    );
  }

  void _onTextSpanClicked() {
    Navigator.pushNamed(context, 'sign-up', arguments: "");
  }

  Widget _buttonLogin() {
    return Container(
      margin: const EdgeInsets.only(left: 60, right: 60, top: 0, bottom: 0),
      child: ButtonApp(
        color: AppTheme.kPrimaryColor,
        textColor: AppTheme.kLightColor,
        text: 'Ingresar',
        onPressed: () {
          if (formkey.currentState!.validate()) {
            _con.login();
          }
        },
      ),
    );
  }
}
