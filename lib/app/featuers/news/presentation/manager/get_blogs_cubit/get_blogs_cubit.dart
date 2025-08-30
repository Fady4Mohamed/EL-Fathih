import 'package:bloc/bloc.dart';
import 'package:el_fathih/app/core/helper/consts.dart';
import 'package:el_fathih/app/featuers/news/data/get_blogs_repo_implemintation.dart';
import 'package:el_fathih/app/featuers/news/data/models/blog_data.dart';
import 'package:el_fathih/app/featuers/news/data/models/blogs_response.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'get_blogs_state.dart';

class GetBlogsCubit extends Cubit<GetBlogsState> {
  GetBlogsCubit() : super(GetBlogsInitial());
  late BlogsResponse blogs;

  Future<void> getBlogs() async {
    emit(GetBlogsLoading());
    var box = await Hive.openBox<BlogData>(Consts.blogsBox);
    var blogslist = box.get(Consts.blogsBox);
    if (blogslist != null) {
      blogs = BlogsResponse(
        status: "success",
        code: 200,
        results: blogslist.blogs.length,
        message: "data loaded from hive",
        data: blogslist,
      );
      emit(GetBlogsSuccess());
    }
    var blogsResponse = await GetBlogsRepoImplemintation().get();
    blogsResponse.fold(
      (failure) {
        if (blogslist == null) {
          emit(GetBlogsFailure(failure.message));
        }
      },
      (blogs) async {
        this.blogs = blogs;
        emit(GetBlogsSuccess());
        box.delete(Consts.blogsBox);
        await box.put(Consts.blogsBox, blogs.data);
      },
    );
  }
}
