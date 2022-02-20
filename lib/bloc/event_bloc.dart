import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:event_schedular_flutter/model/Error.dart';
import 'package:event_schedular_flutter/model/Event.dart';
import 'package:event_schedular_flutter/model/NestedRequest.dart';
import 'package:event_schedular_flutter/model/authentication/Login.dart';
import 'package:event_schedular_flutter/services/event_service.dart';
import 'package:event_schedular_flutter/model/nested/PaymentPageViewFeedback.dart';

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

  }
}
