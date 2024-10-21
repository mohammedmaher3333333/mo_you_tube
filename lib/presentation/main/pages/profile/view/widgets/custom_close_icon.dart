import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mo_you_tube/presentation/resources/color_manager.dart';

import '../../../../../resources/assets_manager.dart';
import '../../../../../resources/values_manager.dart';
import '../../../../widgets/theme/theme_cubit.dart';

class CustomCloseIcon extends StatelessWidget {
  const CustomCloseIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, theme) {
        final isDarkTheme = theme.brightness == Brightness.dark;
        return Padding(
          padding: const EdgeInsets.only(
            top: AppPadding.p16,
            left: AppPadding.p18,
            bottom: AppPadding.p28,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              ImageAssets.closeIcon,
              colorFilter: ColorFilter.mode(
                isDarkTheme ? ColorManager.white : ColorManager.darkPrimary,
                BlendMode.srcIn,
              ),
            ),
          ),
        );
      },
    );
  }
}
