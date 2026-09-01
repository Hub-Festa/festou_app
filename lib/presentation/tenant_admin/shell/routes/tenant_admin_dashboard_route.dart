import 'package:auto_route/auto_route.dart';
import 'package:festou_app/presentation/tenant_admin/shell/tenant_admin_dashboard_screen.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'TenantAdminDashboardRoute')
class TenantAdminDashboardRoutePage extends StatelessWidget {
  const TenantAdminDashboardRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TenantAdminDashboardScreen();
  }
}
