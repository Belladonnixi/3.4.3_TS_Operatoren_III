void main() {
  Map<String, Map<String, dynamic>> reviews = {
    'review1': {'rating': 5, 'comment': 'Tolles Produkt'},
    'review2': {'rating': 3, 'comment': null},
    'review3': {'rating': 1, 'comment': 'Nicht zufrieden'},
  };

  int totalRating = 0;
  int totalReviews = reviews.length;
  int withoutComment = 0;
  int completeReviews = 0;

  totalRating += reviews['review1']!['rating'] as int;
  if (reviews['review1']!['comment'] == null) {
    withoutComment++;
  } else {
    completeReviews++;
  }

  totalRating += reviews['review2']!['rating'] as int;
  if (reviews['review2']!['comment'] == null) {
    withoutComment++;
  } else {
    completeReviews++;
  }

  totalRating += reviews['review3']!['rating'] as int;
  if (reviews['review3']!['comment'] == null) {
    withoutComment++;
  } else {
    completeReviews++;
  }

  double averageRating = totalReviews > 0 ? totalRating / totalReviews : 0.0;

  String result = '''
  Durchschnittliche Bewertung: ${averageRating.toStringAsFixed(1)} Sterne
  Anzahl der Bewertungen ohne Kommentar: $withoutComment
  Anzahl der vollständigen Bewertungen: $completeReviews
  ''';

  print(result);
}
