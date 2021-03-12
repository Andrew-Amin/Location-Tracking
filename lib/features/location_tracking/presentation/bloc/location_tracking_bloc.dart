import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'location_tracking_event.dart';
part 'location_tracking_state.dart';
class LocationTrackingBloc extends Bloc<LocationTrackingEvent, LocationTrackingState> {
  LocationTrackingBloc() : super(LocationTrackingInitial());
  @override
  Stream<LocationTrackingState> mapEventToState(
    LocationTrackingEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
