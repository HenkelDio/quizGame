import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/src/ResultPage/result_page.dart';


class QuizPage extends StatefulWidget {
  final List quiz;
  final int categoryId;
  const QuizPage({super.key, required this.quiz, required this.categoryId});

  @override
  State<StatefulWidget> createState() {
    return QuizPageState();
  }
}

class QuizPageState extends State<QuizPage> {
    int questionPosition = 1;
    int hits = 0;
    int errors = 0;

  @override
  Widget build(BuildContext context) {

    List quiz = widget.quiz[0][0][widget.categoryId]['quiz'];

    int totalQuestions = quiz.length;


    

    void handleQuestion(int indexAnswer) {
      setState(() {
        if(quiz[questionPosition - 1]['correct_answer'] == indexAnswer){
          hits++;
        } else {
          errors++;
        }

        if(questionPosition == quiz.length) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultPage(hits: hits, totalQuestions: totalQuestions,)));
        } else {
          questionPosition++;
        }
      });
    } 


    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 63,
              color: const Color.fromARGB(255, 84, 46, 238),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                    widget.quiz[0][0][widget.categoryId]['title'], 
                    style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22)
                    ),
                  ],
                )
              )
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Stack(
                children: [
                  Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 121, 90, 243),
                  ),
                  width: double.infinity,
                  height: 450,),
                  Column(
                    children: [
                      const SizedBox(height: 20,),
                      Center(
                      child: Text(quiz[questionPosition - 1]['question'],
                      style: GoogleFonts.inter(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)
                            ),
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              handleQuestion(1);
                            },
                            child: Text(quiz[questionPosition - 1]['answers'][0],
                            style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 22, 22, 22), fontSize: 18)
                            ),
                          ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)
                            ),
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              handleQuestion(2);
                            },
                            child: Text(quiz[questionPosition - 1]['answers'][1],
                            style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 22, 22, 22), fontSize: 18)
                            ),
                          ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)
                            ),
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              handleQuestion(3);
                            },
                            child: Text(quiz[questionPosition - 1]['answers'][2],
                            style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 22, 22, 22), fontSize: 18)
                            ),
                          ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)
                            ),
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              handleQuestion(4);
                            },
                            child: Text(quiz[questionPosition - 1]['answers'][3],
                            style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 22, 22, 22), fontSize: 18)
                            ),
                          ),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            'QUESTÃO $questionPosition DE $totalQuestions',
                            style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25)
                          ),
                        ],
                      ),
                    ),
                  ],
                  ),
                ],
              ),
              ),
          ],
        ),
      )
    );
  }
}