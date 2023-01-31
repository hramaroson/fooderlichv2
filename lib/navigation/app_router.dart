import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/models.dart';

class AppRouter {
  final AppStateManager appStateManager;
  final ProfileManager profileManager; 
  final GroceryManager groceryManager;

  AppRouter(
    this.appStateManager,
    this.profileManager,
    this.groceryManager);

  late final router = GoRouter(
    debugLogDiagnostics: true,
    refreshListenable: appStateManager,
    initialLocation: '/login',

    routes: [
      //TODO Add Login Route
      //TODO Add Onboarding Route
      //TODO Add Home Route
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Center(
            child: Text(
              state.error.toString()
            ),
          ),
        )
      );

    }
    //TODO Add Redirect Handler
  );
}