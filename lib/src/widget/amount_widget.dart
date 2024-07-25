import 'package:flutter/material.dart';

class AmountWidget extends StatelessWidget {
  final String? currency;
  final String? entirePart;
  final String? decimalPart;
  final Color? color;
  final double? size;
  const AmountWidget(
      {super.key,
      this.currency,
      this.entirePart,
      this.decimalPart,
      this.color,
      this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "$currency ",
            style: TextStyle(
              fontSize: size ?? 16,
              fontWeight: FontWeight.bold,
              color: color,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 3.0,
                ),
              ],
            ),
          ),
          Text(
            "$entirePart.",
            style: TextStyle(
              fontSize: size ?? 16,
              fontWeight: FontWeight.bold,
              color: color,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 3.0,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 1),
            child: Text(
              "$decimalPart",
              style: TextStyle(
                fontSize: (size! - 4),
                fontWeight: FontWeight.bold,
                color: color,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 3.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
