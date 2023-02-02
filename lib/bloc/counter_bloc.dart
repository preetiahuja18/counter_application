import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
class CounterBloc extends  Bloc<CounterEvent,int>{
  CounterBloc(): super(0);
  @override
  Stream<int> mapEventToState (CounterEvent event) async*{
    switch(event){
      case CounterEvent.increment:
        yield state+1;
        break;
      default:
        break;
    }
  }
}