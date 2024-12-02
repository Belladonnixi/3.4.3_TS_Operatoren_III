void main() {
  List<Map<String, dynamic>> reviews = [
    {'rating': 5, 'comment': 'Tolles Produkt'},
    {'rating': 3, 'comment': null},
    {'rating': 1, 'comment': 'Nicht zufrieden'},
  ];

  num totalRating = 0;
  int totalReviews = reviews.length;
  int withoutComment = 0;
  int completeReviews = 0;

  // Verarbeitung der Bewertungen
  totalRating += reviews[0]['rating'];
  if (reviews[0]['comment'] == null) {
    withoutComment++;
  } else {
    completeReviews++;
  }

  totalRating += reviews[1]['rating'];
  if (reviews[1]['comment'] == null) {
    withoutComment++;
  } else {
    completeReviews++;
  }

  totalRating += reviews[2]['rating'];
  if (reviews[2]['comment'] == null) {
    withoutComment++;
  } else {
    completeReviews++;
  }

  // Durchschnitt berechnen
  double averageRating = totalReviews > 0 ? totalRating / totalReviews : 0.0;

  // Ergebnisse in einem mehrzeiligen String ausgeben
  String result = '''
  Durchschnittliche Bewertung: ${averageRating.toStringAsFixed(1)} Sterne
  Anzahl der Bewertungen ohne Kommentar: $withoutComment
  Anzahl der vollstaendigen Bewertungen: $completeReviews
  ''';

  print(result);
}
