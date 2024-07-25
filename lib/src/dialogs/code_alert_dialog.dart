import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:scb_app/src/theme/app_theme.dart';

class CodeAlertDialog extends StatelessWidget {
  final String title;
  final String message;
  final String buttonText;
  final VoidCallback? onPressed;

  const CodeAlertDialog({
    super.key,
    required this.title,
    required this.message,
    required this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppTheme.kLightColor,
      contentPadding: const EdgeInsets.all(0.0),
      content: Container(
        margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
        width: MediaQuery.of(context).size.width,
        height: 150,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                "Ingresa la clave dinámica",
                style: TextStyle(color: AppTheme.kDarkColor, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.only(bottom: 22, left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppTheme.kPrimaryColor),
                      borderRadius: BorderRadius.circular(5), // ajusta el radio según sea necesario
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.only(bottom: 22, left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppTheme.kPrimaryColor),
                      borderRadius: BorderRadius.circular(5), // ajusta el radio según sea necesario
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.only(bottom: 22, left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppTheme.kPrimaryColor),
                      borderRadius: BorderRadius.circular(5), // ajusta el radio según sea necesario
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.only(bottom: 22, left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppTheme.kPrimaryColor),
                      borderRadius: BorderRadius.circular(5), // ajusta el radio según sea necesario
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.only(bottom: 22, left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppTheme.kPrimaryColor),
                      borderRadius: BorderRadius.circular(5), // ajusta el radio según sea necesario
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.only(bottom: 22, left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppTheme.kPrimaryColor),
                      borderRadius: BorderRadius.circular(5), // ajusta el radio según sea necesario
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.only(bottom: 22, left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppTheme.kPrimaryColor),
                      borderRadius: BorderRadius.circular(5), // ajusta el radio según sea necesario
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.only(bottom: 22, left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppTheme.kPrimaryColor),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 0),
              child: Text(
                "Solicita la clave nuevamente",
                style: TextStyle(color: AppTheme.kPrimaryColor, fontSize: 12, fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        Container(
          width: 300,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(AppTheme.kPrimaryColor),
              foregroundColor: MaterialStateProperty.all<Color>(AppTheme.kLightColor),
            ),
            onPressed: onPressed ?? () => Navigator.of(context).pop(),
            child: Text(
              "PAGAR",
              style: TextStyle(color: AppTheme.kLightColor),
            ),
          ),
        ),
      ],
    );
  }
}
