import 'package:find_worker/utils/app_image.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.87, -0.10),
            end: Alignment(0.87, -0.40),
            colors: [Color(0xFFF3F3F3), Color(0xFFCCE0F9)],
          ),
        ),
        child: Stack(
          children: [
            const Positioned(
              left: 46,
              top: 63,
              child: SizedBox(
                width: 298,
                child: Text(
                  '     Welcome to Find Worker!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 157,
              top: 619,
              child: Text(
                'Login As',
                style: TextStyle(
                  color: Color(0xFF0668E3),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 734,
              child: Container(
                width: 350,
                height: 56,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF0668E3)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Stack(children: [Image.asset(AppImage.hand)]),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Service Provider',
                      style: TextStyle(
                        color: Color(0xFF0668E3),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 662,
              child: Container(
                width: 350,
                height: 56,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: const Color(0xFF0668E3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child:
                      Stack(children: [Image.asset(AppImage.userGroup)]),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'User',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              left: 20,
              top: 250,
              child: SizedBox(
                width: 350,
                height: 258.21,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: SizedBox(
                        width: 350,
                        height: 242.63,
                        child: Stack(children: []),
                      ),
                    ),
                    Positioned(
                      left: 48.29,
                      top: 24.74,
                      child: Opacity(
                        opacity: 0,
                        child: SizedBox(
                          width: 256.51,
                          height: 194.69,
                          child: Stack(children: []),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 164.21,
                      top: 27.20,
                      child: SizedBox(
                        width: 80,
                        height: 87.25,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 13.83,
                              top: 2.28,
                              child: Opacity(
                                opacity: 0.50,
                                child: SizedBox(
                                  width: 49.05,
                                  height: 17.75,
                                  child: Stack(children: []),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 209.40,
                      top: 75.28,
                      child: SizedBox(
                        width: 71.02,
                        height: 53.66,
                        child: Stack(children: []),
                      ),
                    ),
                    Positioned(
                      left: 123.98,
                      top: 62.66,
                      child: SizedBox(
                        width: 27.09,
                        height: 25.26,
                        child: Stack(children: []),
                      ),
                    ),
                    Positioned(
                      left: 231.31,
                      top: 175.80,
                      child: SizedBox(
                        height: 72.43,
                        width: 58.12,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 22.44,
                              top: 17.50,
                              child: Opacity(
                                opacity: 0.40,
                                child: SizedBox(
                                  width: 29.64,
                                  height: 28.79,
                                  child: Stack(children: []),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 15.20,
                              top: 3.28,
                              child: Opacity(
                                opacity: 0.40,
                                child: SizedBox(
                                  width: 27.06,
                                  height: 42.19,
                                  child: Stack(children: []),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 3.03,
                              top: 17.08,
                              child: Opacity(
                                opacity: 0.40,
                                child: SizedBox(
                                  width: 21.22,
                                  height: 28.01,
                                  child: Stack(children: []),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 83.20,
                      top: 83.83,
                      child: SizedBox(
                        width: 90.74,
                        height: 163.67,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 27.42,
                              top: 151.05,
                              child: Opacity(
                                opacity: 0.50,
                                child: SizedBox(
                                  width: 9.19,
                                  height: 4.07,
                                  child: Stack(children: []),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 29.61,
                              top: 20.55,
                              child: Opacity(
                                opacity: 0.50,
                                child: SizedBox(
                                  width: 9.52,
                                  height: 2.73,
                                  child: Stack(children: []),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 139.27,
                      top: 127.92,
                      child: SizedBox(
                        width: 92.74,
                        height: 119.71,
                        child: Stack(children: []),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 173,
              top: 157,
              child: Image.asset(
                AppImage.logo,
                width: 80,
                height: 80,
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Image.asset(
                    AppImage.service,
                    width: 350,
                    height: 260,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
