class Post {
  final int id;
  final String authorName;
  final String content;
  int likesCount;

  Post({
    required this.id,
    required this.authorName,
    required this.content,
    this.likesCount = 0,
  });
}