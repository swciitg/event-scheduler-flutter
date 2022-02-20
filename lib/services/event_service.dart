import '../model/Error.dart';
import '../model/Event.dart';
import '../model/NestedRequest.dart';
import '../model/nested/PaymentPageViewFeedback.dart';
import '../model/authentication/Login.dart';
import '../model/authentication/Microsoft.dart';
import '../utils/Jwt.dart';
import '../utils/Url.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class EventService{

  Future<void> postEvent(Event event) async{
    try{
      Uri url = Uri.parse(baseUrl+middleUrl+newEvent);

      final _body = event.toJson();
      final jwt = await Jwt.getJwt();
      String _jwt = jwt.toString();
      final res = await http.post(
          url,
        headers: {
          "Content-type": "application/json",
          "Authorization":jwt ?? ""
        },
        body: json.encode(_body)
      );
      await Jwt.setJwt(res.headers['jwt']??_jwt);
      final response = json.decode(res.body);

    }catch(err){
      print(err);
      throw err;
    }
  }

  Future<List<Event>> getAllEvents()async{
    try{
      final url = Uri.parse(baseUrl + middleUrl + allEvents);
      final jwt = await Jwt.getJwt();
      String _jwt = jwt.toString();
      final res = await http.get(
        url,
        headers: {
          "Authorization":jwt ?? "",
          'Charset': 'utf-8',
          'Content-Type': 'application/json;charset=UTF-8',
        }
      );
      await Jwt.setJwt(res.headers['jwt'] ?? _jwt);
      final response = json.decode(res.body);
      List<Event> events = List<Event>.from(response.map((i)=>Event.fromJson(i)));
      return events;
    }catch(err){
      print(err);
      throw err;
    }
  }

  Future<void> updateDetails(Event event)async{
    try{
      final url = Uri.parse(baseUrl+middleUrl+ "${event.id}/" + updateAll);
      final _body = event.toJson();
      final jwt = await Jwt.getJwt();
      String _jwt = jwt.toString();
      final res = await http.patch(
          url,
          headers: {
            'Charset': 'utf-8',
            'Content-Type': 'application/json;charset=UTF-8',
            "Authorization":jwt ?? ""
          },
          body: json.encode(_body)
      );
      await Jwt.setJwt(res.headers['jwt']??_jwt);
      final response = json.decode(res.body);

    }catch(err){
      throw err;
    }
  }
  
  Future<void> updateNested(int id, NestedRequest request)async{
    try{
      final url = Uri.parse(baseUrl + middleUrl + "$id/" + nestedField);
      final body = request.toJson();

      final jwt = await Jwt.getJwt();
      String _jwt = jwt.toString();

      final res = await http.put(
          url,
          headers: {
            'Charset': 'utf-8',
            'Content-Type': 'application/json;charset=UTF-8',
            "Authorization":jwt ?? ""
          },
          body: json.encode(body)
      );

      await Jwt.setJwt(res.headers['jwt']??_jwt);
      final response = json.decode(res.body);
      print(response);
      
    }catch(err){
      throw err;
    }
  }

  Future<void> feedbackEvent(Event event, FeedbackInput body)async{
    try{
      final url = Uri.parse(baseUrl + middleUrl + "${event.id}/" + feedBack);
      final _body = body.toJson();
      final jwt = await Jwt.getJwt();
      String _jwt = jwt.toString();

      final res = await http.post(
          url,
          headers: {
            'Charset': 'utf-8',
            'Content-Type': 'application/json;charset=UTF-8',
            "Authorization":jwt ?? ""
          },
          body: json.encode(_body)
      );

      await Jwt.setJwt(res.headers['jwt']??_jwt);
      final response = json.decode(res.body);
    }catch(err){
      throw err;
    }
  }

  Future<void> deleteEvent(Event event)async{
    try{
      Uri url = Uri.parse(baseUrl + middleUrl + "${event.id}/" + delete);

      final jwt = await Jwt.getJwt();
      String _jwt = jwt.toString();

      final res = await http.delete(
          url,
          headers: {
            'Charset': 'utf-8',
            'Content-Type': 'application/json;charset=UTF-8',
            "Authorization":jwt ?? ""
          }
      );
      await Jwt.setJwt(res.headers['jwt']??_jwt);
    }catch(err){
      print(err);
      throw err;
    }
  }

  Future<void> microsoftLogin(Microsoft token) async{
    try{
      final url = Uri.parse(baseUrl + microsoftUrl);
      final _token = token.toJson();
      final response = await http.post(
          url,
        body: json.encode(_token)
      );

      final res = json.decode(response.body);
      if(res['status']==400){
        throw HttpException(res['message']);
      }
      await Jwt.setJwt(res['jwt']);

    }catch(err){
      throw err;
    }
  }

  Future<void> login(Login _login)async{
    try{
      final url = Uri.parse(baseUrl + passwordUrl);
      final _body = _login.toJson();
      final response = await http.post(
          url,
        body: json.encode(_body)
      );
      final res = json.decode(response.body);

      if(res['status']==400){
        throw HttpException(res['message']);
      }
      await Jwt.setJwt(res['jwt']);
    }catch(err){
      throw err;
    }
  }


}