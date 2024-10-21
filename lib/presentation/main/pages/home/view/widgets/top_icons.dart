import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../resources/assets_manager.dart';
import '../../../../../resources/routes_manager.dart';
import '../../../../../resources/values_manager.dart';
import '../../../../widgets/theme/theme_cubit.dart';

class TopIcons extends StatelessWidget {
  const TopIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, theme) {
        final isDarkTheme = theme.brightness == Brightness.dark;
        return SizedBox(
          height: AppSize.s45,
          child: Padding(
            padding: const EdgeInsets.only(
              left: AppPadding.p6,
              right: AppPadding.p14,
            ),
            child: Row(
              children: [
                Image.asset(
                  isDarkTheme
                      ? ImageAssets.youtubeLogoDark
                      : ImageAssets.youtubeLogoLight,
                ),
                const Spacer(),
                Image.asset(
                  ImageAssets.castIcon,
                ),
                const SizedBox(width: AppSize.s7),
                Image.asset(
                  ImageAssets.notificationIcon,
                ),
                const SizedBox(width: AppSize.s6),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.searchRoute);
                  },
                  child: Image.asset(
                    ImageAssets.searchIcon,
                  ),
                ),
                const SizedBox(width: AppSize.s8),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.profileRoute);
                  },
                  child: Image.asset(
                    ImageAssets.profileIcon,
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
