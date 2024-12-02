import 'dart:math';

void main() {
  // Wetterdaten für drei Tage
  double temp1 = 22.5, temp2 = 19.8, temp3 = 25.2;
  double regen1 = 0.0, regen2 = 12.5, regen3 = 0.5;
  int? wind1 = 15, wind2 = null, wind3 = 20;

  // Temperaturdifferenz über drei Tage berechnen mit min und max

  List<double> temperaturen = [temp1, temp2, temp3];

  // Die `reduce`-Methode durchläuft die Liste und vergleicht jeweils zwei Werte,
  // um das Maximum zu finden. Dafür nutze ich die eingebaute Funktion `max`,
  // die den größeren der beiden verglichenen Werte zurückgibt.
  // Bei 'min' wird der kleinere Wert zurückgegeben, das ist ebenso schon eingebaut.
  double tempMax = temperaturen.reduce(max);
  double tempMin = temperaturen.reduce(min);
  double tempDiff = tempMax - tempMin;

  // Berechnnung der Menge der Regentage
  List<double> regen = [regen1, regen2, regen3];
  int regenTage = regen.where((element) => element > 0).length;

  // Berechnung der Tage mit Windgeschwindigkeiten über 10 km/h
  // Die Variable windgeschwindigkeiten ist eine Liste, die die Windgeschwindigkeiten für drei Tage enthält. Einige der Werte können jedoch null sein, wenn keine Winddaten verfügbar sind.
  // Die Methode where() wird auf der Liste windgeschwindigkeiten aufgerufen. Diese Methode akzeptiert eine Funktion als Parameter, die für jedes Element in der Liste ausgeführt wird. Die Funktion überprüft, ob das Element nicht null ist und ob es größer als 10 ist. Wenn diese Bedingungen erfüllt sind, wird das Element in die Ergebnisliste aufgenommen.
  // Die Methode length wird dann auf die Ergebnisliste angewendet, um die Anzahl der Tage mit Windgeschwindigkeiten über 10 km/h zu ermitteln.
  // Der Wert von windTage wird schließlich verwendet, um die Anzahl der Tage mit Windgeschwindigkeiten über 10 km/h auszugeben.

  List<int?> windgeschwindigkeiten = [wind1, wind2, wind3];
  int windTage =
      windgeschwindigkeiten
          .where((element) => element != null && element > 10)
          .length;

  // Ausgabe der berechneten Werte in einem mehrzeiligen String der den double Wert auf zwei Nachkommastellen rundet
  print('''
Temperaturdifferenz: ${tempDiff.toStringAsFixed(2)}°C
Regen Tage: $regenTage
Tage mit Windgeschwindigkeiten über 10 km/h: $windTage
''');
}
