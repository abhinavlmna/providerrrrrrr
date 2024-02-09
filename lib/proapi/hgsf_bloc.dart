import 'dart:async';
import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part
'hgsf_event.dart';
part 'hgsf_state.dart';

class HgsfBloc extends Bloc<HgsfEvent, HgsfState> {
  HgsfBloc() : super(HgsfInitial(globalconter: 0)) {
    on<HgsfEvent>((event, emit) {
      // TODO: implement event handler
    }); on<AddCounterEvent>((event, emit) {
     int _localcounter=0;
     _localcounter=state.globalconter++;
     emit(HgsfState(globalconter: _localcounter));
    });
    on<AddDeleteEvent>((event, emit) {
      int _localcounter=0;
      _localcounter=state.globalconter--;
      emit(HgsfState(globalconter: _localcounter));
    });
  }
}
