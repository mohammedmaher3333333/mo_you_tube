import 'package:flutter/material.dart';
import 'package:mo_you_tube/presentation/main/pages/settings/view/widgets/settings_view_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SettingsViewBody(),
      ),
    );
  }
}
