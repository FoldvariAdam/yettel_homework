import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isPrimary;
  final bool disabled;

  const AppButton.primary({required this.text, required this.onPressed, this.disabled = false, super.key})
    : isPrimary = true;

  const AppButton.secondary({
    required this.text,
    required this.onPressed,
    this.disabled = false,
    super.key,
  }) : isPrimary = false;

  @override
  Widget build(BuildContext context) {
    final BorderRadius radius = BorderRadius.circular(100);
    final bool isEnabled = !disabled;

    const primaryEnabledBg = Color(0xFF002340);
    const primaryDisabledBg = Color(0xFFD3D9DE);
    const primaryDisabledText = Color(0xFF7A8A99);

    const secondaryEnabledText = Color(0xFF002340);
    const secondaryDisabledText = Color(0xFFD3D9DE);
    const secondaryEnabledBorder = Color(0xFF002340);
    const secondaryDisabledBorder = Color(0xFFD3D9DE);

    final backgroundColor =
        isPrimary ? (isEnabled ? primaryEnabledBg : primaryDisabledBg) : Colors.white;

    final textColor =
        isPrimary
            ? (isEnabled ? Colors.white : primaryDisabledText)
            : (isEnabled ? secondaryEnabledText : secondaryDisabledText);

    final borderColor =
        isPrimary
            ? Colors.transparent
            : (isEnabled ? secondaryEnabledBorder : secondaryDisabledBorder);

    return SizedBox(
      width: double.infinity,
      child: Material(
        color: backgroundColor,
        borderRadius: radius,
        child: InkWell(
          onTap: isEnabled ? onPressed : null,
          borderRadius: radius,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              border: Border.all(color: borderColor, width: 1.5),
              borderRadius: radius,
            ),
            child: Center(
              child: Text(text, style: TextStyle(fontWeight: FontWeight.w700, color: textColor)),
            ),
          ),
        ),
      ),
    );
  }
}
