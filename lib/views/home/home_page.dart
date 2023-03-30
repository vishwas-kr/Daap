import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:robbin_hood_google_soln/utils/app_colors.dart';
import 'package:robbin_hood_google_soln/utils/custom_text.dart';
import 'package:robbin_hood_google_soln/utils/temp_data.dart';
import 'package:robbin_hood_google_soln/views/home/widgets/contribute_food.dart';
import 'package:robbin_hood_google_soln/views/home/widgets/swip_banner.dart';

import 'widgets/top_container.dart';
import 'widgets/top_story.dart';

class RobinHoodHomePage extends StatelessWidget {
  const RobinHoodHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          "📍 Mumbai",
          style: TextStyle(color: AppColors.fontColor),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(TempData.profileImage),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SwipeBanner(),
            const TopContainer(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: customStyleText(
                  text: "Top Stories", isBold: true, size: 16.sp),
            ),
            const SizedBox(height: 10),
            const TopStories(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: customStyleText(
                  text: "Contribute Food", isBold: true, size: 16.sp),
            ),
            const ContributeFood(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
