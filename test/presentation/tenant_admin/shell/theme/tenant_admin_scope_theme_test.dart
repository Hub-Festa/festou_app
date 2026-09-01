import 'package:festou_app/presentation/tenant_admin/shell/theme/tenant_admin_scope_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('light tenant admin scope keeps Inter typography contract', () {
    final previousAllowRuntimeFetching = GoogleFonts.config.allowRuntimeFetching;
    addTearDown(() {
      GoogleFonts.config.allowRuntimeFetching = previousAllowRuntimeFetching;
    });
    GoogleFonts.config.allowRuntimeFetching = false;

    final baseTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0B6E4F)),
    );

    final scopedTheme = TenantAdminScopeTheme.resolve(baseTheme);
    final expectedTextTheme = GoogleFonts.interTextTheme(baseTheme.textTheme);

    expect(
      scopedTheme.textTheme.bodyMedium?.fontFamily,
      expectedTextTheme.bodyMedium?.fontFamily,
    );
    expect(
      scopedTheme.textTheme.titleSmall?.fontFamily,
      expectedTextTheme.titleSmall?.fontFamily,
    );
  });
}
