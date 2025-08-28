part of 'parts_filter_cubit.dart';

@immutable
sealed class PartsFilterState {}

final class PartsFilterInitial extends PartsFilterState {}
final class PartsFilterArms extends PartsFilterState {}
final class PartsFilterLegs extends PartsFilterState {}
final class PartsFilterUnderArms extends PartsFilterState {}
final class PartsFilterBikiniLine extends PartsFilterState {}
final class PartsFilterStomach extends PartsFilterState {}
final class PartsFilterFace extends PartsFilterState {}
final class PartsFilterAll extends PartsFilterState {}
