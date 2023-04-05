import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/src/CategoriesPage/categories_page.dart';

// class Args {
//   int hits = 0;
//   int totalQuestions = 0;
//   Args(this.hits, this.totalQuestions);
// }

class ResultPage extends StatelessWidget {
  final int hits;
  final int totalQuestions;
  
  const ResultPage({super.key, required this.hits, required this.totalQuestions});
  

  // static const routeName = 'result';

  @override
  Widget build(BuildContext context) {

  // final args = ModalRoute.of(context)?.settings.arguments as Args;

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
                    'TECNOLOGIA', 
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
                  height: 200,),
                  Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          Text('PARABÉNS!\nVOCÊ FINALIZOU O QUIZ!',
                          style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20)),
                          const SizedBox(height: 20),
                          Text('VOCÊ ACERTOU $hits de $totalQuestions',
                           style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 216, 73), fontSize: 20)),
                        ],
                      ),
                    ),
                  ],
                  ),
                ],
              ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                          width: 400,
                          height: 70,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 255, 216,73)
                            ),
                            child: Text('FINALIZAR',
                            style: GoogleFonts.inter(fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 95, 78, 18), fontSize:35),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CategoriesPage()));
                            },
                          ),
                        ),
          ],
        ),
      )
    );
  }
}