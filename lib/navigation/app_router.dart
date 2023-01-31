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
    ]
    //TODO Add Error Handler
    //TODO Add Redirect Handler
  );
}