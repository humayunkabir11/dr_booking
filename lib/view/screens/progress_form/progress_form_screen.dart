import 'package:dr_booking/utils/app_colors.dart';
import 'package:dr_booking/view/widgets/buttons/custom_button.dart';
import 'package:dr_booking/view/widgets/custom_text_field/custom_text_field.dart';
import 'package:dr_booking/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class ProgressFormScreen extends StatefulWidget {
  const ProgressFormScreen({super.key});

  @override
  State<ProgressFormScreen> createState() => _ProgressFormScreenState();
}

class _ProgressFormScreenState extends State<ProgressFormScreen> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      backgroundColor: AppColors.bgColor,
      centerTitle: true,
      title: CustomText(
        text: "Progress form".toUpperCase(),
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.foundationGrey,
            size: 20,
          )),
    ),
      body: SingleChildScrollView(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 24),
        child: Column(
          children: [
            CustomTextField(title: "Name",
              hintText: "Name",
              hintStyle: GoogleFonts.lato(color: AppColors.foundationGrey200,fontWeight: FontWeight.w400,fontSize: 14),
            ),
            const SizedBox(height: 12,),
            CustomTextField(title: "Change in pharmacy Information",
              hintText: "Type Here",
              hintStyle: GoogleFonts.lato(color: AppColors.foundationGrey200,fontWeight: FontWeight.w400,fontSize: 14),
            ),
            const SizedBox(height: 12,),
            CustomTextField(title: "Start Weight (Ibs)",
              hintText: "start weight",
              hintStyle: GoogleFonts.lato(color: AppColors.foundationGrey200,fontWeight: FontWeight.w400,fontSize: 14),
            ),
            const SizedBox(height: 12,),
            CustomTextField(title: "Current  Weight (Ibs)",
              hintText: "start weight",
              hintStyle: GoogleFonts.lato(color: AppColors.foundationGrey200,fontWeight: FontWeight.w400,fontSize: 14),
            ),

            const SizedBox(height: 12,),
            CustomTextField(title: "Goal Weight (Ibs)",
              hintText: "Type Here",
              hintStyle: GoogleFonts.lato(color: AppColors.foundationGrey200,fontWeight: FontWeight.w400,fontSize: 14),
            ),

            const SizedBox(height: 12,),
            CustomTextField(title: "Blood Pressure",
              hintText: "120/80",
              hintStyle: GoogleFonts.lato(color: AppColors.foundationGrey200,fontWeight: FontWeight.w400,fontSize: 14),
            ),

            const SizedBox(height: 12,),
            CustomTextField(title: "List all other prescribed medications (if any)",
              hintText: "Type Here",
              hintStyle: GoogleFonts.lato(color: AppColors.foundationGrey200,fontWeight: FontWeight.w400,fontSize: 14),
            ),


            const SizedBox(height: 12,),
            CustomTextField(title: "Do you want a refill for your medication?",
              hintText: "Yes or No",
              hintStyle: GoogleFonts.lato(color: AppColors.foundationGrey200,fontWeight: FontWeight.w400,fontSize: 14),
            ),

            const SizedBox(height: 12,),
            CustomTextField(title: "Are you experiencing any of these symptoms with your weight loss medications? Check all that apply",
              hintText: "Type Here",
              hintStyle: GoogleFonts.lato(color: AppColors.foundationGrey200,fontWeight: FontWeight.w400,fontSize: 14),),

            const SizedBox(height: 12,),
            CustomTextField(title: "Please enter new pharmacy name and address if there has been a change in your pharmacy information",
              hintText: "Type Here",
              hintStyle: GoogleFonts.lato(color: AppColors.foundationGrey200,fontWeight: FontWeight.w400,fontSize: 14),),

            const SizedBox(height: 12,),
            CustomTextField(title: "Are you experiencing any of these symptoms with your weight loss medications? Check all that apply",
              hintText: "Type Here",
              hintStyle: GoogleFonts.lato(color: AppColors.foundationGrey200,fontWeight: FontWeight.w400,fontSize: 14),),
            const SizedBox(height: 12,),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: AppColors.foundationColor,
                  value: this.valuefirst,
                  onChanged: (bool? value) {
                    setState(() {
                      this.valuefirst = value!;
                    });
                  },
                ),
                const CustomText(text: "This information is current and true to the\nbest of my knowledge.",
                  textAlign: TextAlign.start,
                  color: AppColors.foundationGrey,fontSize: 16,fontWeight: FontWeight.w400,),


              ],
            ),
            CustomTextField(title: "",
              hintText: "Signature",
              maxLines: 3,
              hintStyle: GoogleFonts.lato(color: AppColors.foundationGrey200,fontWeight: FontWeight.w400,fontSize: 14),),


            const SizedBox(height: 40,),

            CustomButton(onTap: (){
               // Get.toNamed(AppRoute.);
            },title: 'Continue',)
          ],
        ),
      ),
    );
  }
}