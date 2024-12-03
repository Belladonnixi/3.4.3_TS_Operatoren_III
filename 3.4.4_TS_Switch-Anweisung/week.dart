import 'dart:io';

void main() {
  print('Bitte geben Sie eine Zahl zwischen 1 und 7 ein:');
  int? day = int.tryParse(stdin.readLineSync() ?? '');

  switch (day) {
    case 1:
      print('Montag');
    case 2:
      print('Dienstag');
    case 3:
      print('Mittwoch');
    case 4:
      print('Donnerstag');
    case 5:
      print('Freitag');
    case 6:
    case 7:
      print('Wochenende');
    default:
      print('Ungültige Eingabe');
  }
}
