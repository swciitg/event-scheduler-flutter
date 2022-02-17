part of 'event_bloc.dart';


abstract class EventEvent extends Equatable {
  const EventEvent();
}

class LoginRequest extends EventEvent{

  final Login login;

  LoginRequest(this.login);

  @override
  // TODO: implement props
  List<Object?> get props => [login];

}

class EventPost extends EventEvent{
  final Event event;
  EventPost(this.event);

  @override
  // TODO: implement props
  List<Object?> get props => [event];
}

class EventsGet extends EventEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class EventUpdate extends EventEvent{
  final Event event;
  EventUpdate(this.event);

  @override
  // TODO: implement props
  List<Object?> get props => [event];
}

class EventNestedUpdate extends EventEvent{
  final int id;
  final NestedRequest event;

  EventNestedUpdate(this.id, this.event);

  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class EventFeedback extends EventEvent{
  final Event event;
  final FeedbackInput body;

  EventFeedback(this.event, this.body);

  @override
  // TODO: implement props
  List<Object?> get props => [event, body];

}

class EventDelete extends EventEvent{
  final Event event;
  EventDelete(this.event);

  @override
  // TODO: implement props
  List<Object?> get props => [event];
}