import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz/Presentation/Views/Views.dart';

// Require auth routes
const HOME_ROUTE = '/';

// Other routes
const SIGNIN_ROUTE = '/signin';
const SIGNUP_ROUTE = '/signup';

const REQUIRE_AUTH_ROUTES = [HOME_ROUTE];

final router = GoRouter(
  initialLocation: HOME_ROUTE,
  errorBuilder: (context, state) => const Text('404'),
  routes: [
    GoRoute(
      path: SIGNIN_ROUTE,
      builder: (context, state) => const SignInView(),
    ),
    GoRoute(
      path: SIGNUP_ROUTE,
      builder: (context, state) => const SignUpView(),
    ),
    ShellRoute(
      builder: (context, state, child) => Container(
        child: child,
      ),
      routes: [
        ShellRoute(
          builder: (context, state, child) => Container(
            child: child,
          ),
          routes: [
            GoRoute(
              path: HOME_ROUTE,
              builder: (context, state) => const HomeView(),
            )
          ],
        ),
      ],
    ),
  ],
);
