import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mo_you_tube/presentation/main/pages/home/view/widgets/custom_list_tile.dart';
import 'package:mo_you_tube/presentation/resources/assets_manager.dart';
import 'package:mo_you_tube/presentation/resources/strings_manager.dart';
import 'package:mo_you_tube/presentation/resources/values_manager.dart';

import '../../../../widgets/theme/theme_cubit.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, theme) {
        final isDarkTheme = theme.brightness == Brightness.dark;

        return Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Image(
                  image: AssetImage(
                    isDarkTheme
                        ? ImageAssets.youtubeLogoDark
                        : ImageAssets.youtubeLogoLight,
                  ),
                ),
                CustomListTile(
                  title: AppStrings.trending,
                  imagePath: isDarkTheme
                      ? ImageAssets.trendIconDark
                      : ImageAssets.trendIconLight,
                  onTap: () {},
                ),
                CustomListTile(
                  title: AppStrings.shopping,
                  imagePath: isDarkTheme
                      ? ImageAssets.shoppingIconDark
                      : ImageAssets.shoppingIconLight,
                  onTap: () {},
                ),
                CustomListTile(
                  title: AppStrings.music,
                  imagePath: isDarkTheme
                      ? ImageAssets.musicIconDark
                      : ImageAssets.musicIconLight,
                  onTap: () {},
                ),
                CustomListTile(
                  title: AppStrings.films,
                  imagePath: isDarkTheme
                      ? ImageAssets.filmingIconDark
                      : ImageAssets.filmingIconLight,
                  onTap: () {},
                ),
                CustomListTile(
                  title: AppStrings.live,
                  imagePath: isDarkTheme
                      ? ImageAssets.liveIconDark
                      : ImageAssets.liveIconLight,
                  onTap: () {},
                ),
                CustomListTile(
                  title: AppStrings.gaming,
                  imagePath: isDarkTheme
                      ? ImageAssets.gamingIconDark
                      : ImageAssets.gamingIconLight,
                  onTap: () {},
                ),
                CustomListTile(
                  title: AppStrings.news,
                  imagePath: isDarkTheme
                      ? ImageAssets.newsIconDark
                      : ImageAssets.newsIconLight,
                  onTap: () {},
                ),
                CustomListTile(
                  title: AppStrings.sport,
                  imagePath: isDarkTheme
                      ? ImageAssets.sportIconDark
                      : ImageAssets.sportIconLight,
                  onTap: () {},
                ),
                CustomListTile(
                  title: AppStrings.learning,
                  imagePath: isDarkTheme
                      ? ImageAssets.learningIconDark
                      : ImageAssets.learningIconLight,
                  onTap: () {},
                ),
                CustomListTile(
                  title: AppStrings.fashionBeauty,
                  imagePath: isDarkTheme
                      ? ImageAssets.fashionIconDark
                      : ImageAssets.fashionIconLight,
                  onTap: () {},
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


