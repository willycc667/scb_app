import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class ContributionPaymentPage extends StatefulWidget {
  const ContributionPaymentPage({super.key});

  @override
  State<ContributionPaymentPage> createState() => _ContributionPaymentPageState();
}

class _ContributionPaymentPageState extends State<ContributionPaymentPage> {
  final List<String> items = ["Pago de Aportes Propios", "Pago de Aportes de Terceros"];

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
          margin: const EdgeInsets.all(10),
          child: ListView.separated(
            itemCount: items.length,
            separatorBuilder: (BuildContext context, int index) => const Divider(),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  items[index],
                  style: AppTheme.headText3Secondary,
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: AppTheme.kPrimaryColor),
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.pushNamed(context, 'payments_of_own_contribution_step_one', arguments: "");
                      break;
                    case 1:
                      Navigator.pushNamed(context, 'payments_of_third_party_contribution_step_one', arguments: "");
                      break;
                    default:
                      break;
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
