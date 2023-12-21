import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../App_Theme/app_color.dart';
import '../App_Theme/text_style.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.label, this.onPressed});
  final String label;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      splashColor: AppColor.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(21),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 3),
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColor.primary,
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: AppTextStyle.getFontStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.white),
          ),
        ),
      ),
    );
  }
}
