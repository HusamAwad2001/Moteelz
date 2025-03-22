import 'package:flutter/material.dart';
import 'package:moteelz/features/splash/splash_screen.dart';
import 'package:moteelz/core/config/routing/routes.dart';
import 'package:moteelz/features/wallet/ui/wallet_screen.dart';
import 'package:moteelz/features/wallet_details/ui/wallet_details_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.walletScreen:
        return MaterialPageRoute(
          builder: (_) => const WalletScreen(),
        );
      case Routes.walletDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => WalletDetailsScreen(
            id: settings.arguments as int,
          ),
        );
      default:
        return null;
    }
  }
}
