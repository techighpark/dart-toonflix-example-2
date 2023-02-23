import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toonflix_/models/webtoon_model.dart';
import 'package:toonflix_/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysTtoon();

  @override
  Widget build(BuildContext context) {
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
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var webtoon = snapshot.data![index];
                print(index);
                return Text(webtoon.title);
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
                height: 30,
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.orange[800],
              ),
            );
          }
        },
      ),
    );
  }
}
