import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shivagroapp/presentation/navigation/app_router.dart';
import 'core/constants/app_constants.dart';
import 'business_logic/providers/product_provider.dart';
import 'data/repositories/product_repository.dart';
import 'business_logic/providers/user_role_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserRoleProvider()),
        ChangeNotifierProvider(
          create: (_) => ProductProvider(ProductRepository()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstants.appName,
        onGenerateRoute: AppRouter.generateRoute,
        home: Consumer<UserRoleProvider>(
          builder: (context, userRoleProvider, child) {
            return AppRouter.roleBasedHome(userRoleProvider);
          },
        ),
      ),
    );
  }
}
