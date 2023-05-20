import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Presentation/Blocs/AuthCubit/AuthCubit.dart';

import 'Router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit()..checkAuth(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        theme: ThemeData(
          colorScheme: const ColorScheme.light().copyWith(
            primary: Colors.blue.shade900,
          ),
        ),
      ),
    );
  }
}
