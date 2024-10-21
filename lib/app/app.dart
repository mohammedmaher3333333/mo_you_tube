import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mo_you_tube/presentation/main/main_view.dart';
import '../presentation/main/widgets/theme/theme_cubit.dart';
import '../presentation/resources/routes_manager.dart';

class MyApp extends StatelessWidget {
  // named constructor
 const MyApp._internal();

  static const MyApp _instance =  MyApp._internal();
  factory MyApp() => _instance;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, theme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            home: const MainView(),
            onGenerateRoute: RouteGenerator.getRoute,
            initialRoute: Routes.mainRoute,
          );
        },
      ),
    );
  }
}
