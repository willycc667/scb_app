import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:scb_app/src/theme/app_theme.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String message;
  final String buttonText;
  final VoidCallback? onPressed;

  const CustomAlertDialog({
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
        height: 200,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                "Para estar al día !!!",
                style: TextStyle(color: AppTheme.kPrimaryColor, fontSize: 16),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                      xs: 4,
                      sm: 4,
                      md: 4,
                      lg: 4,
                      xl: 4,
                      child: Container(
                        child: const Text("Productos"),
                      )),
                  ResponsiveGridCol(
                      xs: 6,
                      sm: 6,
                      md: 6,
                      lg: 6,
                      xl: 6,
                      child: Container(
                        child: const Text("Deuda"),
                      )),
                  ResponsiveGridCol(
                      xs: 2,
                      sm: 2,
                      md: 2,
                      lg: 2,
                      xl: 2,
                      child: Container(
                        child: const Text(""),
                      )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                      xs: 4,
                      sm: 4,
                      md: 4,
                      lg: 4,
                      xl: 4,
                      child: Container(
                        child: const Text(
                          "Aporte",
                          style: TextStyle(fontSize: 12),
                        ),
                      )),
                  ResponsiveGridCol(
                      xs: 6,
                      sm: 6,
                      md: 6,
                      lg: 6,
                      xl: 6,
                      child: Container(
                        child: const Text(
                          "S/ 10.00",
                          style: TextStyle(fontSize: 12),
                        ),
                      )),
                  ResponsiveGridCol(
                    xs: 2,
                    sm: 2,
                    md: 2,
                    lg: 2,
                    xl: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppTheme.kPrimaryColor,
                        borderRadius: BorderRadius.circular(10.0), // Bordes redondeados de radio 10
                      ),
                      width: 40,
                      height: 20,
                      child: Center(
                        child: Text(
                          'Pagar',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppTheme.kLightColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                      xs: 4,
                      sm: 4,
                      md: 4,
                      lg: 4,
                      xl: 4,
                      child: Container(
                        child: const Text(
                          "Previsión Social",
                          style: TextStyle(fontSize: 12),
                        ),
                      )),
                  ResponsiveGridCol(
                      xs: 6,
                      sm: 6,
                      md: 6,
                      lg: 6,
                      xl: 6,
                      child: Container(
                        child: const Text(
                          "S/ 40.00",
                          style: TextStyle(fontSize: 12),
                        ),
                      )),
                  ResponsiveGridCol(
                    xs: 2,
                    sm: 2,
                    md: 2,
                    lg: 2,
                    xl: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppTheme.kPrimaryColor,
                        borderRadius: BorderRadius.circular(10.0), // Bordes redondeados de radio 10
                      ),
                      width: 40,
                      height: 20,
                      child: Center(
                        child: Text(
                          'Pagar',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppTheme.kLightColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                      xs: 4,
                      sm: 4,
                      md: 4,
                      lg: 4,
                      xl: 4,
                      child: Container(
                        child: const Text(
                          "Préstamo",
                          style: TextStyle(fontSize: 12),
                        ),
                      )),
                  ResponsiveGridCol(
                      xs: 6,
                      sm: 6,
                      md: 6,
                      lg: 6,
                      xl: 6,
                      child: Container(
                        child: const Text(
                          "S/ 1000.00",
                          style: TextStyle(fontSize: 12),
                        ),
                      )),
                  ResponsiveGridCol(
                    xs: 2,
                    sm: 2,
                    md: 2,
                    lg: 2,
                    xl: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppTheme.kPrimaryColor,
                        borderRadius: BorderRadius.circular(10.0), // Bordes redondeados de radio 10
                      ),
                      width: 40,
                      height: 20,
                      child: Center(
                        child: Text(
                          'Pagar',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppTheme.kLightColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                      xs: 4,
                      sm: 4,
                      md: 4,
                      lg: 4,
                      xl: 4,
                      child: Container(
                        child: const Text(
                          "Sola Firma",
                          style: TextStyle(fontSize: 12),
                        ),
                      )),
                  ResponsiveGridCol(
                      xs: 6,
                      sm: 6,
                      md: 6,
                      lg: 6,
                      xl: 6,
                      child: Container(
                        child: const Text(
                          "Cuotas 10 - S/ 100.00",
                          style: TextStyle(fontSize: 12),
                        ),
                      )),
                  ResponsiveGridCol(
                    xs: 2,
                    sm: 2,
                    md: 2,
                    lg: 2,
                    xl: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppTheme.kPrimaryColor,
                        borderRadius: BorderRadius.circular(10.0), // Bordes redondeados de radio 10
                      ),
                      width: 40,
                      height: 20,
                      child: Center(
                        child: Text(
                          'Pagar',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppTheme.kLightColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        TextButton(
          onPressed: onPressed ?? () => Navigator.of(context).pop(),
          child: Text(
            "Cerrar",
            style: TextStyle(color: AppTheme.kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
