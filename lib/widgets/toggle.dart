import 'package:flutter/material.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

Widget rollingIconBuilder(int? value, bool foreground) {
  return Icon(iconDataByValue(value));
}

IconData iconDataByValue(int? value) => switch (value) {
      0 => Icons.light_mode_rounded,
      1 => Icons.dark_mode_rounded,
      2 => Icons.auto_mode_rounded,
      _ => Icons.auto_awesome_motion_rounded,
    };

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({super.key});

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  int value = 0;
  int? nullableValue;
  @override
  Widget build(BuildContext context) {
    return AnimatedToggleSwitch<int?>.rolling(
      current: nullableValue,
      allowUnlistedValues: true,
      values: const [0, 1, 2],
      onTap: (info) {
        if (nullableValue == info.tapped?.value) {
          setState(() => nullableValue = null);
        }
      },
      onChanged: (i) => setState(() => nullableValue = i),
      iconBuilder: rollingIconBuilder,
      borderWidth: 4.5,
      style: ToggleStyle(
        indicatorColor: Colors.black,
        backgroundGradient:
            const LinearGradient(colors: [Colors.red, Colors.blue]),
        borderColor: Colors.transparent,
      ),
      height: 55,
      spacing: 20.0,
      //loading: loading,
    );
  }
}
