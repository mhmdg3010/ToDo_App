import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/modules/counter/cubit/states.dart';
class CounterCubit extends Cubit<CounterStates>
{

CounterCubit ():super(CounterInitialStates());

static CounterCubit get(context)=>BlocProvider.of(context);

int Counter=1;

void minus(){
  Counter--;
  emit(CounterPlus());
}
void plus(){
  Counter++;
  emit(CounterMinus());

}
}