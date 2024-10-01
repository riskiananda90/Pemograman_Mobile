import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepageabsen extends StatelessWidget {
  const Homepageabsen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(Icons.menu)),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Listview Home",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                const Text("Rizki Ananda, SST.,M.Kom.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Text(
                  "Daftar kelas anda semester ini :",
                  style: TextStyle(
                      color: Colors.purple[900], fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          const HeaderNotif(),
          Expanded(
              child: ListView(
            children: const [
              CardCustom(
                Title: "Praktikum Pemograman Mobile",
                Substitle: "D-IV Teknik Informatika",
                Waktu: "Senin / 11:10 - 12:50",
                Ruang: "Ruang belum diatur",
              ),
              CardCustom(
                Title: "Rancangan Analisa Algoritma",
                Substitle: "D-IV Teknik Informatika",
                Waktu: "Senin / 11:10 - 12:50",
                Ruang: "Ruang belum diatur",
              ),
              CardCustom(
                Title: "Citra Digital",
                Substitle: "D-IV Teknik Informatika",
                Waktu: "Senin / 11:10 - 12:50",
                Ruang: "Ruang belum diatur",
              ),
              CardCustom(
                Title: "Jaringan Komputer",
                Substitle: "D-IV Teknik Informatika",
                Waktu: "Senin / 11:10 - 12:50",
                Ruang: "Ruang belum diatur",
              ),
              CardCustom(
                Title: "Bahasa Indonesia",
                Substitle: "D-IV Teknik Informatika",
                Waktu: "Senin / 11:10 - 12:50",
                Ruang: "Ruang belum diatur",
              ),
              CardCustom(
                Title: "Pengolahan Citra",
                Substitle: "D-IV Teknik Informatika",
                Waktu: "Senin / 11:10 - 12:50",
                Ruang: "Ruang belum diatur",
              ),
              CardCustom(
                Title: "Pemograman Mobile",
                Substitle: "D-IV Teknik Informatika",
                Waktu: "Senin / 11:10 - 12:50",
                Ruang: "Ruang belum diatur",
              ),
              CardCustom(
                Title: "Statistika",
                Substitle: "D-IV Teknik Informatika",
                Waktu: "Senin / 11:10 - 12:50",
                Ruang: "Ruang belum diatur",
              ),
              CardCustom(
                Title: "Sistem Pengambilan Keputusan",
                Substitle: "D-IV Teknik Informatika",
                Waktu: "Senin / 11:10 - 12:50",
                Ruang: "Ruang belum diatur",
              ),
            ],
          ))
        ]),
      ),
    );
  }
}

class CardCustom extends StatelessWidget {
  const CardCustom({
    super.key,
    required this.Title,
    required this.Substitle,
    required this.Waktu,
    required this.Ruang,
  });

  final String Title;
  final String Substitle;
  final String Waktu;
  final String Ruang;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      // height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            Substitle,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          Row(
            children: [
              Column(
                children: [
                  Text(Waktu),
                  Text(Ruang),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: const Text(
                    "3D",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class HeaderNotif extends StatelessWidget {
  const HeaderNotif({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      // height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Jangan lewatkan kehadiran anda hari ini!"),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "27 September 2024",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {},
                  child: const Text(
                    "Masuk",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {},
                  child: const Text(
                    "Keluar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
