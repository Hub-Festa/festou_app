import 'package:festou_app/domain/schedule/event_delta_model.dart';

class ScheduleRepositoryContractDeltaHandler {
  const ScheduleRepositoryContractDeltaHandler(this._onDelta);

  final void Function(EventDeltaModel delta) _onDelta;

  void call(EventDeltaModel delta) => _onDelta(delta);
}
