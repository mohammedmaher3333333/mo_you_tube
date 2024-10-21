import 'package:flutter/material.dart';
import 'package:mo_you_tube/presentation/main/pages/profile/view/widgets/custom_close_icon.dart';
import 'package:mo_you_tube/presentation/main/pages/profile/view/widgets/custom_google_account.dart';
import 'package:mo_you_tube/presentation/main/pages/profile/view/widgets/custom_profile_items_body.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCloseIcon(),
        CustomGoogleAccount(),
        CustomProfileItemsBody(),
      ],
    );
  }
}

