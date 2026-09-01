import 'package:festou_app/infrastructure/services/tenant_admin/tenant_admin_base_url_resolver.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('keeps explicit scheme when selected domain already has origin', () {
    final baseUrl = resolveTenantAdminBaseUrl('https://tenant.test:8081');
    expect(baseUrl, 'https://tenant.test:8081/admin/api');
  });

  test('uses landlord scheme when selected domain has no scheme', () {
    final baseUrl = resolveTenantAdminBaseUrl(
      'festou.192.168.15.5.nip.io:8081',
      landlordOriginOverride: 'http://192.168.15.5.nip.io:8081',
    );
    expect(baseUrl, 'http://festou.192.168.15.5.nip.io:8081/admin/api');
  });

  test('uses browser-facing origin when selected domain omits port', () {
    final baseUrl = resolveTenantAdminBaseUrl(
      'tenant.festoudemo.site',
      landlordOriginOverride: 'https://festoudemo.site:8043',
      browserOriginOverride: 'https://festoudemo.site',
    );
    expect(baseUrl, 'https://tenant.festoudemo.site/admin/api');
  });

  test('uses browser-facing port when current browser origin has explicit port',
      () {
    final baseUrl = resolveTenantAdminBaseUrl(
      'festou.192.168.15.5.nip.io',
      landlordOriginOverride: 'http://192.168.15.5.nip.io:8081',
      browserOriginOverride: 'http://192.168.15.5.nip.io:8081',
    );
    expect(baseUrl, 'http://festou.192.168.15.5.nip.io:8081/admin/api');
  });

  test('falls back to landlord origin when browser origin is unavailable', () {
    final baseUrl = resolveTenantAdminBaseUrl(
      'festou.192.168.15.5.nip.io',
      landlordOriginOverride: 'http://192.168.15.5.nip.io:8081',
    );
    expect(baseUrl, 'http://festou.192.168.15.5.nip.io:8081/admin/api');
  });

  test('throws when browser origin override is invalid', () {
    expect(
      () => resolveTenantAdminBaseUrl(
        'tenant.festoudemo.site',
        browserOriginOverride: 'festoudemo.site',
      ),
      throwsA(isA<StateError>()),
    );
  });

  test('throws when tenant domain has no scheme and landlord is missing', () {
    expect(
      () => resolveTenantAdminBaseUrl(
        'tenant.127.0.0.1.nip.io:8081',
        landlordOriginOverride: '',
      ),
      throwsA(isA<StateError>()),
    );
  });

  test('throws when landlord origin is invalid', () {
    expect(
      () => resolveTenantAdminBaseUrl(
        'festou.192.168.15.5.nip.io',
        landlordOriginOverride: '192.168.15.5.nip.io:8081',
      ),
      throwsA(isA<StateError>()),
    );
  });

  test('throws when selected domain is empty', () {
    expect(
      () => resolveTenantAdminBaseUrl('   '),
      throwsA(isA<StateError>()),
    );
  });
}
