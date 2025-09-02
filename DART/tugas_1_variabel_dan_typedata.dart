//Aplikasi Penghitung Gaji Sederhana

import 'dart:io';

void main(){
  String ? Nama_karyawan ;
  int ? jam_kerja;
  double? upah_perjam;
  bool ? status;

  stdout.write("Masukkan nama karyawan : ");
  Nama_karyawan = stdin.readLineSync();

  stdout.write("Masukkan jam kerja : ");
  jam_kerja = int.parse(stdin.readLineSync()!);

  stdout.write("masukkan upah perjam : ");
  upah_perjam = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkkan status karyawan (true = tetap, false = kontrak):");
  status = stdin.readLineSync()!.toLowerCase()== "true";

  //hitung gaji kotor
  double gaji_kotor = jam_kerja * upah_perjam;

  //hitung pajak sesuai status karyawan
  double pajak = status? gaji_kotor * 0.10 : gaji_kotor *0.05;

  //hitung gaji bersih
  double gaji_bersih = gaji_kotor - pajak;

  print("nama Karyawan : $Nama_karyawan");
  print("Gaji Kotor    : Rp $gaji_kotor");
  print("Pajak         : Rp $pajak");
  print("Gaji Bersih   : Rp $gaji_bersih");


}