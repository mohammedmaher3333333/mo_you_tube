import 'package:flutter/material.dart';
import 'package:mo_you_tube/presentation/main/pages/settings/view/widgets/build_settings_items.dart';
import 'package:mo_you_tube/presentation/main/widgets/custom_settings_general_app_bar.dart';
import 'package:mo_you_tube/presentation/resources/strings_manager.dart';

import '../../../../../resources/routes_manager.dart';
import '../../../../../resources/values_manager.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSettingsGeneralAppBar(
            title: AppStrings.settings,
            iconData: Icons.arrow_back,
          ),
          const SizedBox(height: AppSize.s24,),
          BuildSettingsItems(
            text: AppStrings.general,
            onTap: () {
              Navigator.pushNamed(context, Routes.generalRoute);
            },
          ),
          const BuildSettingsItems(
            text: AppStrings.dataSaving,
          ),
          const BuildSettingsItems(
            text: AppStrings.autoPlay,
          ),
          const BuildSettingsItems(
            text: AppStrings.videoQualityPreferences,
          ),
          const BuildSettingsItems(
            text: AppStrings.downloads,
          ),
          const BuildSettingsItems(
            text: AppStrings.watchOnTV,
          ),
          const BuildSettingsItems(
            text: AppStrings.manageAllHistory,
          ),
          const BuildSettingsItems(
            text: AppStrings.privacy,
          ),
          const BuildSettingsItems(
            text: AppStrings.tryNewFeatures,
          ),
          const BuildSettingsItems(
            text: AppStrings.purchasesAndMembership,
          ),
          const BuildSettingsItems(
            text: AppStrings.billingAndPayments,
          ),
          const BuildSettingsItems(
            text: AppStrings.notifications,
          ),
          const BuildSettingsItems(
            text: AppStrings.connectedApps,
          ),
        ],
      ),
    );
  }
}
