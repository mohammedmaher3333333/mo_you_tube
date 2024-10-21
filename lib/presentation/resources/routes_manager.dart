import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mo_you_tube/presentation/main/main_view.dart';
import 'package:mo_you_tube/presentation/main/pages/profile/view/profile_view.dart';
import 'package:mo_you_tube/presentation/main/pages/search/view/search_view.dart';
import 'package:mo_you_tube/presentation/main/pages/settings/view/settings_view.dart';
import 'package:mo_you_tube/presentation/resources/strings_manager.dart';

import '../main/pages/general/presentation/view/general_view.dart';
import '../main/pages/search/view/search_voice.dart';
import '../main/pages/search/view_model/manger/search_cubit/search_cubit.dart';

class Routes {
  static const String mainRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String searchRoute = "/search";
  static const String searchVoiceRoute = "/searchVoice";
  static const String storeDetailsRoute = "/storeDetails";
  static const String profileRoute = "/profile";
  static const String settingsRoute = "/settings";
  static const String generalRoute = "/general";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: (_) => const MainView(),
        );
      case Routes.searchVoiceRoute:
        return MaterialPageRoute(
          builder: (_) => const SearchVoice(),
        );
      case Routes.searchRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SearchCubit(),
            child: SearchView(),
          ),
        );
      case Routes.profileRoute:
        return MaterialPageRoute(
          builder: (_) => const ProfileView(),
        );case Routes.settingsRoute:
        return MaterialPageRoute(
          builder: (_) => const SettingsView(),
        );case Routes.generalRoute:
        return MaterialPageRoute(
          builder: (_) => const GeneralView(),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
