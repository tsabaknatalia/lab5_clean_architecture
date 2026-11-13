import '../../application/use_cases/get_feed_use_case.dart';
import '../../application/use_cases/like_post_use_case.dart';
import '../../infrastructure/repositories/mock_post_repository.dart';

class App {
  void run() {
    // 1. Dependency Injection: Створюємо конкретну реалізацію "БД"
    final repository = MockPostRepository();

    // 2. Передаємо цю залежність у наші Use Cases (вони знають лише про абстрактний інтерфейс)
    final getFeedUseCase = GetFeedUseCase(repository);
    final likePostUseCase = LikePostUseCase(repository);

    print('--- Моя Соціальна Мережа ---');
    
    // Показуємо початкову стрічку
    var feed = getFeedUseCase.execute();
    for (var post in feed) {
      print('Пост #${post.id} від ${post.authorName}: ${post.content} (Лайків: ${post.likesCount})');
    }

    print('\n--- Ставимо лайк першому посту... ---\n');
    likePostUseCase.execute(1);

    // Показуємо оновлену стрічку
    feed = getFeedUseCase.execute();
    for (var post in feed) {
      print('Пост #${post.id} від ${post.authorName}: ${post.content} (Лайків: ${post.likesCount})');
    }
  }
}