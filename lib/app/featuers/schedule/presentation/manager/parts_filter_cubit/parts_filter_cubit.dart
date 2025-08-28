import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'parts_filter_state.dart';

class PartsFilterCubit extends Cubit<PartsFilterState> {
  PartsFilterCubit() : super(PartsFilterInitial());
  void filterByArms() => emit(PartsFilterArms());
  void filterByLegs() => emit(PartsFilterLegs());
  void filterByUnderArms() => emit(PartsFilterUnderArms()); 
  void filterByBikiniLine() => emit(PartsFilterBikiniLine());
  void filterByStomach() => emit(PartsFilterStomach());
  void filterByFace() => emit(PartsFilterFace());
  void filterByAll() => emit(PartsFilterAll());
}
