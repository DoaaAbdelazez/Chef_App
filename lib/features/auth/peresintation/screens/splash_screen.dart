import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/routes/app_routes.dart';
import 'package:chef_app/core/utils/app_assets.dart';
import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/utils/commons.dart';
import 'package:chef_app/core/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateAfterThreeSeconds();
    super.initState();
  }

  void navigateAfterThreeSeconds() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      navigate(context: context, route: Routes.chngeLang);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImage(
              imgPath: AppAssets.appLogo,
              h: 120.h,
              w: 120.w,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              AppStrings.chefApp.tr(context),
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: AppColors.black,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
