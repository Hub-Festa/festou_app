import 'package:auto_route/auto_route.dart';
import 'package:festou_app/application/router/modular_app/modules/tenant_admin_module.dart';
import 'package:festou_app/domain/tenant_admin/tenant_admin_static_asset.dart';
import 'package:festou_app/presentation/tenant_admin/static_assets/screens/tenant_admin_static_asset_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it_modular_with_auto_route/get_it_modular_with_auto_route.dart';

@RoutePage(name: 'TenantAdminStaticAssetDetailRoute')
class TenantAdminStaticAssetDetailRoutePage
    extends ResolverRoute<TenantAdminStaticAsset, TenantAdminModule> {
  const TenantAdminStaticAssetDetailRoutePage({
    super.key,
    @PathParam('assetId') required this.assetId,
  });

  final String assetId;

  @override
  RouteResolverParams get resolverParams => {'assetId': assetId};

  @override
  Widget buildScreen(BuildContext context, TenantAdminStaticAsset model) =>
      TenantAdminStaticAssetDetailScreen(asset: model);
}
