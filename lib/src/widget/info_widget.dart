import 'package:flutter/material.dart';
import 'package:scb_app/src/theme/app_theme.dart';

class InfoWidget extends StatelessWidget {
  final String text;

  const InfoWidget({super.key, required this.text});

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
          Padding(
            padding: const EdgeInsets.only(
              right: 10.0,
            ),
            child: Image.asset(
              "assets/images/ic_info.png",
              width: 24.0,
              height: 29.0,
            ),
          ),
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
