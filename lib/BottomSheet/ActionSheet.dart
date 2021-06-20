import 'package:flutter/material.dart';
import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';

class ActionSheet extends StatefulWidget {
  @override
  _ActionSheetState createState() => _ActionSheetState();
}

class _ActionSheetState extends State<ActionSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adaptive action sheet example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                showAdaptiveActionSheet(
                  context: context,
                  actions: <BottomSheetAction>[
                    BottomSheetAction(title: 'Item 1', onPressed: () {}),
                    BottomSheetAction(title: 'Item 2', onPressed: () {}),
                    BottomSheetAction(title: 'Item 3', onPressed: () {}),
                  ],
                  cancelAction: CancelAction(title: 'Cancel'),
                );
              },
              child: const Text('Show action sheet'),
            ),
            RaisedButton(
              onPressed: () {
                showAdaptiveActionSheet(
                  context: context,
                  title: const Text('This is the title'),
                  actions: <BottomSheetAction>[
                    BottomSheetAction(title: 'Item 1', onPressed: () {}),
                    BottomSheetAction(title: 'Item 2', onPressed: () {}),
                    BottomSheetAction(title: 'Item 3', onPressed: () {}),
                  ],
                  cancelAction: CancelAction(title: 'Cancel'),
                );
              },
              child: const Text('Show action sheet with title'),
            ),
            RaisedButton(
              onPressed: () {
                showAdaptiveActionSheet(
                  context: context,
                  actions: <BottomSheetAction>[
                    BottomSheetAction(
                      title: 'Add',
                      onPressed: () {},
                      leading: const Icon(
                        Icons.add,
                        size: 25,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    BottomSheetAction(
                      title: 'Delete',
                      onPressed: () {},
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                      leading: const Icon(
                        Icons.delete,
                        size: 25,
                        color: Colors.red,
                      ),
                    ),
                  ],
                  cancelAction: CancelAction(
                    title: 'Cancel',
                  ),
                );
              },
              child: const Text('Show action sheet with icons'),
            ),
          ],
        ),
      ),
    );
  }
}
