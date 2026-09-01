import 'package:auto_route/auto_route.dart';
import 'package:festou_app/application/router/modular_app/modules/tenant_admin_module.dart';
import 'package:festou_app/domain/tenant_admin/tenant_admin_profile_type.dart';
import 'package:festou_app/presentation/tenant_admin/profile_types/screens/tenant_admin_profile_type_form_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it_modular_with_auto_route/get_it_modular_with_auto_route.dart';

@RoutePage(name: 'TenantAdminProfileTypeEditRoute')
class TenantAdminProfileTypeEditRoutePage
    extends ResolverRoute<TenantAdminProfileTypeDefinition, TenantAdminModule> {
  const TenantAdminProfileTypeEditRoutePage({
    super.key,
    @PathParam('profileType') required this.profileType,
  });

  final String profileType;

  @override
  RouteResolverParams get resolverParams => {'profileType': profileType};

  @override
  Widget buildScreen(
    BuildContext context,
    TenantAdminProfileTypeDefinition model,
  ) =>
      TenantAdminProfileTypeFormScreen(definition: model);
}
