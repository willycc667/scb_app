import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../theme/app_theme.dart';
import '../../../widget/button_app.dart';
import '../../../widget/spacer_widget.dart';

class PaymentsOfThirdPartyCreditStepTwoPage extends StatefulWidget {
  const PaymentsOfThirdPartyCreditStepTwoPage({super.key});

  @override
  State<PaymentsOfThirdPartyCreditStepTwoPage> createState() => _PaymentsOfThirdPartyCreditStepTwoPageState();
}

class _PaymentsOfThirdPartyCreditStepTwoPageState extends State<PaymentsOfThirdPartyCreditStepTwoPage> {
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
          "Pago de Crédito a Terceros",
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
              const Text(
                "A Santo Cristo de Bagazán",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 16),
              ),
              const SpacerWidget(),
              Text(
                "Elige la moneda",
                textAlign: TextAlign.start,
                style: AppTheme.headText3Secondary,
              ),
              const SpacerWidget(),
              SizedBox(
                height: 35,
                child: ToggleButtons(
                  selectedColor: AppTheme.kLightColor,
                  focusColor: AppTheme.kPrimaryColor,
                  fillColor: AppTheme.kPrimaryColor,
                  onPressed: (int index) {
                    setState(() {
                      _selectedSegment = index;
                    });
                  },
                  isSelected: [
                    _selectedSegment == 0,
                    _selectedSegment == 1,
                  ],
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: (MediaQuery.of(context).size.width - 40) / 2,
                      child: const Text('Soles'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: (MediaQuery.of(context).size.width - 40) / 2,
                      child: const Text('Dólares'),
                    ),
                  ],
                ),
              ),
              const SpacerWidget(),
              const SpacerWidget(),
              const SpacerWidget(),
              Text(
                "Pagar desde :",
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
              Expanded(child: Container()),
              ButtonApp(
                color: AppTheme.kPrimaryColor,
                textColor: AppTheme.kLightColor,
                text: 'Continuar',
                onPressed: () {
                  Navigator.pushNamed(context, 'payments_of_third_party_credit_step_three', arguments: "");
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
