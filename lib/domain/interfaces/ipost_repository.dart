import '../entities/post.dart';

abstract class IPostRepository {
  List<Post> getFeed();
  void likePost(int postId);
}