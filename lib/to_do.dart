import 'package:flutter/material.dart';
import 'package:iti_flutter/helpers/to_do_provider.dart';
import 'package:provider/provider.dart';

class ToDoList extends StatelessWidget {
  ToDoList({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ToDoHelper(),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text('To Do List'),
          centerTitle: true,
          backgroundColor: Colors.purple,
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0)
                  .copyWith(bottom: 12, top: 6),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const Icon(
                    Icons.task,
                    color: Colors.white,
                    size: 40,
                  ),
                  Consumer<ToDoHelper>(
                    builder: (context, model, child) => CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.pinkAccent,
                      child: Text(
                        model.count.toString(),
                        style: TextStyle(
                            fontSize: model.count < 10 ? 16 : 13,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        body: Consumer<ToDoHelper>(
          builder: (context, model, child) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: model.tasks.length,
                itemBuilder: (context, index) {
                  var item = index.toString();
                  return Dismissible(
                    background: Container(
                      color: Colors.red,
                      child: const Icon(
                        Icons.delete_forever,
                        color: Colors.white,
                      ),
                    ),
                    key: UniqueKey(),
                    onDismissed: (dir) {
                      model.removeTask(int.parse(item));
                    },
                    child: Card(
                      color: Colors.white,
                      child: CheckboxListTile(
                        // selected: model.isChecked[index] ,
                        value: model.isChecked[index] ,
                        title: Text(model.tasks[index].taskName,
                          style: model.tasks[index].isDone ?
                              const TextStyle(decoration: TextDecoration.lineThrough) : null,
                        ),
                        onChanged: (value) {
                          model.changeTaskState(index);
                        },
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            scaffoldKey.currentState?.showBottomSheet((context) => Container(
                  height: 200,
                  padding: const EdgeInsets.all(8),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: formController,
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
                              icon: Icon(
                                Icons.save_as,
                                color: Colors.purple,
                                size: 45,
                              ),
                              labelText: 'Your Task',
                            labelStyle: TextStyle(color: Colors.purple),
                          ),
                              cursorColor: Colors.purple,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Consumer<ToDoHelper>(
                          builder: (context, model, child) =>
                              ElevatedButton.icon(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateColor.resolveWith(
                                            (states) => Colors.purple),
                                  ),
                                  onPressed: () {
                                    model.addTask(formController.text);
                                    Navigator.pop(context);
                                    formController.clear();
                                  },
                                  icon: const Icon(
                                    Icons.add_task_outlined,
                                    color: Colors.white,
                                  ),
                                  label: const Text(
                                    'Add Task',
                                    style: TextStyle(color: Colors.white),
                                  )),
                        ),
                      ],
                    ),
                  ),
                ));
          },
          backgroundColor: Colors.purple,
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
