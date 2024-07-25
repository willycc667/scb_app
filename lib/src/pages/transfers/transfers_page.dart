import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../widget/spacer_widget.dart';

class TransfersPage extends StatefulWidget {
  final bool appBar;

  const TransfersPage({super.key, required this.appBar});

  @override
  State<TransfersPage> createState() => _TransfersPageState();
}

class _TransfersPageState extends State<TransfersPage> {
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
              title: const Text("Transferencias"),
              backgroundColor: AppTheme.kLightColor,
              foregroundColor: AppTheme.kPrimaryColor,
            )
          : null,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 2,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Image.asset('assets/images/ic_transfers.png', color: AppTheme.kPrimaryColor),
                  trailing: Icon(Icons.arrow_forward_ios, color: AppTheme.kPrimaryColor),
                  title: Text(
                    'Entre mis cuentas',
                    style: AppTheme.headText3Secondary,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'transfers_to_own_accounts_step_one', arguments: "");
                  },
                ),
              ),
              const SpacerWidget(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 2,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Image.asset('assets/images/ic_another_account.png', color: AppTheme.kPrimaryColor),
                  trailing: Icon(Icons.arrow_forward_ios, color: AppTheme.kPrimaryColor),
                  title: Text(
                    'A otras cuentas',
                    style: AppTheme.headText3Secondary,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'transfers_to_other_accounts_step_one', arguments: "");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
