void main() {
  String light = 'red';

  switch (light) {
    case 'green':
      print('Gehen');
    case 'yellow':
      print('Achtung');
    case 'red':
      print('Stop');
    default:
      print('Gehen Sie vorsichtig');
  }
}
