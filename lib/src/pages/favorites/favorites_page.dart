import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../widget/button_app.dart';
import '../../widget/spacer_widget.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("En construccion"),
        ),
      ),
    );
  }
}
