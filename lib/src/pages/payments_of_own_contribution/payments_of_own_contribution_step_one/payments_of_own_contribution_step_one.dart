import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../theme/app_theme.dart';
import '../../../widget/button_app.dart';
import '../../../widget/spacer_widget.dart';

class PaymentsOfOwnContributionStepOnePage extends StatefulWidget {
  const PaymentsOfOwnContributionStepOnePage({super.key});

  @override
  State<PaymentsOfOwnContributionStepOnePage> createState() => _PaymentsOfOwnContributionStepOnePageState();
}

class _PaymentsOfOwnContributionStepOnePageState extends State<PaymentsOfOwnContributionStepOnePage> {
  int _selectedSegment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kLightColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppTheme.kPrimaryColor), // Change the icon and color as needed
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Pago de Aporte",
          style: AppTheme.titleBar,
        ),
        backgroundColor: AppTheme.kLightColor,
        foregroundColor: AppTheme.kPrimaryColor,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SpacerWidget(),
              Text(
                "Aporte",
                textAlign: TextAlign.start,
                style: AppTheme.headText3Secondary,
              ),
              const SpacerWidget(),
              Container(
                height: 45,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: AppTheme.kSecondaryColor,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(child: Text("Cta Aporte - 0100101174486")),
                    Container(
                      child: Text(
                        "Ver",
                        style: TextStyle(color: AppTheme.kPrimaryColor),
                      ),
                    )
                  ],
                ),
              ),
              const SpacerWidget(),
              const SpacerWidget(),
              const SpacerWidget(),
              Text(
                "Cuenta Origen :",
                textAlign: TextAlign.start,
                style: AppTheme.headText3Secondary,
              ),
              const SpacerWidget(),
              Container(
                height: 45,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: AppTheme.kSecondaryColor,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(child: Text("Ahorro Soles - 210 01 6219642")),
                    Container(
                      child: Text(
                        "Cambiar",
                        style: TextStyle(color: AppTheme.kPrimaryColor),
                      ),
                    )
                  ],
                ),
              ),
              const SpacerWidget(),
              const SpacerWidget(),
              const SpacerWidget(),
              Text(
                "Valor Total :",
                textAlign: TextAlign.start,
                style: AppTheme.headText3Secondary,
              ),
              const SpacerWidget(),
              Container(
                height: 45,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: AppTheme.kSecondaryColor,
                    width: 1,
                  ),
                ),
                child: const Row(
                  children: [
                    Expanded(child: Text("S/20.00")),
                  ],
                ),
              ),
              Expanded(child: Container()),
              ButtonApp(
                color: AppTheme.kPrimaryColor,
                textColor: AppTheme.kLightColor,
                text: 'Continuar',
                onPressed: () {
                  Navigator.pushNamed(context, 'payments_of_own_contribution_step_two', arguments: "");
                },
              ),
              const SpacerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
