import 'package:flutter/material.dart';
import 'package:mo_you_tube/presentation/resources/color_manager.dart';

import 'package:mo_you_tube/presentation/resources/font_manager.dart';
import 'package:mo_you_tube/presentation/resources/strings_manager.dart';
import 'package:mo_you_tube/presentation/resources/styles_manager.dart';

import '../../../../../resources/assets_manager.dart';
import '../../../../../resources/values_manager.dart';

class CustomGoogleAccount extends StatelessWidget {
  const CustomGoogleAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            ImageAssets.profileIcon,
            height: AppSize.s50,
            width: AppSize.s50,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: AppSize.s8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height:AppSize.s8,
              ),
              Text(
                AppStrings.userName,
                style: getRegularStyleTheme(
                  fontSize: FontSize.s15,
                ),
              ),
              const SizedBox(
                height: AppSize.s6,
              ),
              Text(
                AppStrings.userHandle,
                style: getRegularStyleTheme(
                  fontSize: FontSize.s15,
                ),
              ),
              const SizedBox(
                height: AppSize.s6,
              ),
              Text(
                AppStrings.manageYourGoogleAccount,
                style: getRegularStyle(
                  fontSize: FontSize.s14,
                  color: ColorManager.blue,
                ),
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
        ],
      ),
    );
  }
}
