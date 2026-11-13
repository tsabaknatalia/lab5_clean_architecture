import '../../domain/entities/post.dart';
import '../../domain/interfaces/ipost_repository.dart';

// Це конкретна реалізація, яка працює з нашими даними (в даному випадку - імітує БД)
class MockPostRepository implements IPostRepository {
  final List<Post> _posts = [
    Post(id: 1, authorName: 'Наталя', content: 'Працюю над п\'ятою лабораторною з Clean Architecture! 🚀', likesCount: 15),
    Post(id: 2, authorName: 'Маргаріта', content: 'Доменний шар та Use Cases готові. Рухаємось далі!', likesCount: 8),
  ];

  @override
  List<Post> getFeed() {
    return _posts;
  }

  @override
  void likePost(int postId) {
    final post = _posts.firstWhere((p) => p.id == postId);
    post.likesCount++;
  }
}