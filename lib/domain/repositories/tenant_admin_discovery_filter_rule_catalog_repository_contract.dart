import 'package:festou_app/domain/tenant_admin/settings/tenant_admin_map_filter_rule_catalog.dart';

abstract class TenantAdminDiscoveryFilterRuleCatalogRepositoryContract {
  Future<TenantAdminMapFilterRuleCatalog> fetchRuleCatalog();
}
