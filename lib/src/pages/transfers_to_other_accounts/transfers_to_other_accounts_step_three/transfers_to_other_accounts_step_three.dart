import 'package:flutter/material.dart';

import '../../../dialogs/code_alert_dialog.dart';
import '../../../theme/app_theme.dart';
import '../../../widget/button_app.dart';
import '../../../widget/spacer_widget.dart';

class TransfersToOtherAccountsStepThreePage extends StatefulWidget {
  const TransfersToOtherAccountsStepThreePage({super.key});

  @override
  State<TransfersToOtherAccountsStepThreePage> createState() => _TransfersToOtherAccountsStepThreePageState();
}

class _TransfersToOtherAccountsStepThreePageState extends State<TransfersToOtherAccountsStepThreePage> {
  int _selectedSegment = 0;
  bool _switchValue = false;
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
              Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Estás a un paso de",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "realizar tu transferencia",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 1,
                      color: AppTheme.kSecondaryColor,
                      width: 150,
                    )
                  ],
                ),
              ),
              const SpacerWidget(),
              const SpacerWidget(),
              const SpacerWidget(),
              Text(
                "Confirma la información :",
                textAlign: TextAlign.start,
                style: AppTheme.headText3Secondary,
              ),
              const SpacerWidget(),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CUENTA CARGO",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black.withOpacity(0.5)),
                    ),
                    const Text(
                      "Ahorro Soles",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    const Text(
                      "210 01 6219642",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: 1,
                      color: AppTheme.kSecondaryColor,
                    )
                  ],
                ),
              ),
              const SpacerWidget(),
              const SpacerWidget(),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CUENTA DESTINO",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black.withOpacity(0.5)),
                    ),
                    const Text(
                      "Dataia Innovacion & Tegnologia",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    const Text(
                      "210 01 6219645",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: 1,
                      color: AppTheme.kSecondaryColor,
                    )
                  ],
                ),
              ),
              const SpacerWidget(),
              const SpacerWidget(),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "MONEDA Y MONTO",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black.withOpacity(0.5)),
                    ),
                    const Text(
                      "S/ 100.00",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              const SpacerWidget(),
              const SpacerWidget(),
              Container(
                height: 53,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    width: 0.1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 2,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(child: Text("Guardar Operación frecuente")),
                    Container(
                      child: Switch(
                        value: _switchValue,
                        onChanged: (bool newValue) {
                          setState(() {
                            _switchValue = newValue;
                          });
                        },
                        activeColor: AppTheme.kPrimaryColor.withOpacity(0.5), // Color cuando está activado
                        inactiveTrackColor: Colors.grey, // Color del riel cuando está desactivado
                        activeTrackColor: AppTheme.kPrimaryColor, // Color del riel cuando está activado
                        inactiveThumbColor: Colors.white,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(child: Container()),
              ButtonApp(
                color: AppTheme.kPrimaryColor,
                textColor: AppTheme.kLightColor,
                text: 'Confirmar',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => CodeAlertDialog(
                      title: "",
                      message: "",
                      buttonText: "",
                      onPressed: () {
                        Navigator.pushNamed(context, 'voucher', arguments: "");
                      },
                    ),
                  );
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
