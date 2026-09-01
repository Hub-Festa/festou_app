import 'package:festou_app/domain/repositories/value_objects/tenant_admin_taxonomies_repository_contract_values.dart';
import 'package:festou_app/domain/tenant_admin/tenant_admin_taxonomy_definition.dart';

typedef TenantAdminTaxRepoScopedLookupString =
    TenantAdminTaxonomiesRepositoryContractTextValue;

abstract class TenantAdminTaxonomiesScopedLookupRepositoryContract {
  Future<List<TenantAdminTaxonomyDefinition>> fetchTaxonomiesBySlugs({
    required List<TenantAdminTaxRepoScopedLookupString> slugs,
    TenantAdminTaxRepoScopedLookupString? appliesTo,
  });
}
