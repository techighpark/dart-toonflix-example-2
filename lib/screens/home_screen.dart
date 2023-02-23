import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toonflix_/models/webtoon_model.dart';
import 'package:toonflix_/services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WebtoonModel> webtoons = [];
  bool isLoading = true;

  void waitForWebtoons() async {
    webtoons = await ApiService.getTodaysTtoon();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    waitForWebtoons();
  }

  @override
  Widget build(BuildContext context) {
    print(webtoons);
    print(isLoading);
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        foregroundColor: Colors.grey[900],
        elevation: 5,
        title: Text(
          "Today's Toons",
          style: GoogleFonts.bebasNeue(
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              letterSpacing: 3.0,
            ),
          ),
        ),
      ),
    );
  }
}
