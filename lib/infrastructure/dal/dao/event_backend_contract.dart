import 'package:festou_app/infrastructure/dal/dto/event/event_preview_dto.dart';

abstract class EventBackendContract {
  Future<List<EventPreviewDTO>> fetchFeaturedEvents();
  Future<List<EventPreviewDTO>> fetchUpcomingEvents();
}
