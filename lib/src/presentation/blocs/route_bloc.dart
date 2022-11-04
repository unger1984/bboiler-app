import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_bloc.freezed.dart';

@freezed
class RouteEvent with _$RouteEvent {
  const RouteEvent._();
  const factory RouteEvent.boiling() = BoilingRouteEvent;
  const factory RouteEvent.settings() = SettingsRouteEvent;
}

@freezed
class RouteState with _$RouteState {
  const RouteState._();
  const factory RouteState.boiling() = BoilingRouteState;
  const factory RouteState.settings() = SettingsRouteState;
}

class RouteBLoC extends Bloc<RouteEvent, RouteState> {
  RouteBLoC() : super(const BoilingRouteState()) {
    on<RouteEvent>(
      (event, emitter) => event.map(
        boiling: (event) => _boiling(event, emitter),
        settings: (event) => _settings(event, emitter),
      ),
    );
  }

  void _boiling(_, Emitter<RouteState> emitter) {
    emitter(const BoilingRouteState());
  }

  void _settings(_, Emitter<RouteState> emitter) {
    emitter(const SettingsRouteState());
  }
}
