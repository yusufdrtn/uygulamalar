import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int sayi1, sayi2;
  String islem;

  print("hangi işlemi yapmak istiyorsun?");
  print("+, -, *, /, %, ^, ifadelerinden birisini gir.");
  print("(^) us alma islemlerinde sayi1 taban, sayi2 us olarak girilmelidir.");
  islem = stdin.readLineSync()!;

  print("sayi 1: ");
  sayi1 = int.parse(stdin.readLineSync()!);
  print("sayi 2: ");
  sayi2 = int.parse(stdin.readLineSync()!);

  switch (islem) {
    case "+":
      int sonuc = sayi1 + sayi2;
      print("$sayi1 ve $sayi2 sayilarinin toplami: $sonuc");
      break;
    case "-":
      if (sayi1 < sayi2) {
        int sonuc = sayi2 - sayi1;
        print("$sayi1 ve $sayi2 sayilarinin farki: $sonuc");
      } else {
        int sonuc = sayi1 - sayi2;
        print("$sayi1 ve $sayi2 sayilarinin farki: $sonuc");
      }
      break;
    case "*":
      int sonuc = sayi1 * sayi2;
      print("$sayi1 ve $sayi2 sayilarinin carpimi: $sonuc");
      break;
    case "/":
      if (sayi2 == 0) {
        print("Sifira bolme hatasi!");
      } else {
        double sonuc = sayi1 / sayi2;
        print("$sayi1 ve $sayi2 sayilarinin bolumu: $sonuc");
      }
      break;
    case "%":
      int sonuc = sayi1 % sayi2;
      print("$sayi1 ve $sayi2 sayilarinin modu: $sonuc");
      break;
    case "^":
      num sonuc = pow(sayi1, sayi2);
      print("$sayi1 uzeri $sayi2 : $sonuc");
      break;
    default:
      print("gecersiz islem girdiniz.");
      break;
  }
}
