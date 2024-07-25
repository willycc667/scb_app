import 'package:flutter/material.dart';
import 'package:scb_app/src/widget/info_widget.dart';
import 'package:scb_app/src/widget/no_header_widget.dart';
import 'package:scb_app/src/widget/success_widget.dart';
import 'package:scb_app/src/widget/ticket_widget.dart';
import '../../widget/spacer_widget.dart';

class SecurityConfirmationPage extends StatefulWidget {
  const SecurityConfirmationPage({super.key});

  @override
  State<SecurityConfirmationPage> createState() =>
      _SecurityConfirmationPageState();
}

class _SecurityConfirmationPageState extends State<SecurityConfirmationPage> {
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
              const SuccessWidget(),
              const SpacerWidget(),
              const TicketWidget(),
              Expanded(child: Container()),
              const InfoWidget(
                text:
                    "Podrás desabilitar esta opción en cualquier momento desde el Menu Más opciones seleccionando la opción Configurar mi App y Seguridad en nuestra CSCB App.",
              ),
              const SpacerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
