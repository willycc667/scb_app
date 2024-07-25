import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../common/dropdownApp.dart';
import '../../../theme/app_theme.dart';
import '../../../widget/button_app.dart';
import '../../../widget/spacer_widget.dart';

class PaymentsOfThirdPartyContributionStepOnePage extends StatefulWidget {
  const PaymentsOfThirdPartyContributionStepOnePage({super.key});

  @override
  State<PaymentsOfThirdPartyContributionStepOnePage> createState() => _PaymentsOfThirdPartyContributionStepOnePageState();
}

class _PaymentsOfThirdPartyContributionStepOnePageState extends State<PaymentsOfThirdPartyContributionStepOnePage> {
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
          "Pago de Aporte de Terceros",
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
                "Identificación :",
                textAlign: TextAlign.start,
                style: AppTheme.headText3Secondary,
              ),
              const SpacerWidget(),
              ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    xs: 3,
                    sm: 3,
                    md: 3,
                    lg: 3,
                    xl: 3,
                    child: DropdownApp(),
                  ),
                  ResponsiveGridCol(
                    xs: 9,
                    sm: 9,
                    md: 9,
                    lg: 9,
                    xl: 9,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0), color: AppTheme.kLightColor),
                      child: TextFormField(
                        style: TextStyle(color: AppTheme.kDarkColor),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                          hintText: 'Número de documento',
                          labelStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
                          hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SpacerWidget(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: AppTheme.kPrimaryColor, backgroundColor: Color(0xFFFF3EFEF), // text color
                  textStyle: TextStyle(color: AppTheme.kPrimaryColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(alignment: Alignment.center, height: 50, child: Text("Buscar")),
                    ),
                  ],
                ),
              ),
              const SpacerWidget(),
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
                  Navigator.pushNamed(context, 'payments_of_third_party_contribution_step_two', arguments: "");
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
