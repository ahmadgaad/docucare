extension StringNotNullOrEmpty on String? {
  bool isNotNullOrEmpty() => this != null || this!.isNotEmpty;
  
}

extension ListExtension<T> on List<T>? {
  bool isNotNullOrEmpty() => this != null && this!.isNotEmpty;
  
}