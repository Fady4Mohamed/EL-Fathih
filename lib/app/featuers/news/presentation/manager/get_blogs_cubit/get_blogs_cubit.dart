import 'package:bloc/bloc.dart';
import 'package:el_fathih/app/featuers/news/data/get_blogs_repo_implemintation.dart';
import 'package:el_fathih/app/featuers/news/data/models/blogs_response.dart';
import 'package:meta/meta.dart';

part 'get_blogs_state.dart';

class GetBlogsCubit extends Cubit<GetBlogsState> {
  GetBlogsCubit() : super(GetBlogsInitial());
late  BlogsResponse blogs ;

  Future<void> getBlogs() async {
    emit(GetBlogsLoading());
    var blogsResponse =await GetBlogsRepoImplemintation().get();
    blogsResponse.fold((failure) {
      emit(GetBlogsFailure(failure.message));
    }, (blogs) {
      this.blogs=blogs;
       emit(GetBlogsSuccess());
    });
   
  }
}
