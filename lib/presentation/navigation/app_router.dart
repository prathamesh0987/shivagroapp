import 'package:flutter/material.dart';
import 'package:shivagroapp/business_logic/providers/user_role_provider.dart';
import 'package:shivagroapp/data/models/user_role.dart';
import 'package:shivagroapp/presentation/screens/dashboard/dashboard_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => DashboardScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('page not found')),
                ));
    }
  }

  static Widget roleBasedHome(UserRoleProvider UserRoleProvider) {
    return UserRoleProvider.role == UserRole.Admin
        ? DashboardScreen()
        : DashboardScreen();
  }
}
