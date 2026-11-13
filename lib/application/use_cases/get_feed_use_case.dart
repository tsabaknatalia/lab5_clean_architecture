import '../../domain/entities/post.dart';
import '../../domain/interfaces/ipost_repository.dart';

class GetFeedUseCase {
  // Залежність через абстракцію, а не конкретну базу даних
  final IPostRepository repository;

  GetFeedUseCase(this.repository);

  List<Post> execute() {
    return repository.getFeed();
  }
}