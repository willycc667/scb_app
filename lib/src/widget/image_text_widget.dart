import 'package:flutter/material.dart';
import 'package:scb_app/src/theme/app_theme.dart';

class ImageTextWidget extends StatelessWidget {
  final String imagePath;
  final String text;

  const ImageTextWidget(
      {super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Image.asset(
              imagePath,
              width: 24.0,
              height: 29.0,
            ),
          ),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: AppTheme.bodyTextPrimary,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
