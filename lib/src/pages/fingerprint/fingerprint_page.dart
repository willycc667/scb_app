import 'package:flutter/material.dart';
import 'package:scb_app/src/widget/no_header_widget.dart';

import '../../theme/app_theme.dart';
import '../../widget/button_app.dart';
import '../../widget/info_widget.dart';
import '../../widget/spacer_widget.dart';

class FingerPrintPage extends StatefulWidget {
  const FingerPrintPage({super.key});

  @override
  State<FingerPrintPage> createState() => _FingerPrintPageState();
}

class _FingerPrintPageState extends State<FingerPrintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NoHeaderWidget(),
              Text(
                "Huella digital",
                textAlign: TextAlign.start,
                style: AppTheme.headText3Secondary,
              ),
              const SpacerWidget(),
              Text(
                "La próxima vez que ingreses a nuestra CSCB app, pódras hacerlo mediante tu huella digital.",
                textAlign: TextAlign.justify,
                style: AppTheme.bodyTextSecondary,
              ),
              Expanded(child: Container()),
              const InfoWidget(
                text: "Podrás desabilitar esta opción en cualquier momento desde el Menu Más opciones seleccionando la opción Configurar mi App y Seguridad en nuestra CSCB App.",
              ),
              const SpacerWidget(),
              ButtonApp(
                color: AppTheme.kPrimaryColor,
                textColor: AppTheme.kLightColor,
                text: 'Habilitar huella digital',
                onPressed: () {},
              ),
              const SpacerWidget(),
              ButtonApp(
                color: AppTheme.kLightColor,
                textColor: AppTheme.kPrimaryColor,
                text: 'Por ahora no',
                onPressed: () {
                  Navigator.pushNamed(context, 'home', arguments: "");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
