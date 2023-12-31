import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/app_assets.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/widgets/custom_button.dart';
import 'package:chef_app/core/widgets/custom_image.dart';
import 'package:chef_app/core/widgets/custom_loading_indicator.dart';
import 'package:chef_app/features/auth/peresintation/cubits/forget_password/forget_password_cubit.dart';
import 'package:chef_app/features/auth/peresintation/cubits/forget_password/forget_password_state.dart';
import 'package:chef_app/features/auth/peresintation/cubits/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_text_form_field.dart';

class SendCodeScreen extends StatelessWidget {
  const SendCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        title: Text(
          AppStrings.forgetPassword.tr(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Form(
              key: BlocProvider.of<ForgetPasswordCubit>(context).sendCodeKey,
              child: Column(
                children: [
                  //image
                  Padding(
                    padding: EdgeInsets.only(top: 40.h, bottom: 24.h),
                    child: const CustomImage(imgPath: AppAssets.lock),
                  ),

                  //text
                  Text(AppStrings.sendResetLinkInfo.tr(context)),

                  SizedBox(
                    height: 26.h,
                  ),

                  //textfield
                  CustomTextFormField(
                    controller:
                        BlocProvider.of<LoginCubit>(context).emailController,
                    hint: AppStrings.email.tr(context),
                    validate: (data) {
                      if (data!.isEmpty || !data.contains('@gmail.com')) {
                        return AppStrings.pleaseEnterValidEmail.tr(context);
                      }
                      return null;
                    },
                  ),

                  SizedBox(
                    height: 26.h,
                  ),
                  //button
                  state is SendCodeLoading
                      ? const CustomLoadinIndicator()
                      : CustomButton(
                          onPressed: () {
                            if (BlocProvider.of<ForgetPasswordCubit>(context)
                                .sendCodeKey
                                .currentState!
                                .validate()) {
                              BlocProvider.of<ForgetPasswordCubit>(context)
                                  .sendCode();
                            }
                          },
                          text: AppStrings.sendResetLink.tr(context),
                        ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
