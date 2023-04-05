import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
          height: 450,
          width: double.infinity,
          color: const Color.fromARGB(255, 84, 46, 238),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Text(
                'SUPER\nHIPER\nQUIZ', 
                style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 50))),
                const SizedBox(height: 40,),
                Text('SELECIONE. RESPONDA. PONTUE',
                style: GoogleFonts.inter(fontWeight: FontWeight.normal, color: Colors.white, fontSize: 18)
                ),
              ],
            ),
          ),
          ),
          SizedBox(
            width: 400,
            height: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 216, 73)
              ),
              child: Text('INICIAR',
              style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 95, 78, 18), fontSize: 35),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'home');
              },
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      )
      )  
  );

  }
}