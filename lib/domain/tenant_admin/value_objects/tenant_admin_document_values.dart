import 'package:festou_app/domain/tenant_admin/tenant_admin_document.dart';
import 'package:festou_app/domain/tenant_admin/value_objects/tenant_admin_value_parsers.dart';

TenantAdminDocument tenantAdminDocumentFromRaw({
  required Object? type,
  required Object? number,
}) {
  return TenantAdminDocument(
    typeValue: tenantAdminOptionalText(type),
    numberValue: tenantAdminOptionalText(number),
  );
}
