import 'dart:io';

void main() {
  int? pilihan;
  int? angka_1;
  int? angka_2;

  print("Pilihan Operasi Aritmatika");
  print("1. Penjumlahan");
  print("2. Pengurangan");
  print("1. Perkalian");
  print("1. Pembagian");

  stdout.write("Pilih Operasi (1-4) : ");
  pilihan = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Angka Pertama : ");
  angka_1 = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Angka Kedua : ");
  angka_2 = int.parse(stdin.readLineSync()!);

  switch (pilihan) {
    case 1:
      print("output : Hasil penjumlahan = ${angka_1 + angka_2}");
      break;
    case 2:
      print("output : Hasil pengurangan = ${angka_1 - angka_2}");
      break;
    case 3:
      print("output : Hasil perkalian = ${angka_1 * angka_2}");
      break;
    case 4:
      if (angka_2 != 0) {
        //bilangan apapun dalam aturan pembagian itu tidak bisa di bagi dengan 0 makanya itu bilangan kedua yang dinput tidak boleh sama dengan 0.
        print("output : Hasil pembagian = ${angka_1 / angka_2}");
      } else {
        print("Error: Tidak bisa dibagi dengan nol!");
      }
      break;
    default:
      print("Pilihan tidak valid.");
  }
}
