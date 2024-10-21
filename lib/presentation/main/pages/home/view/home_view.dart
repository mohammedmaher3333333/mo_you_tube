import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mo_you_tube/presentation/main/pages/home/view/widgets/top_icons.dart';
import 'package:mo_you_tube/presentation/main/pages/home/view/widgets/top_list/selected_item_cubit.dart';
import 'package:mo_you_tube/presentation/main/pages/home/view/widgets/top_list/top_list.dart';
import 'package:mo_you_tube/presentation/main/pages/home/view/widgets/video_list_view.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopIcons(),
        BlocProvider(
          create: (context) => SelectedItemCubit(),
          child: const TopList(),
        ),
        const VideoListView(),
      ],
    );
  }
}
