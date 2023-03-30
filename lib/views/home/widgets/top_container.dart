import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:robbin_hood_google_soln/views/register/register.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/custom_text.dart';
import '../../google_map/google_map.dart';

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
          TextImageContainer(
            text: "Join",
            image: "assets/images/robin.png",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterScreen()));
            },
          ),
          SizedBox(width: 10.w),
          TextImageContainer(
            text: "Share\nFood",
            image: "assets/images/share_food.png",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ShopMaps()));
            },
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
    required this.onTap,
  });
  final String text;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: FittedBox(
        child: Container(
          height: 0.1.sh,
          width: 0.42.sw,
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
      ),
    );
  }
}
