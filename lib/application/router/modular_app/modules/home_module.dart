import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:festou_app/application/router/app_router.gr.dart';
import 'package:festou_app/application/router/guards/tenant_route_guard.dart';
import 'package:festou_app/application/router/support/canonical_route_family.dart';
import 'package:festou_app/application/router/support/canonical_route_meta.dart';
import 'package:festou_app/presentation/tenant_public/home/screens/tenant_home_screen/controllers/tenant_home_controller.dart';
import 'package:festou_app/presentation/tenant_public/home/screens/tenant_home_screen/widgets/agenda_section/controllers/tenant_home_agenda_controller.dart';
import 'package:festou_app/presentation/tenant_public/home/screens/tenant_home_screen/widgets/favorite_section/controllers/favorites_section_controller.dart';
import 'package:festou_app/presentation/tenant_public/home/screens/tenant_home_screen/widgets/invites_banner/controllers/invites_banner_builder_controller.dart';
import 'package:get_it_modular_with_auto_route/get_it_modular_with_auto_route.dart';

class HomeModule extends ModuleContract {
  @override
  FutureOr<void> registerDependencies() {
    registerLazySingleton<TenantHomeController>(
      () => TenantHomeController(),
    );
    registerFactory<TenantHomeAgendaController>(
      () => TenantHomeAgendaController(),
    );
    registerFactory<FavoritesSectionController>(
      () => FavoritesSectionController(),
    );
    registerFactory<InvitesBannerBuilderController>(
      () => InvitesBannerBuilderController(),
    );
  }

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: TenantHomeRoute.page,
          guards: [TenantRouteGuard()],
          meta: canonicalRouteMeta(family: CanonicalRouteFamily.tenantHome),
        ),
        AutoRoute(
          path: '/privacy-policy',
          page: TenantPrivacyPolicyRoute.page,
          guards: [TenantRouteGuard()],
          meta: canonicalRouteMeta(
            family: CanonicalRouteFamily.tenantPrivacyPolicy,
          ),
        ),
        RedirectRoute(
          path: '/politica-de-privacidade',
          redirectTo: '/privacy-policy',
        ),
        RedirectRoute(
          path: '/home',
          redirectTo: '/',
        ),
      ];
}
