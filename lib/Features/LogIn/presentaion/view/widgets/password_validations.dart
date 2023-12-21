import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../Core/App_Theme/app_color.dart';
import '../../../../../Core/App_Theme/text_style.dart';

class PasswordValidition extends StatelessWidget {
  const PasswordValidition({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpacialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpacialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At Least 1 lowercase letter', hasLowerCase),
        const Gap(2),
        buildValidationRow('At Least 1 upperCase letter', hasUpperCase),
        const Gap(2),
        buildValidationRow(
            'At Least 1 Spacial Characters', hasSpacialCharacters),
        const Gap(2),
        buildValidationRow('At Least 1 number', hasNumber),
        const Gap(2),
        buildValidationRow('At Least 8 Characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: AppColor.gray,
        ),
        const Gap(6),
        Text(
          text,
          style: AppTextStyle.getFontStyle(
            fontSize: 13,
            color: hasValidated ? AppColor.gray : AppColor.textColor,
            textDecoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: AppColor.green
          ),
        )
      ],
    );
  }
}
