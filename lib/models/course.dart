class Course {
  final int? id;
  final String title;
  final String description;
  final int duration;

  Course({
    this.id,
    required this.title,
    required this.description,
    required this.duration,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'duration': duration,
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      duration: map['duration'],
    );
  }

  Course copyWith({
    int? id,
    String? title,
    String? description,
    int? duration,
  }) {
    return Course(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      duration: duration ?? this.duration,
    );
  }
}
