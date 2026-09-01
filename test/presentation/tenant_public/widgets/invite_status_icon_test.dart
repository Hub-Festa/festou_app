import 'package:festou_app/application/icons/festou_icons.dart';
import 'package:festou_app/presentation/tenant_public/widgets/invite_status_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Future<void> pumpIcon(
    WidgetTester tester, {
    required bool isConfirmed,
    required int pendingInvitesCount,
  }) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: InviteStatusIcon(
            isConfirmed: isConfirmed,
            pendingInvitesCount: pendingInvitesCount,
          ),
        ),
      ),
    );
  }

  testWidgets('confirmed status uses appointment glyph', (tester) async {
    await pumpIcon(
      tester,
      isConfirmed: true,
      pendingInvitesCount: 0,
    );

    expect(find.byIcon(FestouIcons.confirmedAttendance), findsOneWidget);
    expect(find.byIcon(FestouIcons.inviteOutlined), findsNothing);
    expect(
      find.descendant(
        of: find.byType(CircleAvatar),
        matching: find.byType(Transform),
      ),
      findsNothing,
    );
  });

  testWidgets('pending invite status uses outlined invitation glyph', (
    tester,
  ) async {
    await pumpIcon(
      tester,
      isConfirmed: false,
      pendingInvitesCount: 1,
    );

    expect(find.byIcon(FestouIcons.inviteOutlined), findsOneWidget);
    expect(find.byIcon(FestouIcons.confirmedAttendance), findsNothing);
  });

  testWidgets('no confirmation and no invites hides the icon', (tester) async {
    await pumpIcon(
      tester,
      isConfirmed: false,
      pendingInvitesCount: 0,
    );

    expect(find.byType(SizedBox), findsOneWidget);
    expect(find.byIcon(FestouIcons.inviteOutlined), findsNothing);
    expect(find.byIcon(FestouIcons.confirmedAttendance), findsNothing);
  });
}
