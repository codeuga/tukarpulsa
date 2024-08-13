import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tukar_pulsa/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/home.svg'), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/graph.svg'), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/vector.svg'), label: ''),
        ],
        selectedFontSize: 13,
        selectedItemColor:const Color(0xff118EEA),
        selectedLabelStyle: GoogleFonts.roboto(fontWeight: FontWeight.w500),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 196,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Color(0xffCFE8FB),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 3, left: 36, right: 36),
                child: Row(
                  children: [
                    Image.asset("assets/images/icon.png"),
                    const Text(
                      "TukarPulsa",
                      style: TextStyle(
                        fontFamily: 'HarabaraMaisDemo',
                        color: Color(0xff118EEA),
                        fontSize: 18,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/images/message.svg'),
                    const SizedBox(
                      width: 23,
                    ),
                    SvgPicture.asset('assets/images/notification.svg')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 138, left: 44, right: 44),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 146,
                    width: 359,
                    decoration: const BoxDecoration(
                      color: Color(0xff118EEA),
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'RATE',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Nesatho',
                            fontSize: 48,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 11, vertical: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: const Text(
                            "UPDATE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0XFF118EEA),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'Rate Update Setiap Hari',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Convert Pulsa",
                    style: GoogleFonts.poppins(
                      color: const Color(0xff464646),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...icons.map((item) => Container(
                              height: 70,
                              width: 68,
                              decoration: BoxDecoration(
                                color: const Color(0xffCFE8FB),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(item.icon),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Rate Pulsa",
                    style: GoogleFonts.poppins(
                      color: const Color(0xff464646),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 340,
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 29,
                        mainAxisSpacing: 28,
                        childAspectRatio: 165 / 170,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        final item = icons[index];
                        return Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffCFE8FB),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(item.icon),
                              const SizedBox(
                                height: 11,
                              ),
                              Text(
                                item.judul,
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff118EEA),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Rate ',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff118EEA),
                                    ),
                                  ),
                                  Text(
                                    item.rate,
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff118EEA),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Nominal',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff118EEA),
                                ),
                              ),
                              Text(
                                item.harga,
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff118EEA),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
