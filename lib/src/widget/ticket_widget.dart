import 'package:flutter/material.dart';
import 'package:scb_app/src/theme/app_theme.dart';

class TicketWidget extends StatelessWidget {
  const TicketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            "assets/images/ic_ticket_top.png",
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10, left: 10),
          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          color: AppTheme.kBackgroundTicket,
          width: MediaQuery.of(context).size.width - 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Huella digital",
                style: AppTheme.headSuccessSecondary,
              ),
              Text(
                "Habilitado",
                style: AppTheme.bodySuccessSecondary,
              ),
              Text(
                "E-mail",
                style: AppTheme.headSuccessSecondary,
              ),
              Text(
                "jirv***********@gmail.com",
                style: AppTheme.bodySuccessSecondary,
              ),
            ],
          ),
        ),
        Center(
          child: Image.asset(
            "assets/images/ic_ticket_bottom.png",
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ],
    );
  }
}
