import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../widget/button_app.dart';
import '../../widget/spacer_widget.dart';

class TemplatePage extends StatefulWidget {
  const TemplatePage({super.key});

  @override
  State<TemplatePage> createState() => _TemplatePageState();
}

class _TemplatePageState extends State<TemplatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kLightColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            children: [
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
