import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/custom_text.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.1.sh,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TextImageContainer(
            text: "Join",
            image: "assets/images/robin.png",
          ),
          SizedBox(width: 10.w),
          const TextImageContainer(
            text: "Share\nFood",
            image: "assets/images/share_food.png",
          ),
        ],
      ),
    );
  }
}

class TextImageContainer extends StatelessWidget {
  const TextImageContainer({
    super.key,
    required this.text,
    required this.image,
  });
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 0.1.sh,
        width: 0.5.sw,
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
            )
          ],
          color: AppColors.lightGreen,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: customStyleText(
                text: text,
                letterSpacing: 1,
                maxlines: 2,
                isBold: true,
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
                height: 45.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}
