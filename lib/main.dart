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
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CVSahifa(),
    );
  }
}

class CVSahifa extends StatelessWidget {
  final String ismSharif = "Alisher Karimov";
  final String tugilganSana = "15 Mart, 2001";
  final String manzil = "Toshkent shahar, Chilonzor tumani";
  final String talim = "TATU, 4-kurs, Dasturiy injiniring";
  final String telefon = "+998 90 123 45 67";
  final String email = "alisher.karimov@example.com";

  final String haqimda =
      "Dasturlashga qiziqadigan va yangi texnologiyalarni o'rganishni yaxshi ko'radigan talaba. Flutter va mobil ilovalar yaratish bo'yicha tajribaga egaman.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Profil qismi
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue[700]!, Colors.blue[500]!],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/profile.png'),
                    ),
                    SizedBox(height: 15),
                    Text(
                      ismSharif,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Asosiy ma'lumotlar
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Shaxsiy ma'lumotlar
                    SarlavhaMatn(matn: "📋 Shaxsiy Ma'lumotlar"),
                    OqKarta(
                      child: Column(
                        children: [
                          MalumotQator(icon: Icons.cake, matn: tugilganSana),
                          MalumotQator(icon: Icons.location_on, matn: manzil),
                          MalumotQator(icon: Icons.school, matn: talim),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    // Haqimda
                    SarlavhaMatn(matn: "💬 Men Haqimda"),
                    OqKarta(
                      child: Text(
                        haqimda,
                        style: TextStyle(fontSize: 14, height: 1.6),
                      ),
                    ),

                    SizedBox(height: 20),

                    // Tajriba
                    SarlavhaMatn(matn: "💼 Ish Tajribasi"),
                    TajribaKarta(
                      kompaniya: "TechSoft Solutions",
                      lavozim: "Flutter Developer",
                      muddat: "Iyun 2024 - Hozir",
                    ),
                    TajribaKarta(
                      kompaniya: "IT Park Toshkent",
                      lavozim: "Frontend Developer",
                      muddat: "Yanvar - May 2024",
                    ),

                    SizedBox(height: 20),

                    // Ko'nikmalar
                    SarlavhaMatn(matn: "⭐ Ko'nikmalar"),
                    OqKarta(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KonilmaQator(nom: "Flutter & Dart", foiz: "85%"),
                          KonilmaQator(nom: "Firebase", foiz: "75%"),
                          KonilmaQator(nom: "REST API", foiz: "80%"),
                          KonilmaQator(nom: "Git & GitHub", foiz: "70%"),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    // Tillar
                    SarlavhaMatn(matn: "🌍 Tillar"),
                    OqKarta(
                      child: Column(
                        children: [
                          TilQator(til: "O'zbek tili - Ona tili"),
                          TilQator(til: "Rus tili - Mukammal"),
                          TilQator(til: "Ingliz tili - Basic"),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    // Aloqa
                    SarlavhaMatn(matn: "📞 Bog'lanish"),
                    OqKarta(
                      child: Column(
                        children: [
                          AloqaQator(icon: Icons.phone, matn: telefon),
                          Divider(height: 20),
                          AloqaQator(icon: Icons.email, matn: email),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Sarlavha matni
class SarlavhaMatn extends StatelessWidget {
  final String matn;

  SarlavhaMatn({required this.matn});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Text(
        matn,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.grey[800],
        ),
      ),
    );
  }
}

// Oq karta
class OqKarta extends StatelessWidget {
  final Widget child;

  OqKarta({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
      child: child,
    );
  }
}

// Ma'lumot qatori
class MalumotQator extends StatelessWidget {
  final IconData icon;
  final String matn;

  MalumotQator({required this.icon, required this.matn});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue, size: 20),
          SizedBox(width: 10),
          Expanded(child: Text(matn, style: TextStyle(fontSize: 14))),
        ],
      ),
    );
  }
}

// Tajriba kartasi
class TajribaKarta extends StatelessWidget {
  final String kompaniya;
  final String lavozim;
  final String muddat;

  TajribaKarta({
    required this.kompaniya,
    required this.lavozim,
    required this.muddat,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            kompaniya,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(lavozim, style: TextStyle(fontSize: 14, color: Colors.blue)),
          SizedBox(height: 5),
          Text(muddat, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
        ],
      ),
    );
  }
}

// Ko'nikma qatori
class KonilmaQator extends StatelessWidget {
  final String nom;
  final String foiz;

  KonilmaQator({required this.nom, required this.foiz});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            nom,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              foiz,
              style: TextStyle(
                fontSize: 12,
                color: Colors.blue[700],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Til qatori
class TilQator extends StatelessWidget {
  final String til;

  TilQator({required this.til});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green, size: 18),
          SizedBox(width: 10),
          Text(til, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

// Aloqa qatori
class AloqaQator extends StatelessWidget {
  final IconData icon;
  final String matn;

  AloqaQator({required this.icon, required this.matn});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue, size: 20),
        SizedBox(width: 10),
        Expanded(child: Text(matn, style: TextStyle(fontSize: 14))),
      ],
    );
  }
}
