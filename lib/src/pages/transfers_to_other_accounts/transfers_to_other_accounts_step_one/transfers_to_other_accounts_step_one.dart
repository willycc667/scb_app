import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../theme/app_theme.dart';
import '../../../widget/button_app.dart';
import '../../../widget/spacer_widget.dart';

class TransfersToOtherAccountsStepOnePage extends StatefulWidget {
  const TransfersToOtherAccountsStepOnePage({super.key});

  @override
  State<TransfersToOtherAccountsStepOnePage> createState() => _TransfersToOtherAccountsStepOnePageState();
}

class _TransfersToOtherAccountsStepOnePageState extends State<TransfersToOtherAccountsStepOnePage> {
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
          "Transferencias a otras cuentas",
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
                      child: const Text('CSCB'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: (MediaQuery.of(context).size.width - 40) / 2,
                      child: const Text('Otro Banco'),
                    ),
                  ],
                ),
              ),
              const SpacerWidget(),
              Text(
                "Ingrese el número de cuenta destino",
                textAlign: TextAlign.start,
                style: AppTheme.headText3Secondary,
              ),
              const TextField(
                decoration: InputDecoration(
                  filled: false,
                  prefixText: '',
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
                "Tipo de cuenta destino",
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
                    Expanded(child: Text("Ahorro Soles")),
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
                  Navigator.pushNamed(context, 'Transfers_to_other_accounts_step_two', arguments: "");
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
