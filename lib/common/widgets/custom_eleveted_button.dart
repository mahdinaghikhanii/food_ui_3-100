import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomElevetedButtonmWidgets extends StatelessWidget {
  final Function() ontap;
  final String text;
  final Color? buttonColor;
  final Color? forgerandColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? icon;
  final double? borderRadius;
  const CustomElevetedButtonmWidgets(
      {super.key,
      required this.ontap,
      required this.text,
      this.buttonColor,
      this.forgerandColor,
      this.textColor,
      this.fontSize,
      this.fontWeight,
      this.icon,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
            ),
            backgroundColor:
                buttonColor ?? Theme.of(context).colorScheme.primary,
            foregroundColor: forgerandColor ?? Colors.white),
        onPressed: ontap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: fontSize ?? 20,
                    fontWeight: fontWeight ?? FontWeight.w700,
                    color: textColor ?? const Color(0xFF2F3545))),
            icon != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: SvgPicture.asset(
                      icon!,
                      width: 15,
                    ),
                  )
                : const SizedBox()
          ],
        ));
  }
}
