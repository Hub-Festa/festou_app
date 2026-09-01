import 'package:festou_app/domain/tenant/tenant.dart';
import 'package:festou_app/domain/tenant/value_objects/app_domain_value.dart';
import 'package:festou_app/domain/tenant/value_objects/domain_value.dart';
import 'package:festou_app/domain/tenant/value_objects/icon_url_value.dart';
import 'package:festou_app/domain/tenant/value_objects/main_color_value.dart';
import 'package:festou_app/domain/tenant/value_objects/main_logo_url_value.dart';
import 'package:festou_app/domain/tenant/value_objects/subdomain_value.dart';
import 'package:festou_app/domain/tenant/value_objects/tenant_name_value.dart';
import 'package:festou_app/infrastructure/dal/dao/tenant_backend_contract.dart';

class MockTenantBackend extends TenantBackendContract {
  @override
  Future<Tenant> getTenant() async {
    return Tenant(
      name: TenantNameValue()..parse("Festou"),
      mainLogoUrl: MainLogoUrlValue()
        ..parse(
            "https://logodownload.org/wp-content/uploads/2018/08/aurora-logo-0.png"),
      iconUrl: IconUrlValue()
        ..parse(
            "https://logodownload.org/wp-content/uploads/2018/08/aurora-logo-0.png"),
      mainColor: MainColorValue()..parse("#4FA0E3"),
      subdomain: SubdomainValue()..parse("festou"),
      domains: [
        DomainValue()..parse("https://festou.com.br"),
      ],
      appDomains: [
        AppDomainValue()..parse("site.festou.app"),
      ],
    );
  }
}
