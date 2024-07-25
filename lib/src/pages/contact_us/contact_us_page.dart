import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../widget/button_app.dart';
import '../../widget/contact_widget.dart';
import '../../widget/spacer_widget.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  "¿Quieres Contactarnos?",
                  textAlign: TextAlign.center,
                  style: AppTheme.headText3Secondary,
                ),
              ),
              const SpacerWidget(),
              Text(
                "Estos son los horarios de atención de nuestros canales digitales:",
                textAlign: TextAlign.start,
                style: AppTheme.bodyTextSecondary,
              ),
              const SpacerWidget(),
              Text(
                " •  Lunes-Viernes   : 08:30 am - 06:00 pm",
                textAlign: TextAlign.start,
                style: AppTheme.bodyTextSecondary,
              ),
              const SpacerWidget(),
              Text(
                " •  Sabado              : 09:00 am - 01:00 pm",
                textAlign: TextAlign.start,
                style: AppTheme.bodyTextSecondary,
              ),
              const SpacerWidget(),
              const ContactWidget(
                address: "Oficina Principal :",
                imagePath: "assets/images/ic_phone.png",
                phone: "+51-01-0203",
              ),
              const ContactWidget(
                address: "O. Moyobamba :",
                imagePath: "assets/images/ic_phone.png",
                phone: "+51-01-0203",
              ),
              const ContactWidget(
                address: "Oficina Soritor :",
                imagePath: "assets/images/ic_phone.png",
                phone: "+51-01-0203",
              ),
              Expanded(child: Container()),
              ButtonApp(
                color: AppTheme.kPrimaryColor,
                textColor: AppTheme.kLightColor,
                text: 'Entendido',
                onPressed: () {
                  Navigator.pop(context);
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
