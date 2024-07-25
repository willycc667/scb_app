import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../theme/app_theme.dart';
import '../../../widget/button_app.dart';
import '../../../widget/spacer_widget.dart';

class TransfersToOwnAccountsStepOnePage extends StatefulWidget {
  const TransfersToOwnAccountsStepOnePage({super.key});

  @override
  State<TransfersToOwnAccountsStepOnePage> createState() => _TransfersToOwnAccountsStepOnePageState();
}

class _TransfersToOwnAccountsStepOnePageState extends State<TransfersToOwnAccountsStepOnePage> {
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
          "Transferencias a cuentas propias",
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
              Text(
                "Ingrese el monto a transferir",
                textAlign: TextAlign.start,
                style: AppTheme.headText3Secondary,
              ),
              const SpacerWidget(),
              const TextField(
                decoration: InputDecoration(
                  filled: false,
                  prefixText: 'S/',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SpacerWidget(),
              const SpacerWidget(),
              const SpacerWidget(),
              Text(
                " Transfiere  desde",
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
                  Navigator.pushNamed(context, 'transfers_to_own_accounts_step_two', arguments: "");
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
