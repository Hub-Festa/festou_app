import 'package:festou_app/domain/tenant_admin/ownership_state.dart';
import 'package:festou_app/domain/tenant_admin/tenant_admin_document.dart';
import 'package:festou_app/domain/tenant_admin/tenant_admin_account_publication.dart';
import 'package:festou_app/domain/tenant_admin/value_objects/tenant_admin_optional_text_value.dart';
import 'package:festou_app/domain/tenant_admin/value_objects/tenant_admin_optional_url_value.dart';
import 'package:festou_app/domain/tenant_admin/value_objects/tenant_admin_required_text_value.dart';
export 'package:festou_app/domain/tenant_admin/value_objects/tenant_admin_account_values.dart';
export 'package:festou_app/domain/tenant_admin/tenant_admin_account_publication.dart';

class TenantAdminAccount {
  TenantAdminAccount({
    required this.idValue,
    required this.nameValue,
    required this.slugValue,
    required this.document,
    required this.ownershipState,
    TenantAdminAccountPublication? publication,
    TenantAdminOptionalTextValue? organizationIdValue,
    TenantAdminOptionalUrlValue? avatarUrlValue,
  }) : organizationIdValue =
           organizationIdValue ?? TenantAdminOptionalTextValue(),
       publication =
           publication ?? tenantAdminAccountPublicationFromRaw(status: 'draft'),
       avatarUrlValue = avatarUrlValue ?? TenantAdminOptionalUrlValue();

  final TenantAdminRequiredTextValue idValue;
  final TenantAdminRequiredTextValue nameValue;
  final TenantAdminRequiredTextValue slugValue;
  final TenantAdminDocument document;
  final TenantAdminOwnershipState ownershipState;
  final TenantAdminAccountPublication publication;
  final TenantAdminOptionalTextValue organizationIdValue;
  final TenantAdminOptionalUrlValue avatarUrlValue;

  String get id => idValue.value;
  String get name => nameValue.value;
  String get slug => slugValue.value;
  String? get organizationId => organizationIdValue.nullableValue;
  String? get avatarUrl => avatarUrlValue.nullableValue;
}
