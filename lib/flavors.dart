enum Flavor { development, production }

class FlavorConfig {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return 'DocDoc Dev';
      case Flavor.production:
        return 'DocDoc';
      default:
        return 'DocDoc';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.development:
        return 'https://vcare.integration25.com/api';
      case Flavor.production:
        return 'https://vcare.integration25.com/api';
      default:
        return '';
    }
  }

  static bool get isDevelopment => appFlavor == Flavor.development;
  static bool get isProduction => appFlavor == Flavor.production;

  static bool get enableDebugFeatures => isDevelopment;
  static bool get enableAnalytics => isProduction;
}
