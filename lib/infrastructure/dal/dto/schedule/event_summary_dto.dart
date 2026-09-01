import 'package:festou_app/infrastructure/dal/dto/schedule/event_summary_item_dto.dart';
import 'package:festou_app/domain/schedule/schedule_summary_model.dart';

class EventSummaryDTO {
  const EventSummaryDTO({required this.items});

  final List<EventSummaryItemDTO> items;

  ScheduleSummaryModel toDomain() {
    return ScheduleSummaryModel(
      items: items.map((item) => item.toDomain()).toList(growable: false),
    );
  }
}
