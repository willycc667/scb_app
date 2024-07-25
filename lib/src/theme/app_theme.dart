import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static Color kPrimaryColor = const Color(0xFFFF6501);
  static Color kSecondaryColor = const Color(0xFFA8A8B7);
  static Color kSecondaryDarkColor = const Color(0xFFD66E07);
  static Color kSecondaryLightColor = const Color(0xFFF29D30);
  static Color kTertiaryColor = const Color(0xFF437C37);
  static Color kSuccessColor = const Color(0xFF21B31E);
  static Color kWarningColor = const Color(0xFFF9C035);
  static Color kWarningLightColor = const Color(0xFFFFDC01);
  static Color kDangerColor = const Color(0xFFE32C2D);
  static Color kLightColor = const Color(0xFFFFFFFF);
  static Color kDarkColor = const Color(0xFF000000);
  static Color kBackground = const Color(0xFFFFFFFF);
  static Color kBackgroundInfo = const Color(0xFFDEF1FF);
  static Color kModal = const Color(0xFFA8A8B7);
  static Color kBackgroundTicket = const Color(0xFFF5F7F6);
  static Color kVoucher = const Color(0xFFF5F7F6);

  static double borderRadius = 20;

  static double scaleHeight = 0.9;
  static double scaleWidth = 0.9;

  static double contentMarginTop = 20;
  static double contentMarginBottom = 20;
  static double contentMarginLeft = 20;
  static double contentMarginRight = 20;

  static double spaceHorizontal = 20;
  static double spaceVertical = 20;

  static double minSpaceVerticalButton = 80;

  static double spaceTopForm = 30;
  static double spaceBottomForm = 30;
  static double spaceBetweenTitleAndSubtitle = 22;
  static double spaceBetweenSubTitleAndContent = 30;
  static double spaceBetweenFormElements = 12;
  static double spaceBetweenListElements = 5;

  static TextStyle titleBar = TextStyle(
    color: kPrimaryColor,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );

  static TextStyle headText1Primary = TextStyle(
    color: kPrimaryColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
  );

  static TextStyle headText3Secondary = TextStyle(
    color: kDarkColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  );

  static TextStyle headSuccessSecondary = TextStyle(
    color: kDarkColor,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
  );

  static TextStyle bodySuccessSecondary = TextStyle(
    color: kDarkColor.withOpacity(0.5),
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
  );

  static TextStyle bodyTextPrimary = TextStyle(
    color: kPrimaryColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );

  static TextStyle bodyText2Primary = TextStyle(
    color: kPrimaryColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );

  static TextStyle bodyTextSecondary = TextStyle(
    color: kDarkColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );

  static TextStyle bodyTextTertiary = TextStyle(
    color: kTertiaryColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );

  static TextStyle bodyTextTertiary2 = TextStyle(
    color: kTertiaryColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
    decoration: TextDecoration.underline,
    decorationColor: kTertiaryColor,
    decorationThickness: 1.0,
    decorationStyle: TextDecorationStyle.solid,
  );

  static TextStyle buttonTextPrimary = TextStyle(
    color: kLightColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );

  static TextStyle textSuggestionTitle = TextStyle(
    color: kTertiaryColor,
    fontSize: 22,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );

  static TextStyle textSuggestion = TextStyle(
    color: kDarkColor,
    fontSize: 20,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );

  static TextStyle buttonOutlineText = TextStyle(
    color: kLightColor,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static TextStyle appMessage = TextStyle(
    color: kLightColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle appTitle = TextStyle(
    color: kLightColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
  );

  static TextStyle appTitleClear = TextStyle(
    color: kLightColor.withOpacity(0.7),
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );

  static TextStyle appSubTitle = TextStyle(
    color: kLightColor.withOpacity(0.7),
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );

  static TextStyle appTextMain = TextStyle(
    color: kLightColor,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static TextStyle appTextMainAction = TextStyle(
    color: kLightColor,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  static TextStyle appTextLabel = TextStyle(
    color: kTertiaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );

  static TextStyle appTextValue = TextStyle(
    color: kTertiaryColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );

  static TextStyle appTextLabelLight = TextStyle(
    color: kLightColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );

  static TextStyle appTextValueLight = TextStyle(
    color: kLightColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );

  static InputDecoration appTextField = InputDecoration(
    hintText: '',
    labelText: 'Usuario',
    prefixIcon: Icon(
      Icons.person_outline,
      color: AppTheme.kLightColor,
    ),
    hintStyle: TextStyle(
      color: AppTheme.kLightColor,
    ), //<-- SEE HERE
    labelStyle: TextStyle(
      color: AppTheme.kLightColor,
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppTheme.kLightColor,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppTheme.kLightColor,
      ),
    ),
  );
}
