import '../../configs/app_constants.dart';
import '../../utils/my_print.dart';
import '../../utils/shared_pref_manager.dart';
import 'app_theme_provider.dart';

class AppThemeController {
  final AppThemeProvider appThemeProvider;
  const AppThemeController({required this.appThemeProvider});

  Future<void> init() async {
    bool isDarkThemeEnabled = await getDarkThemeEnabledFromSharedPreferences();

    updateThemeMode(isDarkThemeEnabled);
    MyPrint.printOnConsole("init themeMode $isDarkThemeEnabled");
  }

  Future<void> updateThemeMode(bool isDarkThemeEnabled) async {
    MyPrint.printOnConsole("updateTheme called with isDarkThemeEnabled:'$isDarkThemeEnabled'");
    appThemeProvider.setDarkThemeMode(isDarkThemeEnabled: isDarkThemeEnabled);
  }


  Future<bool> getDarkThemeEnabledFromSharedPreferences() async {
    return (await SharedPrefManager().getBool(SharedPreferenceVariables.darkThemeModeEnabled)) ?? false;
  }
}