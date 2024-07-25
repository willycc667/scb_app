import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

import '../../dialogs/custom_alert_dialog.dart';
import '../../theme/app_theme.dart';
import '../../widget/spacer_widget.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showCustomAlertDialog(
        context,
        'Title',
        'Your message here',
        'OK',
        onPressed: () {
          Navigator.pop(context);
        },
      );
    });
  }

  void showCustomAlertDialog(BuildContext context, String title, String message, String buttonText, {VoidCallback? onPressed}) {
    showDialog(
      context: context,
      builder: (_) => CustomAlertDialog(
        title: title,
        message: message,
        buttonText: buttonText,
        onPressed: onPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kLightColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Hola, ",
                      style: TextStyle(
                        color: AppTheme.kDarkColor.withOpacity(1.0),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Text(
                      "Jirvin Johnathan",
                      style: TextStyle(
                        color: AppTheme.kDarkColor.withOpacity(1.0),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
                Text(
                  "¡Bienvenido al futuro financiero!",
                  style: TextStyle(
                    color: AppTheme.kDarkColor.withOpacity(1.0),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0.5,
                  ),
                ),
                BannerCarousel(
                  animation: false,
                  viewportFraction: 1,
                  showIndicator: true,
                  customizedBanners: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppTheme.kDarkColor,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppTheme.kPrimaryColor,
                        border: Border.all(
                          color: AppTheme.kPrimaryColor,
                          width: 2,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppTheme.kSecondaryColor,
                        border: Border.all(
                          color: AppTheme.kSecondaryColor,
                          width: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "AHORROS",
                  style: TextStyle(
                    color: AppTheme.kDarkColor.withOpacity(1.0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
                const SpacerWidget(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 2,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  child: ListTile(
                    trailing: Icon(Icons.arrow_forward_ios, color: AppTheme.kPrimaryColor),
                    title: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ahorro Soles - 023 4566 45666',
                            style: TextStyle(
                              color: AppTheme.kDarkColor.withOpacity(0.4),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                          Text(
                            'S/ 116.89',
                            style: TextStyle(
                              color: AppTheme.kDarkColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                          Text(
                            'Saldo Disponible',
                            style: TextStyle(
                              color: AppTheme.kPrimaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'transfers_to_other_accounts_step_one', arguments: "");
                    },
                  ),
                ),
                const SpacerWidget(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 2,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  child: ListTile(
                    trailing: Icon(Icons.arrow_forward_ios, color: AppTheme.kPrimaryColor),
                    title: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Aportes - 023 4566 457442',
                            style: TextStyle(
                              color: AppTheme.kDarkColor.withOpacity(0.4),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                          Text(
                            'S/ 116.89',
                            style: TextStyle(
                              color: AppTheme.kDarkColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                          Text(
                            'Saldo Disponible',
                            style: TextStyle(
                              color: AppTheme.kPrimaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'transfers_to_other_accounts_step_one', arguments: "");
                    },
                  ),
                ),
                const SpacerWidget(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 2,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  child: ListTile(
                    trailing: Icon(Icons.arrow_forward_ios, color: AppTheme.kPrimaryColor),
                    title: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cts - 023 4566 457677',
                            style: TextStyle(
                              color: AppTheme.kDarkColor.withOpacity(0.4),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                          Text(
                            'S/ 116.89',
                            style: TextStyle(
                              color: AppTheme.kDarkColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                          Text(
                            'Saldo Disponible',
                            style: TextStyle(
                              color: AppTheme.kPrimaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'transfers_to_other_accounts_step_one', arguments: "");
                    },
                  ),
                ),
                const SpacerWidget(),
                Text(
                  "DPF",
                  style: TextStyle(
                    color: AppTheme.kDarkColor.withOpacity(1.0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
                const SpacerWidget(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 2,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  child: ListTile(
                    trailing: Icon(Icons.arrow_forward_ios, color: AppTheme.kPrimaryColor),
                    title: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DPF - 023 4566 4563411',
                            style: TextStyle(
                              color: AppTheme.kDarkColor.withOpacity(0.4),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                          Text(
                            'S/ 116.89',
                            style: TextStyle(
                              color: AppTheme.kDarkColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                          Text(
                            'Saldo Disponible',
                            style: TextStyle(
                              color: AppTheme.kPrimaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'transfers_to_other_accounts_step_one', arguments: "");
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
