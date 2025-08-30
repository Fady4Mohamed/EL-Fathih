part of 'get_blogs_cubit.dart';

@immutable
sealed class GetBlogsState {}

final class GetBlogsInitial extends GetBlogsState {}
final class GetBlogsLoading extends GetBlogsState {}
final class GetBlogsSuccess extends GetBlogsState {}
final class GetBlogsFailure extends GetBlogsState {
  final String failure;
  GetBlogsFailure(this.failure);
}
