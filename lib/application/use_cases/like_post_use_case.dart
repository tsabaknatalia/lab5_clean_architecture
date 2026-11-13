import '../../domain/interfaces/ipost_repository.dart';

class LikePostUseCase {
  final IPostRepository repository;

  LikePostUseCase(this.repository);

  void execute(int postId) {
    repository.likePost(postId);
  }
}