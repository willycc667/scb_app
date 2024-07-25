import 'package:flutter/material.dart';
import 'package:scb_app/src/theme/app_theme.dart';

class ContactWidget extends StatelessWidget {
  final String imagePath;
  final String address;
  final String phone;

  const ContactWidget(
      {super.key,
      required this.imagePath,
      required this.address,
      required this.phone});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: AppTheme.kLightColor,
        border: Border.all(
          color: AppTheme.kDarkColor,
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Image.asset(
              imagePath,
              width: 20.0,
              height: 20.0,
            ),
          ),
          Container(
            width: 150,
            child: Text(
              address,
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              style: AppTheme.bodyTextSecondary,
              maxLines: 1,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              phone,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: AppTheme.bodyTextTertiary2,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
