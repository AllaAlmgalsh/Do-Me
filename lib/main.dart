import 'dart:async';
import 'dart:developer';
import 'package:do_me/bloc/app_bloc/app_bloc.dart';
import 'package:do_me/repositories/auth_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'bloc/bloc_exports.dart';
import 'firebase_options.dart';
import 'screens/tabs_screen.dart';
import 'services/app_router.dart';
import 'services/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  // await Firebase.initializeApp();
  HydratedBlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      final authRepository = AuthRepository();
      runApp(Do_Me(appRouter: AppRouter(), authRepository: authRepository));
    },
    storage: storage,
  );
  // HydratedBlocOverrides.runZoned(
  //   () => runApp(Do_Me(
  //     appRouter: AppRouter(),
  //   )),
  //   storage: storage,
  // );
}

class Do_Me extends StatelessWidget {
  const Do_Me(
      {Key? key,
      required this.appRouter,
      required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(key: key);
  final AppRouter appRouter;
  final AuthRepository _authRepository;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        RepositoryProvider.value(
          value: _authRepository,
          child: BlocProvider(
            create: (_)=>AppBloc(authRepository: _authRepository),

          ),
        ),
        BlocProvider(
          create: (context) => TasksBloc(),
        ),
        BlocProvider(
          create: (context) => SwitchBloc(),
        ),
      ], child: AppView(appRouter: appRouter,),
    );
  }
}
class AppView extends StatelessWidget {
  final AppRouter appRouter;

  const AppView({Key? key,
    required this.appRouter,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  BlocBuilder<SwitchBloc, SwitchState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Do Me',
            theme: state.switchValue
                ? AppThemes.appThemeData[AppTheme.darkTheme]
                : AppThemes.appThemeData[AppTheme.lightTheme],
            home: TabsScreen(),
            onGenerateRoute: appRouter.onGenerateRoute,
          );
        },
      ),
    );
  }
}

