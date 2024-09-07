import 'package:adapakar/shared/theme.dart';
import 'package:adapakar/ui/widgets/the_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adapakar/resources/app_svg.dart';

class PakarWaitingPage extends StatelessWidget {
  const PakarWaitingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Lottie.asset(
                'assets/toga.json',
                frameRate: FrameRate.max,
                height: 120,
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hoorrree! pendaftaran berhasil',
                        style: redTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Kami butuh waktu nih untuk\nverifikasi data kamu',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),

          // NOTE: BALANCE
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: graycolor,
              border: Border.all(
                color: graycolorsec.withOpacity(0.4),
                width: 0.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: graycolorsec.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Tunggu ya, proses verifikasi data kamu sedang kami lakukan',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Lottie.asset(
                  'assets/otw.json',
                  frameRate: FrameRate.max,
                  height: 300,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          SvgPicture.string(
                            AppSvg.svgVerifed,
                            width: 20,
                            height: 20,
                            color: redcolor,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Dapatkan Verifed Badge',
                            style: blackTextStyle.copyWith(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          SvgPicture.string(
                            AppSvg.svgCs,
                            width: 20,
                            height: 20,
                            color: redcolor,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Layanan Customer Service 24 Jam',
                            style: blackTextStyle.copyWith(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          SvgPicture.string(
                            AppSvg.svgCard,
                            width: 20,
                            height: 20,
                            color: redcolor,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Dapatkan Prioritas Tarik Dana',
                            style: blackTextStyle.copyWith(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
