// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hwm48/app_bloc/bloc.dart';

import 'package:hwm48/styles/text_styles.dart';
import 'package:hwm48/ui/pages/start_page/widgets/drawer.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    context.read<TaskBloc>().add(TaskEvent.openTaskPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: MenuDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/start/form');
          },
          backgroundColor: Colors.deepPurple,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        appBar: StartPageAppBar(),
        backgroundColor: Colors.deepPurpleAccent,
        body: Builder(builder: (context) {
          final state = context.watch<TaskBloc>().state;
          return state.when(
              initial: () => SizedBox(),
              loadTasks: (tasks) => GridView.builder(
                    itemCount: tasks.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: ((context, index) {
                      final tasksR = tasks.reversed.toList();
                      return GestureDetector(
                        onLongPress: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('completing task'),
                                  content: Text('Do you want complete task?'),
                                  alignment: Alignment.center,
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('no')),
                                    TextButton(
                                        onPressed: () {
                                          context.read<TaskBloc>().add(
                                                TaskEvent.doneTask(
                                                  len: tasksR.length,
                                                  id: index,
                                                  title: tasksR[index].title,
                                                  body: tasksR[index].content,
                                                  isDone: true,
                                                ),
                                              );
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('yes')),
                                  ],
                                );
                              });
                        },
                        onTap: () {
                          // Navigator.of(context).pushNamed('/start/task');
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text(
                                    tasksR[index].title,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(height: 7.5),
                                  ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minWidth: 100,
                                      maxWidth:
                                          MediaQuery.of(context).size.width *
                                              0.45,
                                      minHeight: 50,
                                      maxHeight: 100,
                                    ),
                                    child: AutoSizeText(
                                      minFontSize: 11,
                                      maxFontSize: 14,
                                      maxLines: 5,
                                      tasksR[index].content,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            tasksR[index].isDone
                                ? Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    margin: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    padding: EdgeInsets.all(10),
                                    child: SvgPicture.asset(
                                      'assets/images/done-5.svg',
                                      color: Color.fromARGB(255, 27, 229, 132),
                                    ),
                                  )
                                : SizedBox()
                          ],
                        ),
                      );
                    }),
                  ));
        }));
  }
}

class StartPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StartPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      actions: [
        IconButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ))
      ],
      title: Text(
        'Tasks',
        style: TextStyles.textStyle,
      ),
      backgroundColor: Colors.black54,
    );
  }

  static final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;
}

class MyPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 2;
    canvas.drawLine(Offset(0, 0), Offset(size.width, size.height), paint);
    canvas.drawLine(
      Offset(0, size.height),
      Offset(size.width, 0),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
