import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../widget/button_app.dart';
import '../../widget/flutter_horizontal_stepper.dart';
import '../../widget/spacer_widget.dart';
import '../forgot_password/forgot_password_controller.dart';

class EnterDynamicPasswordPage extends StatefulWidget {
  const EnterDynamicPasswordPage({super.key});

  @override
  State<EnterDynamicPasswordPage> createState() =>
      _EnterDynamicPasswordPageState();
}

class _EnterDynamicPasswordPageState extends State<EnterDynamicPasswordPage> {
  int _currentStep = 0;
  final ForgotPasswordController _con = ForgotPasswordController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kLightColor,
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
            children: [
              Center(
                child: Text(
                  "Olvidé mi contraseña",
                  textAlign: TextAlign.start,
                  style: AppTheme.headText3Secondary,
                ),
              ),
              const SpacerWidget(),
              Transform.scale(
                scale: 0.6,
                child: FlutterHorizontalStepper(
                  completeStepColor: AppTheme.kTertiaryColor,
                  inActiveStepColor: AppTheme.kLightColor,
                  currentStepColor: AppTheme.kLightColor,
                  steps: const ["", "", "", ""],
                  radius: 45,
                  currentStep: 2,
                  child: const [Text("1"), Text("2"), Text("3"), Text("4")],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Ingrese su clave dinámica",
                  textAlign: TextAlign.start,
                  style: AppTheme.bodyTextSecondary,
                ),
              ),
              Text(
                "Por favor digite la clave que se envíó a su número de celular",
                textAlign: TextAlign.start,
                style: AppTheme.bodyTextSecondary,
              ),
              const SpacerWidget(),
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: AppTheme.kLightColor),
                child: TextFormField(
                  controller: _con.passwordController,
                  obscureText: _obscureText,
                  style: TextStyle(color: AppTheme.kDarkColor),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 20.0),
                    hintText: 'Clave',
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
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
                            _obscureText = !_obscureText;
                          });
                        }),
                  ),
                ),
              ),
              Expanded(child: Container()),
              ButtonApp(
                color: AppTheme.kPrimaryColor,
                textColor: AppTheme.kLightColor,
                text: 'Siguiente',
                onPressed: () {},
              ),
              const SpacerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
