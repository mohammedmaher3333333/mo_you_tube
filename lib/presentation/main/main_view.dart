import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mo_you_tube/presentation/main/pages/home/view/widgets/customDrawer.dart';
import 'package:mo_you_tube/presentation/main/pages/library/view/library_view.dart';
import 'package:mo_you_tube/presentation/main/pages/subscriptions/view/subscriptions_view.dart';
import 'package:mo_you_tube/presentation/main/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:mo_you_tube/presentation/main/widgets/bottom_navigation_bar/bottom_navigation_cubit.dart';
import 'pages/add/view/add_view.dart';
import 'pages/home/view/home_view.dart';
import 'pages/shorts/view/shorts_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationCubit(),
      child: Scaffold(
        drawer: const CustomDrawer(),
        body: SafeArea(
          child: BlocBuilder<BottomNavigationCubit, int>(
            builder: (context, currentIndex) {
              return IndexedStack(
                index: currentIndex,
                children: const [
                  HomeView(),
                  ShortsView(),
                  AddView(),
                  SubscriptionsView(),
                  LibraryView(),
                ],
              );
            },
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarWidget(),
      ),
    );
  }
}
