import 'package:flutter/material.dart';
import 'package:scb_app/src/theme/app_theme.dart';

class DropdownApp extends StatefulWidget {
  const DropdownApp({super.key});

  @override
  State<DropdownApp> createState() => _DropdownAppState();
}

class _DropdownAppState extends State<DropdownApp> {
  String _selectedItem = 'DNI';

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: AppTheme.kLightColor,
      onSelected: (value) {
        setState(() {
          _selectedItem = value.toString();
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        PopupMenuItem(
          value: 'PAS',
          child: Text(
            'PAS',
            style: TextStyle(
              color: AppTheme.kDarkColor,
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        PopupMenuItem(
          value: 'DNI',
          child: Text(
            'DNI',
            style: TextStyle(
              color: AppTheme.kDarkColor,
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
      child: Container(
        margin: const EdgeInsets.only(top: 0, right: 5),
        height: 53,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            color: AppTheme.kTertiaryColor,
            width: 1.0,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _selectedItem,
                style: TextStyle(
                  color: AppTheme.kDarkColor.withOpacity(0.9),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: AppTheme.kDarkColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
