import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slc/common/styles/colors.dart';
import 'package:slc/common/styles/spcaing_styles.dart';
import 'package:slc/common/widgets/slcbutton.dart';

class Onborading extends StatelessWidget {
  const Onborading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Padding(
          padding: SpacingStyles(context).defaultPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.3,
                child: Image.asset(
                
                "assets/StudyIllustration.png",
              ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Your Personal Study Assistant",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                "Unlock a new approach to learning. Whether you’re preparing for exams or mastering new concepts, we’re here to help you stay organized and focused.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SLCButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/loginscreen");
                    },
                    text: "Sign In",
                    backgroundColor: SLCColors.primaryColor,
                    foregroundColor: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SLCButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/registerscreen");
                      },
                      text: "Sign Up",
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      foregroundColor: SLCColors.primaryColor,
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.05),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
