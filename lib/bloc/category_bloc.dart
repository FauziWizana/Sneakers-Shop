part of 'bloc.dart';

class CategoryBloc extends Bloc<int, int> {
  CategoryBloc(int initialState) : super(initialState);

  @override
  Stream<int> mapEventToState(int event) async* {
    yield event;
  }
}
