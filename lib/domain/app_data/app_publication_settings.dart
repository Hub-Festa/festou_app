import 'package:festou_app/domain/app_data/app_publication_platform_settings.dart';
import 'package:festou_app/domain/value_objects/domain_boolean_value.dart';

export 'package:festou_app/domain/app_data/app_publication_platform_settings.dart';

class AppPublicationSettings {
  AppPublicationSettings({
    required this.hasExplicitConfigValue,
    required this.android,
    required this.ios,
  });

  AppPublicationSettings.empty()
      : hasExplicitConfigValue = _emptyHasExplicitConfigValue(),
        android = AppPublicationPlatformSettings.inherit(),
        ios = AppPublicationPlatformSettings.inherit();

  final DomainBooleanValue hasExplicitConfigValue;
  final AppPublicationPlatformSettings android;
  final AppPublicationPlatformSettings ios;

  bool get hasExplicitConfig => hasExplicitConfigValue.value;
}

DomainBooleanValue _emptyHasExplicitConfigValue() {
  final value = DomainBooleanValue();
  value.parse('false');
  return value;
}
