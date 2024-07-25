import 'package:flutter/material.dart';
import 'package:scb_app/src/widget/no_header_widget.dart';

import '../../theme/app_theme.dart';
import '../../widget/button_app.dart';
import '../../widget/spacer_widget.dart';

class TermsAndConditionsPage extends StatefulWidget {
  const TermsAndConditionsPage({super.key});

  @override
  State<TermsAndConditionsPage> createState() => _TermsAndConditionsPageState();
}

class _TermsAndConditionsPageState extends State<TermsAndConditionsPage> {
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
          margin: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NoHeaderWidget(),
              Text(
                "Terminos y condiciones",
                textAlign: TextAlign.start,
                style: AppTheme.headText3Secondary,
              ),
              const SpacerWidget(),
              Text(
                "La huella digital se refiere a los registros y rastros que dejamos cuando usamos internet, tanto de forma activa como pasiva. Estos registros pueden incluir información sobre nuestras actividades en línea, como las páginas web que visitamos, las interacciones en redes sociales y las transacciones en línea. Es importante ser consciente de nuestra huella digital y tomar medidas para proteger nuestra privacidad en línea, como ser selectivos con la información que compartimos y utilizar herramientas de seguridad en línea.",
                textAlign: TextAlign.justify,
                style: AppTheme.bodyTextSecondary,
              ),
              Expanded(child: Container()),
              ButtonApp(
                color: AppTheme.kPrimaryColor,
                textColor: AppTheme.kLightColor,
                text: 'Aceptar',
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
