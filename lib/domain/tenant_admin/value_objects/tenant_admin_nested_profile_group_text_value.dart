import 'package:festou_app/domain/tenant_admin/value_objects/tenant_admin_required_text_value.dart';

class TenantAdminNestedProfileGroupTextValue
    extends TenantAdminRequiredTextValue {
  TenantAdminNestedProfileGroupTextValue([Object? raw]) {
    parse(raw?.toString());
  }
}
