import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('iOS release config centralizes app identity', () {
    final xcconfig = File(
      'ios/Flutter/BellugaRelease.xcconfig',
    ).readAsStringSync();
    final debugConfig = File('ios/Flutter/Debug.xcconfig').readAsStringSync();
    final releaseConfig = File(
      'ios/Flutter/Release.xcconfig',
    ).readAsStringSync();
    final scheme = File(
      'ios/Runner.xcodeproj/xcshareddata/xcschemes/festou.xcscheme',
    ).readAsStringSync();
    final project = File(
      'ios/Runner.xcodeproj/project.pbxproj',
    ).readAsStringSync();
    final plist = File('ios/Runner/Info.plist').readAsStringSync();

    expect(xcconfig, contains('BELLUGA_IOS_DISPLAY_NAME=Festou'));
    expect(
      xcconfig,
      contains('BELLUGA_IOS_BUNDLE_IDENTIFIER=site.festou.app'),
    );
    expect(debugConfig, contains('#include "BellugaRelease.xcconfig"'));
    expect(releaseConfig, contains('#include "BellugaRelease.xcconfig"'));
    expect(scheme, contains('buildConfiguration = "Debug-festou"'));
    expect(scheme, contains('buildConfiguration = "Profile-festou"'));
    expect(scheme, contains('buildConfiguration = "Release-festou"'));

    expect(
      project,
      contains(
        r'PRODUCT_BUNDLE_IDENTIFIER = "$(BELLUGA_IOS_BUNDLE_IDENTIFIER)"',
      ),
    );
    expect(project, contains('name = "Debug-festou";'));
    expect(project, contains('name = "Profile-festou";'));
    expect(project, contains('name = "Release-festou";'));
    expect(
      project,
      contains(
        r'PRODUCT_BUNDLE_IDENTIFIER = "$(BELLUGA_IOS_BUNDLE_IDENTIFIER).RunnerTests"',
      ),
    );
    expect(plist, contains(r'$(BELLUGA_IOS_DISPLAY_NAME)'));
    expect(plist, contains(r'$(BELLUGA_IOS_BUNDLE_NAME)'));

    expect(
      project,
      isNot(contains('com.example.flutterLaravelBackendBoilerplate')),
    );
    expect(plist, isNot(contains('Flutter Laravel Backend Boilerplate')));
  });

  test(
    'iOS release config declares shipped sensitive APIs and push runtime',
    () {
      final pubspec = File('pubspec.yaml').readAsStringSync();
      final pubspecLock = File('pubspec.lock').readAsStringSync();
      final plist = File('ios/Runner/Info.plist').readAsStringSync();
      final workspace = File(
        'ios/Runner.xcworkspace/contents.xcworkspacedata',
      ).readAsStringSync();
      final entitlements = File(
        'ios/Runner/Runner.entitlements',
      ).readAsStringSync();
      final iosRegistrant = File(
        'ios/Runner/GeneratedPluginRegistrant.m',
      ).readAsStringSync();
      final appDelegate = File(
        'ios/Runner/AppDelegate.swift',
      ).readAsStringSync();
      final macosRegistrant = File(
        'macos/Flutter/GeneratedPluginRegistrant.swift',
      ).readAsStringSync();
      final project = File(
        'ios/Runner.xcodeproj/project.pbxproj',
      ).readAsStringSync();

      expect(plist, contains('NSContactsUsageDescription'));
      expect(plist, contains('NSLocationWhenInUseUsageDescription'));
      expect(plist, contains('NSLocationAlwaysAndWhenInUseUsageDescription'));
      expect(plist, contains('NSCameraUsageDescription'));
      expect(plist, contains('NSPhotoLibraryUsageDescription'));

      expect(plist, contains('UIBackgroundModes'));
      expect(plist, contains('<string>fetch</string>'));
      expect(plist, contains('<string>remote-notification</string>'));

      expect(plist, contains('LSApplicationQueriesSchemes'));
      for (final scheme in const [
        'comgooglemaps',
        'waze',
      ]) {
        expect(plist, contains('<string>$scheme</string>'));
      }

      expect(entitlements, contains('aps-environment'));
      expect(entitlements, contains(r'$(BELLUGA_IOS_APS_ENVIRONMENT)'));
      expect(entitlements, contains('com.apple.developer.associated-domains'));
      expect(entitlements, contains('applinks:festou.com.br'));
      expect(entitlements, contains('applinks:festou.festoudemo.site'));
      expect(
        entitlements,
        isNot(contains('applinks:tenant.festoudemo.site')),
      );

      expect(project, contains('com.apple.AssociatedDomains'));
      expect(project, contains('com.apple.BackgroundModes'));
      expect(project, contains('com.apple.Push'));
      expect(
        project,
        isNot(contains('BELLUGA_IOS_APS_ENVIRONMENT = development')),
      );
      expect(project, contains('BELLUGA_IOS_APS_ENVIRONMENT = production'));
      expect(File('ios/Podfile').existsSync(), isFalse);
      expect(workspace, isNot(contains('Pods.xcodeproj')));
      expect(project, isNot(contains('Check Pods Manifest.lock')));
      expect(project, isNot(contains('Pods-Runner')));
      expect(pubspec, isNot(contains('permission_handler:')));
      expect(pubspecLock, isNot(contains('permission_handler:')));
      expect(pubspecLock, isNot(contains('permission_handler_apple')));
      expect(iosRegistrant, isNot(contains('permission_handler_apple')));
      expect(iosRegistrant, isNot(contains('PermissionHandlerPlugin')));
      expect(macosRegistrant, isNot(contains('permission_handler')));
      expect(appDelegate, contains('getDeferredLinkPasteboardPayload'));
      expect(appDelegate, contains('UIPasteboard.general'));
      expect(appDelegate, contains('festou_app_deferred_link_v1:'));
    },
  );
}
