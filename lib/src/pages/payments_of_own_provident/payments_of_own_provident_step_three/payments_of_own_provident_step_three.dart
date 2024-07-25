import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';
import '../../../widget/spacer_widget.dart';

class PaymentsOfOwnProvidentStepThreePage extends StatefulWidget {
  const PaymentsOfOwnProvidentStepThreePage({super.key});

  @override
  State<PaymentsOfOwnProvidentStepThreePage> createState() => _PaymentsOfOwnProvidentStepThreePageState();
}

class _PaymentsOfOwnProvidentStepThreePageState extends State<PaymentsOfOwnProvidentStepThreePage> {
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
          "",
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
                    const Text(
                      "Constancia",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 1,
                      color: AppTheme.kSecondaryColor,
                      width: 80,
                    )
                  ],
                ),
              ),
              const SpacerWidget(),
              const SpacerWidget(),
              const SpacerWidget(),
              Center(
                child: Image.asset(
                  "assets/images/ic_success.png",
                  width: 75.0,
                  height: 75.0,
                ),
              ),
              const SpacerWidget(),
              const Center(
                child: Text(
                  "Transferiste",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ),
              const SpacerWidget(),
              Center(
                child: Text(
                  "S/ 100.00",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.normal,
                    color: AppTheme.kPrimaryColor,
                  ),
                ),
              ),
              const SpacerWidget(),
              const Center(
                child: Text(
                  "Gratis e inmediato",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SpacerWidget(),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppTheme.kVoucher,
                  borderRadius: BorderRadius.circular(10.0), // Ajusta el valor según sea necesario
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Titular del Crédito",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      "Jirvin Gamarra Nicolas",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    const SpacerWidget(),
                    const SpacerWidget(),
                    Text("Cuenta Cargo :",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      "Ahorro Soles ",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "210 01 6219642",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    const SpacerWidget(),
                    const SpacerWidget(),
                    Text("Operación",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      "Pago de Aporte",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    const SpacerWidget(),
                    const SpacerWidget(),
                    Text("Fecha y hora :",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      "23 Oct 2023    11:30 AM",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    const SpacerWidget(),
                    const SpacerWidget(),
                    Text("Código de operación",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      "0225921",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              const SpacerWidget(),
              const SpacerWidget(),
              const SpacerWidget(),
              const SpacerWidget(),
              Center(
                child: Text(
                  "Enviar Constancia",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: AppTheme.kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
