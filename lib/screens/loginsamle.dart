import 'package:event_schedular_flutter/bloc/event_bloc.dart';
import 'package:event_schedular_flutter/model/authentication/Login.dart';
import 'package:event_schedular_flutter/screens/android_five.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginFirst extends StatefulWidget {
  const LoginFirst({ Key? key }) : super(key: key);

  @override
  State<LoginFirst> createState() => _LoginFirstState();
}

class _LoginFirstState extends State<LoginFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Create Event',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: BlocConsumer<EventBloc, EventState>(
                listener: (context, state) {
                  if (state is EventError) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.message),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is EventInitial) {
                    return buildInitialInput();
                  }
                  if (state is EventLoading) {
                    return buildLoading();
                  }
                  if (state is EventLoaded) {
                    return buildInitialInput();
                  } else {
                    return buildInitialInput();
                  }
                },
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ));
  }
  Widget buildInitialInput() {
    return const LoginSample();
  }

  Widget buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class LoginSample extends StatefulWidget {
  const LoginSample({Key? key}) : super(key: key);

  @override
  State<LoginSample> createState() => _LoginSampleState();
}

class _LoginSampleState extends State<LoginSample> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  var login = {'username': '', 'password': ''};

  void _submit() {
    _formKey.currentState!.save();
    final _login = Login(login['username'] ?? '', login['password'] ?? '');
    final loginReq = BlocProvider.of<EventBloc>(context);
    loginReq.add(LoginRequest(_login));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Username'),
                      onSaved: (value) {
                        login['username'] = value!;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                      onSaved: (value) {
                        login['password'] = value!;
                      },
                    )
                  ],
                ),
              )),
          ElevatedButton(
            child: const Text('Submit'),
            onPressed: (){
              _submit();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AndroidFive())
              );
            },
          )
        ],
      ),
    );
  }
}
