import 'package:flutter/material.dart';
import 'package:omnia/Signup/Splash/splash3.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Splash3(),
          settings: RouteSettings(name: 'Splash 3'),
        ),
      );
    });
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // scrolledUnderElevation: double.infinity,
          // elevation: 0.0,
          // forceMaterialTransparency: true,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
                height: 1864,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Hero(
                      tag: 'animatedElement', // Unique tag for the hero animation
                      child: TweenAnimationBuilder<double>(
                          tween: Tween(begin: 0.0, end: 0.25),
                          duration: Duration(milliseconds: 1500),
                          builder: (context, value, child) {
                            return Transform.rotate(
                              angle: value * 4 * 3.141, // quarter spin with some bounce
                              child: Transform.scale(
                                scale: 1 + value * 0.1, // slight bounce animation
                                child: child,
                              ),
                            );
                          },
                        child: Container(
                          width: 200,
                          height: 200,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 220,),
                    Container(
                      height: 76,
                      width: 148,
                      // constraints: BoxConstraints.tight(Size(98,51)),
                      // transformAlignment: AlignmentDirectional.bottomCenter,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.bottomCenter,
                          image: AssetImage("assets/acmlogo.png"),
                          // fit: BoxFit.scaleDown,
                        )
                      ),
                      ),
                      SizedBox(height: 100,)
                  ],
                                ),
                ),
              ),
              
                
            
        
    );
  }
}


