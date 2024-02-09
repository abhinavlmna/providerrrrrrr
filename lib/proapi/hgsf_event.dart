part of 'hgsf_bloc.dart';

@immutable
abstract class HgsfEvent {}
class AddCounterEvent extends HgsfEvent{
}
class AddDeleteEvent extends HgsfEvent{}