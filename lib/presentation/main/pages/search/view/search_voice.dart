import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mo_you_tube/presentation/resources/assets_manager.dart';
import 'package:mo_you_tube/presentation/resources/color_manager.dart';
import 'package:mo_you_tube/presentation/resources/strings_manager.dart';
import 'package:mo_you_tube/presentation/resources/styles_manager.dart';
import 'package:mo_you_tube/presentation/resources/values_manager.dart';

import '../../../widgets/theme/theme_cubit.dart';

class SearchVoice extends StatelessWidget {
  const SearchVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, theme) {
        final isDarkTheme = theme.brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: AppPadding.p10,
                  top: AppPadding.p24,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.s50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: AppPadding.p36),
                child: Text(
                  AppStrings.listening,
                  style: getRegularStyleTheme(fontSize: AppSize.s28),
                ),
              ),
              const SizedBox(
                height: AppSize.s130,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.trySaying,
                    style: getItalicStyle(
                      fontSize: 20,
                      color: isDarkTheme
                          ? ColorManager.white
                          : ColorManager.mediumGrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.playSomeMusic,
                    style: getLightItalicStyle(
                      fontSize: 20,
                      color: isDarkTheme
                          ? ColorManager.white
                          : ColorManager.lightGreyVariation,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorManager.brightRed,
                    ),
                    child: Image.asset(ImageAssets.microWhite),
                  ),
                  const SizedBox(
                    width: AppSize.s13,
                  ),
                  Image.asset(
                    isDarkTheme ? ImageAssets.faceDark : ImageAssets.faceLight,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  },
);
  }
}
