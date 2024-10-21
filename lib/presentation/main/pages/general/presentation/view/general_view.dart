import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mo_you_tube/presentation/main/pages/general/presentation/view/widgets/general_view_body.dart';

import '../manager/toggle_switch_cubit/toggle_switch_cubit.dart';

class GeneralView extends StatelessWidget {
  const GeneralView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => ToggleSwitchCubit(),
          child: const GeneralViewBody(),
        ),
      ),
    );
  }
}
