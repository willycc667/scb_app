import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

class PaymentsPage extends StatefulWidget {
  final bool appBar;
  const PaymentsPage({super.key, required this.appBar});

  @override
  State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  final List<String> items = ["Pago de Aporte", "Pago de Previsión", "Pago de Crédito"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kLightColor,
      appBar: widget.appBar
          ? AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: AppTheme.kPrimaryColor), // Change the icon and color as needed
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: const Text("Pagos"),
              backgroundColor: AppTheme.kLightColor,
              foregroundColor: AppTheme.kPrimaryColor,
            )
          : null,
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
                      Navigator.pushNamed(context, 'contribution_payment', arguments: "");
                      break;
                    case 1:
                      Navigator.pushNamed(context, 'provident_payment', arguments: "");
                      break;
                    case 2:
                      Navigator.pushNamed(context, 'credit_payment', arguments: "");
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
