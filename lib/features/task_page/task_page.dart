// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:hwm48/styles/text_styles.dart';

// class TaskPage extends StatefulWidget {
//   const TaskPage({super.key});

//   @override
//   State<TaskPage> createState() => _TaskPageState();
// }

// class _TaskPageState extends State<TaskPage> {
//   late FocusNode focus;
//   final textController = TextEditingController();

//   bool isEnabled = false;

//   @override
//   void initState() {
//     super.initState();
//     focus = FocusNode();
//   }

//   @override
//   void dispose() {
//     focus.dispose();
//     textController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurpleAccent,
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         leading: BackButton(
//           color: Colors.white,
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         actions: [
//           isEnabled
//               ? IconButton(
//                   onPressed: () {
//                     focus.unfocus();
//                     isEnabled = false;
//                   },
//                   icon: Icon(
//                     Icons.check,
//                     color: Colors.white,
//                   ))
//               : SizedBox(),
//           IconButton(
//               onPressed: () {
//                 setState(() {
//                   isEnabled = true;

//                   focus.requestFocus();
//                 });
//               },
//               icon: Icon(
//                 Icons.edit,
//                 color: Colors.white,
//               ))
//         ],
//         title: Text(
//           'title',
//           style: TextStyles.textStyle,
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.black54,
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(
//               horizontal: MediaQuery.of(context).size.width * 0.05,
//               vertical: MediaQuery.of(context).size.height * 0.01),
//           child: Column(
//             children: [
//               Container(
//                 padding: EdgeInsets.all(0),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(color: Colors.grey),
//                     shape: BoxShape.circle),
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               SizedBox(
//                   width: MediaQuery.of(context).size.width * 0.9,
//                   height: MediaQuery.of(context).size.height * 0.5,
//                   child: Theme(
//                     data: ThemeData(disabledColor: Colors.black),
//                     child: TextField(
//                       onTap: () {
//                         if (!focus.hasFocus) {
//                           setState(() {
//                             focus.requestFocus();
//                           });
//                         }
//                       },
//                       focusNode: focus,
//                       textAlign: TextAlign.center,
//                       enabled: isEnabled,
//                       controller: textController,
//                       style: const TextStyle(fontSize: 20, color: Colors.black),
//                       decoration: const InputDecoration.collapsed(hintText: ''),
//                       maxLines: 99999,
//                       autofocus: false,
//                     ),
//                   )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
