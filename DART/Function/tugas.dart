import 'dart:io';

void main() {
  List<Map<String, String>> mahasiswaList = [];

  print(" Entry Data Mahasiswa (Minimal 10) ");

  // Input data mahasiswa
  for (int i = 0; i < 10; i++) {
    print("\nData mahasiswa ke-${i + 1}");

    stdout.write("Masukkan NIM       : ");
    String nim = stdin.readLineSync()!;

    stdout.write("Masukkan Nama      : ");
    String nama = stdin.readLineSync()!;

    stdout.write("Masukkan Prodi     : ");
    String prodi = stdin.readLineSync()!;

    stdout.write("Masukkan Angkatan  : ");
    String angkatan = stdin.readLineSync()!;

    mahasiswaList.add({
      "NIM": nim,
      "Nama": nama,
      "Prodi": prodi,
      "Angkatan": angkatan,
    });
  }

  // Loop menu supaya bisa cari terus tanpa keluar program
  while (true) {
    print("\n Menu Pencarian Data Mahasiswa ");
    stdout.write(
        "Masukkan NIM yang ingin dicari (atau ketik 'exit' untuk keluar): ");
    String input = stdin.readLineSync()!;

    if (input.toLowerCase() == "exit") {
      print("Program selesai.");
      break;
    }

    bool found = false;
    for (var mhs in mahasiswaList) {
      if (mhs["NIM"] == input) {
        print("\n--- Data Mahasiswa Ditemukan ---");
        print("NIM      : ${mhs['NIM']}");
        print("Nama     : ${mhs['Nama']}");
        print("Prodi    : ${mhs['Prodi']}");
        print("Angkatan : ${mhs['Angkatan']}");
        found = true;
        break;
      }
    }

    if (!found) {
      print("Data mahasiswa dengan NIM $input tidak ditemukan.");
    }
  }
}
