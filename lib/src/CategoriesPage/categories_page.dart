import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/src/Quiz/quiz.dart';

import '../mocks/categories.dart';


class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return CategoriesPageState();
  }
}

class CategoriesPageState extends State {
  
  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
      home: Scaffold(
        body: Container(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView.separated(
                  shrinkWrap: true,
                itemBuilder: (BuildContext context, int item) {
                return ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 121, 90, 243),
                    ),
                    width: double.infinity,
                    height: 100,
                    child: GestureDetector(
                      child: Center(child: Text(quizzes[item]['title'].toString(), style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20))))),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => QuizPage(quiz: [[quizzes]], categoryId: item,)));

                        
                      },
                    );
                }, separatorBuilder: (_, ___) => const Divider(), itemCount: quizzes.length)
            ),   
            ),
      )
    );
  }
}

