import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/widgets/my_list_tile.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(56),
        child: Center(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CircleAvatar(
                  foregroundImage: AssetImage("assets/my_image.jpg"),
                  radius: 75,
                ),
                Text(
                  "Ramez A. Rayyan",
                  style: GoogleFonts.pacifico(
                    color: Colors.tealAccent.shade100,
                    fontSize: 40,
                  ),
                ),
                Text(
                  "Flutter Developer",
                  style: GoogleFonts.ubuntu(
                    color: Colors.tealAccent.shade100,
                    fontSize: 28,
                  ),
                ),
                const Divider(
                  color: Colors.tealAccent,
                ),
                const MyListTile(
                  icon: Icons.link,
                  title: "Website",
                ),
                const MyListTile(
                  icon: Icons.email,
                  title: "Email",
                ),
                const MyListTile(
                  icon: Icons.flutter_dash,
                  title: "Twitter",
                ),
                const MyListTile(
                  icon: Icons.facebook,
                  title: "Facebook",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
