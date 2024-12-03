class Review {
  int rating;
  String? comment;

  Review({required this.rating, this.comment});

  factory Review.fromMap(Map<String, dynamic> map) {
    return Review(
      rating: map['rating'] as int,
      comment: map['comment'] as String?,
    );
  }
}

void main() {
  Map<String, Review> reviews = {
    'review1': Review.fromMap({'rating': 5, 'comment': 'Tolles Produkt'}),
    'review2': Review.fromMap({'rating': 3, 'comment': null}),
    'review3': Review.fromMap({'rating': 1, 'comment': 'Nicht zufrieden'}),
  };

  int totalRating = 0;
  int totalReviews = reviews.length;
  int withoutComment = 0;
  int completeReviews = 0;

  for (final entry in reviews.entries) {
    var review = entry.value;
    totalRating += review.rating;
    if (review.comment == null) {
      withoutComment++;
    } else {
      completeReviews++;
    }
  }

  double averageRating = totalReviews > 0 ? totalRating / totalReviews : 0.0;

  String result = '''
Durchschnittliche Bewertung: ${averageRating.toStringAsFixed(1)} Sterne
Anzahl der Bewertungen ohne Kommentar: $withoutComment
Anzahl der vollstaendigen Bewertungen: $completeReviews
''';

  print(result);
}
