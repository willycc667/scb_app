import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scb_app/src/pages/favorites/favorites_page.dart';
import 'package:scb_app/src/pages/payments/payment_page.dart';
import 'package:scb_app/src/pages/start/start_page.dart';
import 'package:scb_app/src/pages/transfers/transfers_page.dart';

import '../../theme/app_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;

  bool isPayment = false;

  final List<Widget> _pages = [
    const StartPage(),
    const TransfersPage(
      appBar: false,
    ),
    const PaymentsPage(
      appBar: false,
    ),
    const FavoritesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kLightColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 10),
        child: Material(
          elevation: 2,
          child: AppBar(
            automaticallyImplyLeading: false,
            title: const Image(
              image: AssetImage('assets/images/ic_logo_mini.png'),
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomLeft,
            ),
            backgroundColor: AppTheme.kLightColor,
            foregroundColor: AppTheme.kPrimaryColor,
            iconTheme: IconThemeData(color: AppTheme.kPrimaryColor),
          ),
        ),
      ),
      body: _pages[_currentIndex],
      endDrawer: Drawer(
        backgroundColor: AppTheme.kLightColor,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            ListTile(
              trailing: Image.asset('assets/images/ic_close_drawer.png', color: AppTheme.kPrimaryColor),
              title: const Text(''),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Image.asset('assets/images/ic_accounts.png', color: AppTheme.kPrimaryColor),
              title: Text(
                'Mis cuentas',
                style: AppTheme.headText3Secondary,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/images/ic_transfers.png', color: AppTheme.kPrimaryColor),
              title: Text(
                'Transferencias',
                style: AppTheme.headText3Secondary,
              ),
              onTap: () {
                Navigator.pushNamed(context, 'transfers', arguments: "");
              },
            ),
            ListTile(
              leading: Image.asset('assets/images/ic_payments.png', color: AppTheme.kPrimaryColor),
              title: Text(
                'Pagos',
                style: AppTheme.headText3Secondary,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/images/ic_operation.png', color: AppTheme.kPrimaryColor),
              title: Text(
                'Operaciones frecuentes',
                style: AppTheme.headText3Secondary,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/images/ic_register.png', color: AppTheme.kPrimaryColor),
              title: Text(
                'Registrar candidato a delegado',
                style: AppTheme.headText3Secondary,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets/images/ic_settings.png', color: AppTheme.kPrimaryColor),
              title: Text(
                'Configuración',
                style: AppTheme.headText3Secondary,
              ),
              onTap: () {},
            ),
            Expanded(
              child: Container(
                height: 200,
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/ic_exist.png', color: AppTheme.kPrimaryColor),
              title: Text(
                'Cerrar Sesión',
                style: AppTheme.headText3Secondary,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppTheme.kPrimaryColor,
        unselectedItemColor: AppTheme.kSecondaryColor, //
        backgroundColor: AppTheme.kBackground,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/ic_home.png', color: _currentIndex == 0 ? AppTheme.kPrimaryColor : AppTheme.kSecondaryColor),
            label: 'Inicio',
            backgroundColor: AppTheme.kBackground,
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/ic_transfers.png', color: _currentIndex == 1 ? AppTheme.kPrimaryColor : AppTheme.kSecondaryColor),
            label: 'Transferencias',
            backgroundColor: AppTheme.kBackground,
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/ic_payments.png', color: _currentIndex == 2 ? AppTheme.kPrimaryColor : AppTheme.kSecondaryColor),
            label: 'Pagos',
            backgroundColor: AppTheme.kBackground,
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/ic_favorites.png', color: _currentIndex == 3 ? AppTheme.kPrimaryColor : AppTheme.kSecondaryColor),
            label: 'Favoritos',
            backgroundColor: AppTheme.kBackground,
          ),
        ],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
