// import 'package:flutter/material.dart';


// class AddQuestion extends StatefulWidget {
//   final String quizId;
//   AddQuestion(this.quizId);
//   // const AddQuestion({super.key});

//   @override
//   // State<AddQuestion> createState() => _AddQuestionState();
// }

//  class _AddQuestionState extends State<AddQuestion> {
// //   final _formKey = GlobalKey<FormState>();
// //   late String question, option1, option2, option3, option4;
// //   late bool _isLoading = false;

  

// //   uploadQuestionData() async {
// //     if (_formKey.currentState!.validate()) {
// //       setState(() {
// //         _isLoading = true;
// //       });

// //       Map<String, String> questionMap = {
// //         "question": question,
// //         "option1": option1,
// //         "option2": option2,
// //         "option3": option3,
// //         "option4": option4
// //       };

      

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('AppBar Demo'),
//         actions: <Widget>[],
//         backgroundColor: Colors.transparent,
//         iconTheme: IconThemeData(color: Colors.black87),
//       ),
//       body: _isLoading
//           ? Container(
//               child: Center(
//                 child: CircularProgressIndicator(),
//               ),
//             )
//           : Form(
//               key: _formKey,
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 24),
//                 child: Column(children: [
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Enter Question';
//                       }
//                       return null;
//                     },
//                     decoration: InputDecoration(
//                       hintText: "Question",
//                     ),
//                     onChanged: (val) {
                      
//                     },
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Enter Option1';
//                       }
//                       return null;
//                     },
//                     decoration: InputDecoration(
//                       hintText: "Option1(Correct Answer)",
//                     ),
//                     onChanged: (val) {
                      
//                     },
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Enter Option2';
//                       }
//                       return null;
//                     },
//                     decoration: InputDecoration(
//                       hintText: "Option2",
//                     ),
//                     onChanged: (val) {
                      
//                     },
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Enter Option3';
//                       }
//                       return null;
//                     },
//                     decoration: InputDecoration(
//                       hintText: "Option3",
//                     ),
//                     onChanged: (val) {
                      
//                     },
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Enter Option4';
//                       }
//                       return null;
//                     },
//                     decoration: InputDecoration(
//                       hintText: "Option4",
//                     ),
//                     onChanged: (val) {
                      
//                     },
//                   ),
//                   Spacer(),
//                   Row(
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: blueButton(
//                             context: context,
//                             label: "Submit",
//                             buttonWidth:
//                                 MediaQuery.of(context).size.width / 2 - 36),
//                       ),
//                       SizedBox(
//                         width: 24,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           uploadQuestionData();
//                         },
//                         child: blueButton(
//                             context: context,
//                             label: "Add Question",
//                             buttonWidth:
//                                 MediaQuery.of(context).size.width / 2 - 36),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 60,
//                   ),
//                 ]),
//               ),
//             ),
//     );
//   }
  
//   blueButton({required BuildContext context, required String label, required double buttonWidth}) {
//   }
// }
