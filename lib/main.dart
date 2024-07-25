import 'dart:io';

import 'package:flutter/material.dart';
import 'package:scb_app/src/pages/credit_payment/credit_payment_page.dart';
import 'package:scb_app/src/pages/favorites/favorites_page.dart';
import 'package:scb_app/src/pages/fingerprint/fingerprint_page.dart';
import 'package:scb_app/src/pages/home/home_page.dart';
import 'package:scb_app/src/pages/login/login_page.dart';
import 'package:scb_app/src/pages/payments/payment_page.dart';
import 'package:scb_app/src/pages/payments_of_third_party_credit/payments_of_third_party_credit_step_one/payments_of_third_party_credit_step_one.dart';
import 'package:scb_app/src/pages/provident_payment/provident_payment_page.dart';
import 'package:scb_app/src/pages/secure_password/secure_password_page.dart';
import 'package:scb_app/src/pages/sign_up/sign_up_page.dart';
import 'package:scb_app/src/pages/terms_and_conditions/terms_and_conditions_page.dart';
import 'package:scb_app/src/pages/transfers/transfers_page.dart';
import 'package:scb_app/src/pages/transfers_to_other_accounts/transfers_to_other_accounts_step_one/transfers_to_other_accounts_step_one.dart';
import 'package:scb_app/src/pages/voucher/voucher_page.dart';
import 'package:scb_app/src/theme/app_theme.dart';

import 'src/pages/contact_us/contact_us_page.dart';
import 'src/pages/contribution_payment/contribution_payment_page.dart';
import 'src/pages/correct_password/correct_password_page.dart';
import 'src/pages/enter_dynamic_password/enter_dynamic_password_page.dart';
import 'src/pages/forgot_password/forgot_password_page.dart';
import 'src/pages/locate_us/locate_us_page.dart';
import 'src/pages/payments_of_own_contribution/payments_of_own_contribution_step_one/payments_of_own_contribution_step_one.dart';
import 'src/pages/payments_of_own_contribution/payments_of_own_contribution_step_three/payments_of_own_contribution_step_three.dart';
import 'src/pages/payments_of_own_contribution/payments_of_own_contribution_step_two/payments_of_own_contribution_step_two.dart';
import 'src/pages/payments_of_own_credit/payments_of_own_credit_step_one/payments_of_own_credit_step_one.dart';
import 'src/pages/payments_of_own_credit/payments_of_own_credit_step_three/payments_of_own_credit_step_three.dart';
import 'src/pages/payments_of_own_credit/payments_of_own_credit_step_two/payments_of_own_credit_step_two.dart';
import 'src/pages/payments_of_own_provident/payments_of_own_provident_step_one/payments_of_own_provident_step_one.dart';
import 'src/pages/payments_of_own_provident/payments_of_own_provident_step_three/payments_of_own_provident_step_three.dart';
import 'src/pages/payments_of_own_provident/payments_of_own_provident_step_two/payments_of_own_provident_step_two.dart';
import 'src/pages/payments_of_third_party_contribution/payments_of_third_party_contribution_step_one/payments_of_third_party_contribution_step_one.dart';
import 'src/pages/payments_of_third_party_contribution/payments_of_third_party_contribution_step_three/payments_of_third_party_contribution_step_three.dart';
import 'src/pages/payments_of_third_party_contribution/payments_of_third_party_contribution_step_two/payments_of_third_party_contribution_step_two.dart';
import 'src/pages/payments_of_third_party_credit/payments_of_third_party_credit_step_three/payments_of_third_party_credit_step_three.dart';
import 'src/pages/payments_of_third_party_credit/payments_of_third_party_credit_step_two/payments_of_third_party_credit_step_two.dart';
import 'src/pages/payments_of_third_party_provident/payments_of_third_party_provident_step_one/payments_of_third_party_provident_step_one.dart';
import 'src/pages/payments_of_third_party_provident/payments_of_third_party_provident_step_three/payments_of_third_party_provident_step_three.dart';
import 'src/pages/payments_of_third_party_provident/payments_of_third_party_provident_step_two/payments_of_third_party_provident_step_two.dart';
import 'src/pages/security_confirmation/security_confirmation_page.dart';
import 'src/pages/transfers_to_other_accounts/transfers_to_other_accounts_step_three/transfers_to_other_accounts_step_three.dart';
import 'src/pages/transfers_to_other_accounts/transfers_to_other_accounts_step_two/transfers_to_other_accounts_step_two.dart';
import 'src/pages/transfers_to_own_accounts/Transfers to own accounts_step_two/transfers_to_own_accounts_step_two.dart';
import 'src/pages/transfers_to_own_accounts/transfers_to_own_accounts_step_one/transfers_to_own_accounts_step_one.dart';
import 'src/pages/transfers_to_own_accounts/transfers_to_own_accounts_step_three/transfers_to_own_accounts_step_three.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMART',
      navigatorKey: navigatorKey,
      initialRoute: 'login',
      theme: ThemeData(
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(elevation: 0),
        primaryColor: AppTheme.kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        dialogTheme: const DialogTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      routes: {
        'login': (BuildContext context) => const LoginPage(),
        'fingerprint': (BuildContext context) => const FingerPrintPage(),
        'terms-conditions': (BuildContext context) => const TermsAndConditionsPage(),
        'security-confirmation': (BuildContext context) => const SecurityConfirmationPage(),
        'correct-password': (BuildContext context) => const CorrectPasswordPage(),
        'secure-password': (BuildContext context) => const SecurePasswordPage(),
        'sign-up': (BuildContext context) => const SignUpPage(),
        'forgot-password': (BuildContext context) => const ForgotPasswordPage(),
        'locate-us': (BuildContext context) => const LocateUsPage(),
        'contact-us': (BuildContext context) => const ContactUsPage(),
        'enter-password': (BuildContext context) => const EnterDynamicPasswordPage(),
        'home': (BuildContext context) => const HomePage(),
        'transfers': (BuildContext context) => const TransfersPage(
              appBar: true,
            ),
        'payment': (BuildContext context) => const PaymentsPage(
              appBar: true,
            ),
        'favorites': (BuildContext context) => const FavoritesPage(),
        'transfers_to_own_accounts_step_one': (BuildContext context) => const TransfersToOwnAccountsStepOnePage(),
        'transfers_to_own_accounts_step_two': (BuildContext context) => const TransfersToOwnAccountsStepTwoPage(),
        'transfers_to_own_accounts_step_three': (BuildContext context) => const TransfersToOwnAccountsStepThreePage(),
        'voucher': (BuildContext context) => const VoucherPage(),
        'transfers_to_other_accounts_step_one': (BuildContext context) => const TransfersToOtherAccountsStepOnePage(),
        'Transfers_to_other_accounts_step_two': (BuildContext context) => const TransfersToOtherAccountsStepTwoPage(),
        'Transfers_to_other_accounts_step_three': (BuildContext context) => const TransfersToOtherAccountsStepThreePage(),
        'contribution_payment': (BuildContext context) => const ContributionPaymentPage(),
        'provident_payment': (BuildContext context) => const ProvidentPaymentPage(),
        'credit_payment': (BuildContext context) => const CreditPaymentPage(),
        'payments_of_own_contribution_step_one': (BuildContext context) => const PaymentsOfOwnContributionStepOnePage(),
        'payments_of_own_contribution_step_two': (BuildContext context) => const PaymentsOfOwnContributionStepTwoPage(),
        'payments_of_own_contribution_step_three': (BuildContext context) => const PaymentsOfOwnContributionStepThreePage(),
        'payments_of_third_party_contribution_step_one': (BuildContext context) => const PaymentsOfThirdPartyContributionStepOnePage(),
        'payments_of_third_party_contribution_step_two': (BuildContext context) => const PaymentsOfThirdPartyContributionStepTwoPage(),
        'payments_of_third_party_contribution_step_three': (BuildContext context) => const PaymentsOfThirdPartyContributionStepThreePage(),
        'payments_of_own_provident_step_one': (BuildContext context) => const PaymentsOfOwnProvidentStepOnePage(),
        'payments_of_own_provident_step_two': (BuildContext context) => const PaymentsOfOwnProvidentStepTwoPage(),
        'payments_of_own_provident_step_three': (BuildContext context) => const PaymentsOfOwnProvidentStepThreePage(),
        'payments_of_third_party_provident_step_one': (BuildContext context) => const PaymentsOfThirdPartyProvidentStepOnePage(),
        'payments_of_third_party_provident_step_two': (BuildContext context) => const PaymentsOfThirdPartyProvidentStepTwoPage(),
        'payments_of_third_party_provident_step_three': (BuildContext context) => const PaymentsOfThirdPartyProvidentStepThreePage(),
        'payments_of_own_credit_step_one': (BuildContext context) => const PaymentsOfOwnCreditStepOnePage(),
        'payments_of_own_credit_step_two': (BuildContext context) => const PaymentsOfOwnCreditStepTwoPage(),
        'payments_of_own_credit_step_three': (BuildContext context) => const PaymentsOfOwnCreditStepThreePage(),
        'payments_of_third_party_credit_step_one': (BuildContext context) => const PaymentsOfThirdPartyCreditStepOnePage(),
        'payments_of_third_party_credit_step_two': (BuildContext context) => const PaymentsOfThirdPartyCreditStepTwoPage(),
        'payments_of_third_party_credit_step_three': (BuildContext context) => const PaymentsOfThirdPartyCreditStepThreePage(),
      },
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
