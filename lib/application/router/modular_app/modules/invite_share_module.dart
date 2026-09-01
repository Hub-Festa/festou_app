import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:festou_app/application/router/app_router.gr.dart';
import 'package:festou_app/application/router/guards/auth_route_guard.dart';
import 'package:festou_app/application/router/guards/tenant_route_guard.dart';
import 'package:festou_app/application/router/support/canonical_route_family.dart';
import 'package:festou_app/application/router/support/canonical_route_meta.dart';
import 'package:festou_app/presentation/tenant_public/invites/screens/invite_share_screen/controllers/invite_share_screen_controller.dart';
import 'package:get_it_modular_with_auto_route/get_it_modular_with_auto_route.dart';

class InviteShareModule extends ModuleContract {
  @override
  FutureOr<void> registerDependencies() {
    registerLazySingleton<InviteShareScreenController>(
      () => InviteShareScreenController(),
    );
  }

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/convites/compartilhar',
          page: InviteShareRoute.page,
          guards: [TenantRouteGuard(), AuthRouteGuard()],
          meta: canonicalRouteMeta(family: CanonicalRouteFamily.inviteShare),
        ),
      ];
}
