import 'package:auto_route/auto_route.dart';
import 'package:festou_app/presentation/tenant_admin/accounts/screens/tenant_admin_accounts_list_screen.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'TenantAdminAccountsListRoute')
class TenantAdminAccountsListRoutePage extends StatelessWidget {
  const TenantAdminAccountsListRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TenantAdminAccountsListScreen();
  }
}
