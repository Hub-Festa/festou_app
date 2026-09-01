import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:festou_app/application/router/app_router.gr.dart';
import 'package:festou_app/application/router/guards/tenant_route_guard.dart';
import 'package:festou_app/application/startup/app_startup_plan_resolver.dart';
import 'package:festou_app/presentation/shared/location_permission/controllers/location_permission_controller.dart';
import 'package:festou_app/presentation/shared/init/screens/init_screen/controllers/init_screen_controller.dart';
import 'package:get_it_modular_with_auto_route/get_it_modular_with_auto_route.dart';

class InitializationModule extends ModuleContract {
  @override
  FutureOr<void> registerDependencies() {
    registerFactory<LocationPermissionController>(
      () => LocationPermissionController(),
    );

    registerLazySingleton<InitScreenController>(
      () => InitScreenController(),
    );
    registerLazySingleton<AppStartupPlanResolver>(
      () => AppStartupPlanResolver(),
    );
  }

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/location/permission',
          page: LocationPermissionRoute.page,
          guards: [TenantRouteGuard()],
        ),
      ];
}
