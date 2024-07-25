import 'package:flutter/material.dart';
import 'package:scb_app/src/theme/app_theme.dart';
import 'package:scb_app/src/widget/spacer_widget.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            "assets/images/ic_success.png",
            width: 75.0,
            height: 75.0,
          ),
        ),
        const SpacerWidget(),
        Text(
          "Confirmación de Seguridad",
          style: AppTheme.bodyTextSecondary,
        ),
        const SpacerWidget(),
        Text(
          "Exitosa",
          style: AppTheme.headText1Primary,
        ),
      ],
    );
  }
}
