import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mo_you_tube/presentation/resources/styles_manager.dart';

import '../../../../../../resources/values_manager.dart';
import '../../manager/toggle_switch_cubit/toggle_switch_cubit.dart';
import 'custom_toggle_switch.dart';

class BuildGeneralItem extends StatelessWidget {
  final ToggleSwitchCubit cubit;

  final String title;
  final String subTitleOff;
  final String subTitleOn;
  final VoidCallback? onToggle;

  const BuildGeneralItem({
    super.key,
    required this.cubit,
    required this.title,
    required this.subTitleOff,
    required this.subTitleOn,
    this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPadding.p20,
        right: AppPadding.p34,
        top: AppPadding.p22,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: getSemiBoldStyleTheme(),
              ),
              const SizedBox(
                height: AppSize.s6,
              ),
              BlocBuilder<ToggleSwitchCubit, bool>(
                bloc: cubit,
                builder: (context, state) {
                  return Text(
                    state ? subTitleOn : subTitleOff,
                    style: getRegularStyleTheme(),
                  );
                },
              ),
            ],
          ),
          BlocBuilder<ToggleSwitchCubit, bool>(
            bloc: cubit,
            builder: (context, state) {
              return CustomToggleSwitch(
                value: state,
                onChanged: (value) {
                  cubit.toggle();
                  if (onToggle != null) {
                    onToggle!();
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
