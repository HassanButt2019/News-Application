


import 'news_state.dart';

class FailureNews extends NewsState
{
  final String error;
  FailureNews({required this.error});
  @override
  // TODO: implement props
  List<Object?> get props => [error];

}