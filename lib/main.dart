import 'package:deliverhobe_app/@app/config/theme.config.dart';
import 'package:flutter/material.dart';
import 'package:deliverhobe_app/@app/app.bottomsheets.dart';
import 'package:deliverhobe_app/@app/app.dialogs.dart';
import 'package:deliverhobe_app/@app/app.locator.dart';
import 'package:deliverhobe_app/@app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ThemeManager.initialise();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultThemeMode: ThemeMode.dark,
      darkTheme: ThemeConfig.darkThemeData,
      lightTheme: ThemeConfig.lightThemeData,
      // statusBarColorBuilder: (theme) => theme!.colorScheme.background,
      navigationBarColorBuilder: (theme) => theme!.colorScheme.background,
      builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
        initialRoute: Routes.startupView,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        navigatorKey: StackedService.navigatorKey,
        navigatorObservers: [
          StackedService.routeObserver,
        ],
        title: 'DeliveryHobe',
        theme: regularTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
