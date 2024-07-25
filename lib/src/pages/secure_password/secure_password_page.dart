import 'package:flutter/material.dart';
import 'package:scb_app/src/theme/app_theme.dart';
import 'package:scb_app/src/widget/button_app.dart';
import 'package:scb_app/src/widget/no_header_widget.dart';
import 'package:scb_app/src/widget/spacer_widget.dart';

class SecurePasswordPage extends StatefulWidget {
  const SecurePasswordPage({super.key});

  @override
  State<SecurePasswordPage> createState() => _SecurePasswordPageState();
}

class _SecurePasswordPageState extends State<SecurePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            children: [
              const NoHeaderWidget(),
              const SpacerWidget(),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Te ayudamos a tener una contraseña segura",
                  textAlign: TextAlign.center,
                  style: AppTheme.textSuggestionTitle,
                ),
              ),
              const SpacerWidget(),
              const SpacerWidget(),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Con ella podrás ingresar a CSCB App y banca virtual para realizar tus operaciones",
                  textAlign: TextAlign.center,
                  style: AppTheme.textSuggestion,
                ),
              ),
              Image.asset(
                "assets/images/ic_secure_password_main.png",
                width: MediaQuery.of(context).size.width,
              ),
              Expanded(child: Container()),
              ButtonApp(
                color: AppTheme.kPrimaryColor,
                textColor: AppTheme.kLightColor,
                text: 'Siguiente',
                onPressed: () {
                  Navigator.pushNamed(context, 'correct-password',
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
}

class WidgetExpanded {}
