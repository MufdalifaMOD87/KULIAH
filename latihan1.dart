import 'dart:io';

void main(){
  int ? angka ;

  stdout.write ("Masukkan angka : ");
  angka = int.parse(stdin.readLineSync()!);

  if (angka % 2 ==0){
    print("Angka $angka adalah bilangan genap");
  } else{
    print("Angka $angka adalah bilangan ganjil");
  }
}