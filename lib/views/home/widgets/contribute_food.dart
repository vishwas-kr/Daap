import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:robbin_hood_google_soln/views/google_map/google_map.dart';
import 'package:robbin_hood_google_soln/views/register/register.dart';

import '../../../utils/app_colors.dart';

class ContributeFood extends StatelessWidget {
  const ContributeFood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "If you manage a restaurant or generally want to contribute regular meals from your family or workplace, let’s connect.",
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.fontColor2,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text("Let's Connect"))
        ],
      ),
    );
  }
}
