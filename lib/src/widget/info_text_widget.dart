import 'package:flutter/material.dart';
import 'package:scb_app/src/theme/app_theme.dart';

class InfoTextWidget extends StatelessWidget {
  final String text;

  const InfoTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.kBackgroundInfo,
        borderRadius:
            BorderRadius.circular(10.0), // Ajusta el valor según sea necesario
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
              style: AppTheme.bodyTextSecondary,
              maxLines: 10,
            ),
          ),
        ],
      ),
    );
  }
}
