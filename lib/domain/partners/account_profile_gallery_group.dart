import 'package:festou_app/domain/partners/account_profile_gallery_item.dart';
import 'package:festou_app/domain/partners/value_objects/account_profile_nested_group_fields.dart';

export 'package:festou_app/domain/partners/account_profile_gallery_item.dart';

class AccountProfileGalleryGroup {
  AccountProfileGalleryGroup({
    required this.groupIdValue,
    required this.subtitleValue,
    required this.orderValue,
    List<AccountProfileGalleryItem>? items,
  }) : items = List<AccountProfileGalleryItem>.unmodifiable(
          items ?? const <AccountProfileGalleryItem>[],
        );

  final AccountProfileNestedGroupIdValue groupIdValue;
  final AccountProfileNestedGroupLabelValue subtitleValue;
  final AccountProfileNestedGroupOrderValue orderValue;
  final List<AccountProfileGalleryItem> items;

  String get groupId => groupIdValue.value;
  String get subtitle => subtitleValue.value;
  int get order => orderValue.value;
}
