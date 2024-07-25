import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:scb_app/src/pages/sign_up/sign_up_controller.dart';
import 'package:scb_app/src/theme/app_theme.dart';
import 'package:scb_app/src/widget/button_app.dart';
import 'package:scb_app/src/widget/checkbox_widget.dart';
import 'package:scb_app/src/widget/spacer_widget.dart';

import '../../common/dropdownApp.dart';
import '../../widget/info_text_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChecked = false;
  final SignUpController _con = SignUpController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: const Text(""),
        backgroundColor: AppTheme.kLightColor,
        foregroundColor: AppTheme.kPrimaryColor,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Registrate",
                  textAlign: TextAlign.start,
                  style: AppTheme.headText3Secondary,
                ),
              ),
              const SpacerWidget(),
              Text(
                "Por favor ingrese  sus datos",
                textAlign: TextAlign.start,
                style: AppTheme.headText3Secondary,
              ),
              const SpacerWidget(),
              const SpacerWidget(),
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
                          borderRadius: BorderRadius.circular(5.0),
                          color: AppTheme.kLightColor),
                      child: TextFormField(
                        controller: _con.userDocumentController,
                        style: TextStyle(color: AppTheme.kDarkColor),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                          hintText: 'Número de documento',
                          labelStyle:
                              TextStyle(color: Colors.black.withOpacity(0.3)),
                          hintStyle:
                              TextStyle(color: Colors.black.withOpacity(0.3)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SpacerWidget(),
              ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    xs: 3,
                    sm: 3,
                    md: 3,
                    lg: 3,
                    xl: 3,
                    child: Container(
                      margin: EdgeInsets.only(right: 5),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: AppTheme.kLightColor),
                      child: TextFormField(
                        controller: _con.userDocumentController,
                        style: TextStyle(color: AppTheme.kDarkColor),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                          hintText: 'SOCIO',
                          labelStyle:
                              TextStyle(color: Colors.black.withOpacity(0.3)),
                          hintStyle:
                              TextStyle(color: Colors.black.withOpacity(0.3)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
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
                          borderRadius: BorderRadius.circular(5.0),
                          color: AppTheme.kLightColor),
                      child: TextFormField(
                        controller: _con.userDocumentController,
                        style: TextStyle(color: AppTheme.kDarkColor),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                          hintText: 'Número de socio',
                          labelStyle:
                              TextStyle(color: Colors.black.withOpacity(0.3)),
                          hintStyle:
                              TextStyle(color: Colors.black.withOpacity(0.3)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              const InfoTextWidget(
                text:
                    "Si ya te registraste por la banca virtual de la CSCB, on es necesario volver a registrarte",
              ),
              const SpacerWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CheckboxWidget(
                    initialValue: false,
                    onChanged: (value) {},
                  ),
                  Expanded(
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        text: 'He leído y acepto la ',
                        style: AppTheme.bodyTextSecondary,
                        children: <TextSpan>[
                          TextSpan(
                            text: "política de privacidad",
                            style: AppTheme.bodyTextTertiary,
                            recognizer: TapGestureRecognizer()
                              ..onTap = _onTextSpanClicked,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SpacerWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CheckboxWidget(
                    initialValue: false,
                    onChanged: (value) {},
                  ),
                  const Expanded(
                    child: Text(
                        "Autorizo el uso de mis datos personales para fines estadísticos"),
                  )
                ],
              ),
              const SpacerWidget(),
              const SpacerWidget(),
              ButtonApp(
                color: AppTheme.kPrimaryColor,
                textColor: AppTheme.kLightColor,
                text: 'Siguiente',
                onPressed: () {
                  Navigator.pushNamed(context, 'secure-password',
                      arguments: "");
                },
              ),
              const SpacerWidget(),
            ],
          ),
        ),
      ),
    );
  }

  void _onTextSpanClicked() {
    Navigator.pushNamed(context, 'terms-conditions', arguments: "");
  }
}