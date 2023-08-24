import 'package:dw_barbershop/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

class HourButton extends StatefulWidget {
  const HourButton({
    super.key,
    required this.label,
    required this.value,
    required this.onHourTapped,
    this.enabledHours,
  });

  final String label;
  final int value;
  final ValueChanged<int> onHourTapped;
  final List<int>? enabledHours;

  @override
  State<HourButton> createState() => _HourButtonState();
}

class _HourButtonState extends State<HourButton> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    final textColor = isSelected ? Colors.white : ColorsConstants.grey;
    var buttonColor = isSelected ? ColorsConstants.brown : Colors.white;
    final buttonBorderColor = isSelected ? ColorsConstants.brown : ColorsConstants.grey;

    final HourButton(:value, :label, enabledHours: enabledHours, :onHourTapped) = widget;

    final disabledHour = enabledHours != null && !enabledHours.contains(value);

    if (disabledHour) {
      buttonColor = Colors.grey[400]!;
    }

    return InkWell(
      onTap: disabledHour
          ? null
          : () => setState(() {
                isSelected = !isSelected;
                onHourTapped(value);
              }),
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 64,
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: buttonColor,
          border: Border.all(color: buttonBorderColor),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
