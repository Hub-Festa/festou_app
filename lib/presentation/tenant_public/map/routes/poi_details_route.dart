import 'package:auto_route/auto_route.dart';
import 'package:festou_app/application/router/guards/location_permission_gate_result.dart';
import 'package:festou_app/application/router/modular_app/modules/map_module.dart';
import 'package:festou_app/presentation/tenant_public/map/screens/map_screen/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it_modular_with_auto_route/get_it_modular_with_auto_route.dart';

@RoutePage(name: 'PoiDetailsRoute')
class PoiDetailsRoutePage extends StatelessWidget {
  const PoiDetailsRoutePage({
    super.key,
    @QueryParam('poi') this.poi,
    @QueryParam('stack') this.stack,
    this.locationGateResult,
  });

  final String? poi;
  final String? stack;
  final LocationPermissionGateResult? locationGateResult;

  @override
  Widget build(BuildContext context) {
    return ModuleScope<MapModule>(
      child: MapScreen(
        initialPoiQuery: poi,
        initialPoiStackQuery: stack,
        initialLocationGateResult: locationGateResult,
      ),
    );
  }
}
