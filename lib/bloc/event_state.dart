part of 'event_bloc.dart';

abstract class EventState extends Equatable {
  const EventState();
}

class EventInitial extends EventState {
  @override
  List<Object> get props => [];
}

class EventLoading extends EventState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class EventLoaded extends EventState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class EventsList extends EventState{

  List<Event> events;
  EventsList(this.events);

  @override
  // TODO: implement props
  List<Object?> get props => [events];

}

class EventError extends EventState {

  final String message;

  EventError(this.message);
  @override
  // TODO: implement props
  List<Object?> get props => [];

}