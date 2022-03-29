import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../model/Error.dart';
import '../model/Event.dart';
import '../model/NestedRequest.dart';
import '../model/Rsvp.dart';
import '../model/authentication/Login.dart';
import '../services/event_service.dart';
import '../model/nested/PaymentPageViewFeedback.dart';

part 'event_event.dart';
part 'event_state.dart';

class EventBloc extends Bloc<EventEvent, EventState> {

  final EventService _eventService;

  EventBloc(this._eventService) : super(EventInitial()) {
    on<LoginRequest>((event, emit) async{
      try{

        emit(EventLoading());
        await _eventService.login(event.login);
        emit(EventLoaded());

      } on HttpException catch(err){
        emit(EventError(err.toString()));
      }

    });

    on<EventPost>((event, emit)async{
      try{
        emit(EventLoading());
        await _eventService.postEvent(event.event);
        emit(EventLoaded());
      } on HttpException catch(err){
        emit(EventError(err.toString()));
      }
    });

    on<EventsGet>((event, emit)async{
      try{
        emit(EventLoading());
        final events = await _eventService.getAllEvents();
        emit(EventsList(events));
      } on HttpException catch(err){
        emit(EventError(err.toString()));
      }
    });

    on<EventUpdate>((event, emit)async{
      try{
        emit(EventLoading());
        await _eventService.updateDetails(event.event);
        emit(EventLoaded());
      } on HttpException catch(err){
        emit(EventError(err.toString()));
      }
    });

    on<EventNestedUpdate>((event, emit)async{
      try{
        emit(EventLoading());
        await _eventService.updateNested(event.id, event.event);
        emit(EventLoaded());
      } on HttpException catch(err){
        emit(EventError(err.toString()));
      }
    });

    on<EventFeedback>((event, emit)async{
      try{
        emit(EventLoading());
        await _eventService.feedbackEvent(event.event, event.body);
        emit(EventLoaded());
      }on HttpException catch(err){
        emit(EventError(err.toString()));
      }
    });

    on<EventDelete>((event, emit)async{
      try{
        emit(EventLoading());
        await _eventService.deleteEvent(event.event);
        emit(EventLoaded());
      }on HttpException catch(err){
        emit(EventError(err.toString()));
      }
    });

    on<GetAllRsvp>((event, emit)async{
      try{
        emit(EventLoading());
        final res = await _eventService.getAllRsvp();
        emit(RsvpEvent(res));
      } on HttpException catch(err){
        emit(EventError(err.toString()));
      }
    });

    on<GetAllNotRsvp>((event, emit)async{
      try{
        emit(EventLoading());
        final res = await _eventService.getAllNotRsvp();
        emit(RsvpEvent(res));
      } on HttpException catch(err){
        emit(EventError(err.toString()));
      }
    });

    on<GetAllRsvpSpecific>((event, emit)async{
      try{
        emit(EventLoading());
        final res = await _eventService.getAllRsvpSpecific(event.clubname);
        emit(RsvpEvent(res));
      } on HttpException catch(err){
        emit(EventError(err.toString()));
      }
    });

    on<GetAllNotRsvpSpecific>((event, emit)async{
      try{
        emit(EventLoading());
        final res = await _eventService.getAllNotRsvpSpecific(event.clubname);
        emit(RsvpEvent(res));
      } on HttpException catch(err){
        emit(EventError(err.toString()));
      }
    });

    on<AddRsvp>((event, emit)async{
      try{
        emit(EventLoading());
        await _eventService.addRsvp(event.id);
        emit(RsvpLoaded());
      } on HttpException catch(err){
        emit(EventError(err.toString()));
      }
    });

    on<RemoveRsvp>((event, emit)async{
      try{
        emit(EventLoading());
        await _eventService.removeRsvp(event.id);
        emit(RsvpLoaded());
      } on HttpException catch(err){
        emit(EventError(err.toString()));
      }
    });

  }
}
