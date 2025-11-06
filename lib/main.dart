import 'package:flutter/material.dart';

void main() {
  runApp(MeningCVim());
}

class MeningCVim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mening CV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: CVSahifa(),
    );
  }
}

class CVSahifa extends StatelessWidget {
  final String ismSharif = "Alisher Karimov";
  final String tugilganSana = "15 Mart, 2001";
  final String yashashManzil = "Toshkent shahar, Chilonzor tumani";
  final String talimJoyi = "Toshkent Axborot Texnologiyalari Universiteti";
  final String mutaxassislik = "Dasturiy injiniring";
  final String kurs = "4-kurs";
  final String telefon = "+998 90 123 45 67";
  final String email = "alisher.karimov@example.com";
  final String telegram = "@alisherdev";
  final String github = "github.com/alisherkarimov";

  final String haqimda =
      "Men dasturlashga qiziqadigan va yangi texnologiyalarni o'rganishni yaxshi ko'radigan talabaман. Flutter, Dart va mobil ilovalar yaratish bo'yicha tajribaga egaman. Jamoa bilan ishlashni va murakkab muammolarni hal qilishni yoqtiraman. Har doim yangi bilimlar va tajriba orttirishga intilaман.";

  final List<Map<String, dynamic>> ishTajribalari = [
    {
      "kompaniya": "TechSoft Solutions",
      "lavozim": "Flutter Developer (Stajirovka)",
      "muddat": "Iyun 2024 - Hozir",
      "tavsif":
      "Mobil ilovalar yaratish, API bilan ishlash, jamoa bilan loyihalar ustida ishlash. 3 ta loyihada ishtirok etdim va real tajriba to'pladim.",
      "icon": Icons.phone_android,
    },
    {
      "kompaniya": "IT Park Toshkent",
      "lavozim": "Frontend Developer (Freelance)",
      "muddat": "Yanvar 2024 - May 2024",
      "tavsif":
      "Veb saytlar va mobil ilovalar yaratish. Flutter va React texnologiyalari bilan ishlash. 5+ mijoz loyihalarini muvaffaqiyatli yakunladim.",
      "icon": Icons.web,
    },
    {
      "kompaniya": "Universitet Loyihalari",
      "lavozim": "Team Leader",
      "muddat": "Sentyabr 2023 - Dekabr 2023",
      "tavsif":
      "Talabalar uchun mobil ilova yaratish loyihasida jamoa rahbari bo'lib ishladim. Loyihani muddatida va sifatli yakunladik.",
      "icon": Icons.school,
    },
  ];

  final List<Map<String, dynamic>> konikmalari = [
    {"nom": "Flutter & Dart", "daraja": 0.85, "rang": Colors.blue},
    {"nom": "Firebase", "daraja": 0.75, "rang": Colors.orange},
    {"nom": "REST API", "daraja": 0.80, "rang": Colors.green},
    {"nom": "Git & GitHub", "daraja": 0.70, "rang": Colors.purple},
    {"nom": "UI/UX Design", "daraja": 0.65, "rang": Colors.pink},
    {"nom": "SQLite", "daraja": 0.60, "rang": Colors.teal},
  ];

  final List<String> tillar = [
    "O'zbek tili - Ona tili",
    "Rus tili - Mukammal",
    "Ingliz tili - B2 (Upper-Intermediate)",
  ];

  final List<String> qiziqishlar = [
    "Yangi texnologiyalarni o'rganish",
    "Open source loyihalarda ishtirok etish",
    "Kitob o'qish va blog yozish",
    "Sport va sog'lom turmush tarzi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue[50]!, Colors.purple[50]!, Colors.white],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                // Profil bo'limi
                ProfilBolimi(
                  ismSharif: ismSharif,
                  mutaxassislik: mutaxassislik,
                ),
                SizedBox(height: 20),

                // Asosiy malumotlar
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BolimSarlavha(
                        icon: Icons.person,
                        matn: "Shaxsiy Ma'lumotlar",
                        rang: Colors.blue,
                      ),
                      SizedBox(height: 15),
                      MalumotQatori(
                        icon: Icons.cake,
                        sarlavha: "Tug'ilgan sana",
                        matn: tugilganSana,
                      ),
                      MalumotQatori(
                        icon: Icons.location_on,
                        sarlavha: "Manzil",
                        matn: yashashManzil,
                      ),
                      MalumotQatori(
                        icon: Icons.school,
                        sarlavha: "Ta'lim",
                        matn: "$talimJoyi, $kurs",
                      ),
                      SizedBox(height: 25),

                      // Haqimda
                      BolimSarlavha(
                        icon: Icons.info_outline,
                        matn: "Men Haqimda",
                        rang: Colors.purple,
                      ),
                      SizedBox(height: 15),
                      HaqimdaKarta(haqimda: haqimda),
                      SizedBox(height: 25),

                      // Ish tajribasi
                      BolimSarlavha(
                        icon: Icons.work_history,
                        matn: "Ish Tajribasi",
                        rang: Colors.orange,
                      ),
                      SizedBox(height: 15),
                      ...ishTajribalari.map(
                            (tajriba) =>
                            TajribaKarta(
                              kompaniya: tajriba["kompaniya"],
                              lavozim: tajriba["lavozim"],
                              muddat: tajriba["muddat"],
                              tavsif: tajriba["tavsif"],
                              icon: tajriba["icon"],
                            ),
                      ),
                      SizedBox(height: 25),

                      // Ko'nikmalar
                      BolimSarlavha(
                        icon: Icons.star,
                        matn: "Texnik Ko'nikmalar",
                        rang: Colors.green,
                      ),
                      SizedBox(height: 15),
                      KoniklalarKarta(konikmalari: konikmalari),
                      SizedBox(height: 25),

                      // Tillar
                      BolimSarlavha(
                        icon: Icons.language,
                        matn: "Tillar",
                        rang: Colors.indigo,
                      ),
                      SizedBox(height: 15),
                      TillarKarta(tillar: tillar),
                      SizedBox(height: 25),

                      // Qiziqishlar
                      BolimSarlavha(
                        icon: Icons.favorite,
                        matn: "Qiziqishlarim",
                        rang: Colors.pink,
                      ),
                      SizedBox(height: 15),
                      QiziqishlarKarta(qiziqishlar: qiziqishlar),
                      SizedBox(height: 25),

                      // Aloqa
                      BolimSarlavha(
                        icon: Icons.contact_mail,
                        matn: "Bog'lanish",
                        rang: Colors.teal,
                      ),
                      SizedBox(height: 15),
                      AloqaKarta(
                        telefon: telefon,
                        email: email,
                        telegram: telegram,
                        github: github,
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Profil bo'limi widget
class ProfilBolimi extends StatelessWidget {
  final String ismSharif;
  final String mutaxassislik;

  ProfilBolimi({required this.ismSharif, required this.mutaxassislik});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[700]!, Colors.blue[500]!],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 4),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
          ),
          SizedBox(height: 15),
          Text(
            ismSharif,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              mutaxassislik,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Bo'lim sarlavhasi widget
class BolimSarlavha extends StatelessWidget {
  final IconData icon;
  final String matn;
  final Color rang;

  BolimSarlavha({required this.icon, required this.matn, required this.rang});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: rang.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: rang, size: 24),
        ),
        SizedBox(width: 12),
        Text(
          matn,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
      ],
    );
  }
}

// Malumot qatori widget
class MalumotQatori extends StatelessWidget {
  final IconData icon;
  final String sarlavha;
  final String matn;

  MalumotQatori({
    required this.icon,
    required this.sarlavha,
    required this.matn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue[700], size: 24),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sarlavha,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
                SizedBox(height: 3),
                Text(
                  matn,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Haqimda karta widget
class HaqimdaKarta extends StatelessWidget {
  final String haqimda;

  HaqimdaKarta({required this.haqimda});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 8,
          ),
        ],
      ),
      child: Text(
        haqimda,
        style: TextStyle(fontSize: 15, height: 1.7, color: Colors.grey[700]),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

// Tajriba karta widget
class TajribaKarta extends StatelessWidget {
  final String kompaniya;
  final String lavozim;
  final String muddat;
  final String tavsif;
  final IconData icon;

  TajribaKarta({
    required this.kompaniya,
    required this.lavozim,
    required this.muddat,
    required this.tavsif,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.orange.withOpacity(0.3), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: Colors.orange[700], size: 24),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      kompaniya,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    Text(
                      lavozim,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue[700],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.calendar_today, size: 14, color: Colors.grey[600]),
              SizedBox(width: 5),
              Text(
                muddat,
                style: TextStyle(fontSize: 13, color: Colors.grey[600]),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            tavsif,
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Colors.grey[700],
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

// Ko'nikmalar karta widget
class KoniklalarKarta extends StatelessWidget {
  final List<Map<String, dynamic>> konikmalari;

  KoniklalarKarta({required this.konikmalari});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        children: konikmalari.map((konikma) {
          return Padding(
            padding: EdgeInsets.only(bottom: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      konikma["nom"],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[800],
                      ),
                    ),
                    Text(
                      "${(konikma["daraja"] * 100).toInt()}%",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: konikma["rang"],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: konikma["daraja"],
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation<Color>(konikma["rang"]),
                    minHeight: 8,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

// Tillar karta widget
class TillarKarta extends StatelessWidget {
  final List<String> tillar;

  TillarKarta({required this.tillar});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        children: tillar.map((til) {
          return Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Icon(Icons.check_circle, color: Colors.indigo, size: 20),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    til,
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

// Qiziqishlar karta widget
class QiziqishlarKarta extends StatelessWidget {
  final List<String> qiziqishlar;

  QiziqishlarKarta({required this.qiziqishlar});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: qiziqishlar.map((qiziqish) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.pink[50],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.pink[200]!, width: 1),
          ),
          child: Text(
            qiziqish,
            style: TextStyle(
              fontSize: 13,
              color: Colors.pink[700],
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }).toList(),
    );
  }
}

// Aloqa karta widget
class AloqaKarta extends StatelessWidget {
  final String telefon;
  final String email;
  final String telegram;
  final String github;

  AloqaKarta({
    required this.telefon,
    required this.email,
    required this.telegram,
    required this.github,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        children: [
          AloqaQatori(icon: Icons.phone, matn: telefon, rang: Colors.green),
          Divider(height: 25),
          AloqaQatori(icon: Icons.email, matn: email, rang: Colors.red),
          Divider(height: 25),
          AloqaQatori(icon: Icons.telegram, matn: telegram, rang: Colors.blue),
          Divider(height: 25),
          AloqaQatori(icon: Icons.code, matn: github, rang: Colors.grey[800]!),
        ],
      ),
    );
  }
}

// Aloqa qatori widget
class AloqaQatori extends StatelessWidget {
  final IconData icon;
  final String matn;
  final Color rang;

  AloqaQatori({required this.icon, required this.matn, required this.rang});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: rang.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: rang, size: 22),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Text(
            matn,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[700],
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
