import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mo_you_tube/presentation/main/pages/profile/view/widgets/custom_line.dart';
import 'package:mo_you_tube/presentation/main/pages/profile/view/widgets/custom_row_item_profile.dart';
import 'package:mo_you_tube/presentation/main/widgets/theme/theme_cubit.dart';
import 'package:mo_you_tube/presentation/resources/assets_manager.dart';
import 'package:mo_you_tube/presentation/resources/color_manager.dart';
import 'package:mo_you_tube/presentation/resources/strings_manager.dart';
import 'package:mo_you_tube/presentation/resources/styles_manager.dart';

import '../../../../../resources/routes_manager.dart';
import '../../../../../resources/values_manager.dart';

class CustomProfileItemsBody extends StatelessWidget {
  const CustomProfileItemsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, theme) {
        final isDarkTheme = theme.brightness == Brightness.dark;
        return Expanded(
          child: Column(
            children: [
              const SizedBox(height: AppSize.s30),
              RowItemProfile(
                imagePath: ImageAssets.channel,
                text: AppStrings.yourChannel,
                width: AppSize.s25,
                height: AppSize.s25,
                onTap: () {},
              ),
              RowItemProfile(
                imagePath: ImageAssets.incognito,
                text: AppStrings.turnOnIncognito,
                width: AppSize.s25,
                height: AppSize.s25,
                onTap: () {},
              ),
              RowItemProfile(
                imagePath: ImageAssets.user,
                text: AppStrings.addAccount,
                width: AppSize.s25,
                height: AppSize.s25,
                onTap: () {},
              ),
              const CustomLine(),
              RowItemProfile(
                imagePath: ImageAssets.youtubeProfile,
                text: AppStrings.getYoutubePremium,
                width: AppSize.s34,
                height: AppSize.s34,
                onTap: () {},
              ),
              RowItemProfile(
                imagePath: ImageAssets.profileIcon,
                text: AppStrings.purchasesAndMembership,
                width: AppSize.s34,
                height: AppSize.s34,
                onTap: () {},
              ),
              RowItemProfile(
                imagePath: ImageAssets.timeWatched,
                text: AppStrings.timeWatched,
                width: AppSize.s34,
                height: AppSize.s34,
                onTap: () {},
              ),
              RowItemProfile(
                imagePath: ImageAssets.yourDataInYoutube,
                text: AppStrings.yourDataInYoutube,
                width: AppSize.s34,
                height: AppSize.s34,
                onTap: () {},
              ),
              const CustomLine(),
              RowItemProfile(
                imagePath: ImageAssets.settings,
                text: AppStrings.settings,
                width: AppSize.s34,
                height: AppSize.s34,
                onTap: () {
                  Navigator.pushNamed(context, Routes.settingsRoute);
                },
              ),
              RowItemProfile(
                imagePath: ImageAssets.info,
                text: AppStrings.helpAndFeedback,
                width: AppSize.s34,
                height: AppSize.s34,
                onTap: () {},
              ),
              const CustomLine(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      style: getSemiBoldStyle(
                        color: isDarkTheme
                            ? ColorManager.lightGreyAlt
                            : ColorManager.greyLight,
                      ),
                      children: const [
                        TextSpan(
                          text: AppStrings.privacyPolicy,
                        ),
                        TextSpan(
                          text: AppStrings.dot,
                        ),
                        TextSpan(
                          text: AppStrings.termsOfService,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s18,
              ),
            ],
          ),
        );
      },
    );
  }
}
