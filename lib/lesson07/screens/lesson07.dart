import 'package:flutter/material.dart';

class Lesson07 extends StatefulWidget {
  const Lesson07({super.key});

  @override
  State<Lesson07> createState() => _Lesson07State();
}

class _Lesson07State extends State<Lesson07> {
  List<String> names = [
    'Baias',
    'Nuraaly',
    'Bermet',
    'Aidana',

  ];

  TextEditingController addController = TextEditingController();
  TextEditingController updateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              color: Colors.cyanAccent,
              margin: const EdgeInsets.all(20),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Text('$index'),
                    ),
                  ),
                  title: Text(names[index]),
                  subtitle: Text('Описание'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: (){
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            title: const Text('Вы реально хотите удалить данные?'),
                            actions: [
                              TextButton(onPressed: (){
                                Navigator.pop(context);
                              }, child: const Text('No')),
                              TextButton(onPressed: (){
                                setState(() {
                                  names.removeAt(index);
                                });
                                Navigator.pop(context);
                              }, child: const Text('Yes'))
                            ],
                          );
                        });
                      }, icon: const Icon(Icons.delete)),
                      IconButton(onPressed: (){
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            title: const Text('Обновить задачу'),
                            content: Container(
                              height: 100,
                              child:  Column(
                                children: [
                                  TextField(
                                    controller: updateController,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Name'
                                    ),
                                  )
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(onPressed: (){
                                Navigator.pop(context);
                              }, child: const Text('No')),
                              TextButton(onPressed: (){
                                if(updateController.text.isNotEmpty){
                                  setState(() {
                                    names[index] = updateController.text;
                                  });
                                  Navigator.pop(context);
                                  updateController.clear();
                                }
                              }, child: const Text('Yes'))
                            ],
                          );
                        });
                      }, icon: const Icon(Icons.edit)),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return AlertDialog(
              title: const Text('Добавить задачу'),
              content: Container(
                height: 100,
                child:  Column(
                  children: [
                    TextField(
                      controller: addController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name'
                      ),
                    )
                  ],
                ),
              ),
              actions: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: const Text('No')),
                TextButton(onPressed: (){
                  if(addController.text.isNotEmpty){
                    setState(() {
                      names.add(addController.text);
                    });
                    Navigator.pop(context);
                    addController.clear();
                  }
                }, child: const Text('Yes'))
              ],
            );
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
