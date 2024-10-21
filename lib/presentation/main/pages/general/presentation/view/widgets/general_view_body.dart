import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mo_you_tube/presentation/main/pages/general/presentation/view/widgets/build_general_const_item.dart';
import 'package:mo_you_tube/presentation/resources/values_manager.dart';

import '../../../../../../resources/strings_manager.dart';
import '../../../../../widgets/custom_settings_general_app_bar.dart';
import '../../../../../widgets/theme/theme_cubit.dart';
import '../../manager/toggle_switch_cubit/toggle_switch_cubit.dart';
import 'build_general_item.dart';

class GeneralViewBody extends StatelessWidget {
  const GeneralViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit1 = ToggleSwitchCubit();
    final cubit2 = ToggleSwitchCubit();
    final cubit3 = ToggleSwitchCubit();
    final cubit4 = ToggleSwitchCubit();
    final cubit5 = ToggleSwitchCubit();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomSettingsGeneralAppBar(
          title: AppStrings.general,
          iconData: Icons.arrow_back,
        ),
        const SizedBox(
          height: AppSize.s2,
        ),
        BuildGeneralItem(
          cubit: cubit1,
          title: AppStrings.remindMeToTakeABreak,
          subTitleOff: AppStrings.off,
          subTitleOn: AppStrings.on,
        ),
        BuildGeneralItem(
          cubit: cubit2,
          title: AppStrings.remindMeWhenItsBedtime,
          subTitleOff: AppStrings.off,
          subTitleOn: AppStrings.on,
        ),
        BuildGeneralItem(
          cubit: cubit3,
          title: AppStrings.darkTheme,
          subTitleOff: AppStrings.reducesGlare,
          subTitleOn: AppStrings.increasesGlare,
          onToggle: () => context.read<ThemeCubit>().toggleTheme(),
        ),
        BuildGeneralItem(
          cubit: cubit4,
          title: AppStrings.playbackInFeeds,
          subTitleOff: AppStrings.playVideosAsYouBrowse,
          subTitleOn: AppStrings.stopVideosAsYouBrowse,
        ),
        const BuildGeneralConstItem(
          title: AppStrings.doubleTapToSeek,
          subTitle: AppStrings.seconds,
        ),
        BuildGeneralItem(
          cubit: cubit5,
          title: AppStrings.zoomToFillScreen,
          subTitleOff: AppStrings.alwaysZoomInFullScreen,
          subTitleOn: AppStrings.alwaysZoomInFullScreen,
        ),
        const BuildGeneralConstItem(
          title: AppStrings.location,
          subTitle: AppStrings.india,
        ),
        const BuildGeneralConstItem(
          title: AppStrings.uploads,
          subTitle: AppStrings.networkPreferencesForUploads,
        ),
      ],
    );
  }
}
