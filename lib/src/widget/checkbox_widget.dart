import 'package:flutter/material.dart';
import 'package:scb_app/src/theme/app_theme.dart';

class CheckboxWidget extends StatefulWidget {
  final bool initialValue;
  final Function(bool) onChanged;

  CheckboxWidget({required this.initialValue, required this.onChanged});

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {
          setState(() {
            isChecked = !isChecked;
            widget.onChanged(isChecked);
          });
        },
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              width: 1.0,
              color: AppTheme.kTertiaryColor,
            ),
            color: isChecked ? AppTheme.kTertiaryColor : Colors.transparent,
          ),
          child: isChecked
              ? const Icon(
                  Icons.check,
                  size: 20.0,
                  color: Colors.white,
                )
              : null,
        ),
      ),
    );
  }
}
