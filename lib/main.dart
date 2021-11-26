import 'package:flutter/material.dart';
import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smotreshka/core/bloc/auth/bloc.dart';
import 'package:smotreshka/core/bloc/logic/bloc.dart';
import 'package:smotreshka/core/bloc/router/bloc.dart';
import 'package:smotreshka/core/bloc/theme/bloc.dart';
import 'package:smotreshka/core/repository/cinemaRepository.dart';
import 'package:smotreshka/core/repository/userRepository.dart';
import 'package:smotreshka/interface/pages/auth/auth_page.dart';
import 'package:smotreshka/interface/pages/main_screen.dart';
import 'package:smotreshka/interface/pages/splash.dart';

void main() {
  final AuthenticationRepository authenticationRepository = AuthenticationRepository();  
  DartVLC.initialize();
  runApp(AppRunner(
    authenticationRepository: authenticationRepository,
    cinemaRepository: CinemaRepository(authRep: authenticationRepository),
  ));
}

class AppRunner extends StatelessWidget {
  final AuthenticationRepository authenticationRepository;
  final CinemaRepository cinemaRepository;
  const AppRunner({Key? key, required this.authenticationRepository, required this.cinemaRepository})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeBloc(isDart: true)),
        BlocProvider(create: (_) => AuthBloc(authenticationRepository: authenticationRepository)),
        BlocProvider(create: (_) => RouteBloc(authenticationRepository: authenticationRepository)),
        BlocProvider(create: (_) => LogicBloc(cinemaRepository: cinemaRepository)),
      ],
      child: const App(),
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get navigator => navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<ThemeBloc, ThemeData>(builder: (context, theme) => MaterialApp(
        theme: theme,
        themeMode: ThemeMode.system,
        navigatorKey: navigatorKey,
        onGenerateRoute: (_) => SplashScreen.route(),
        builder: (context, child) {
          return BlocListener<RouteBloc, RouteState>(
            child: child,
            listenWhen: (previous, current) => previous.status != current.status,
            listener: (context, state) {
              switch (state.status) {
                case AuthenticationStatus.authenticated:
                  navigator.pushAndRemoveUntil<void>(
                    MainScreen.route(),
                    (route) => false,
                  );
                  break;
                case AuthenticationStatus.error:
                  break;
                case AuthenticationStatus.unauthenticated:
                  navigator.pushAndRemoveUntil<void>(
                    AuthPage.route(),
                    (route) => false,
                  );
                  break;
                case AuthenticationStatus.unknown:
                  navigator.pushAndRemoveUntil<void>(
                    SplashScreen.route(),
                    (route) => false,
                  );
                  break;
                default:
                  break;
              }
            },
          );
        },
      ),
    );
  }
}