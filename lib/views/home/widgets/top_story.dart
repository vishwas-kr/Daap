import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/custom_text.dart';

class TopStories extends StatelessWidget {
  const TopStories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.3.sh,
      width: double.maxFinite,
      padding: EdgeInsets.all(8.w),
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.lightYellow,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              height: 100.h,
              width: double.maxFinite,
              child: Image.network(
                "https://media.istockphoto.com/id/826001090/photo/muslim-men-organize-common-charity-activities-on-the-streets-of-local-mosques.jpg?s=612x612&w=0&k=20&c=OSxwtaxKWpm6KCevrAq4_M43Y6yRmm1dz7EBdjHzIno=",
                fit: BoxFit.cover,
              ),
            ),
          ),
          customStyleText(
            text: 'Hunger Help',
            isBold: true,
          ),
          const Text(
            "Roobin hood members prvided meals to needy people...",
            style: TextStyle(
              color: AppColors.fontColor2,
              letterSpacing: 1,
            ),
          )
        ],
      ),
    );
  }
}
