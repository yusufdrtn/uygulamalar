import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int sayi, tahmin, sayac, puan;
  sayi = Random().nextInt(101);

  sayac = 0;
  puan = 100;
  print("1 ile 100 arasinda bir sayi tahmin et.");

  do {
    tahmin = int.parse(stdin.readLineSync()!);
    sayac++;

    if (tahmin < sayi) {
      print("daha buyuk");
      puan -= 10;
    } else if (tahmin > sayi) {
      print("daha kucuk");
      puan -= 10;
    } else {
      print("tebrikler $sayac tahminde dogru sayiyi buldunuz.");
      print("puanınız $puan.");
    }
  } while (tahmin != sayi);
}
