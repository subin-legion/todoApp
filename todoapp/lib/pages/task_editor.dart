import 'package:flutter/material.dart';

class EditTaskScreen extends StatefulWidget {
  const EditTaskScreen({super.key});

  @override
  State<EditTaskScreen> createState() => _ViewEditTaskScreenState();
}

class _ViewEditTaskScreenState extends State<EditTaskScreen> {
  int selectedDayIndex = 3; // Thursday
  int selectedPriority = 0; // High
  bool getAlert = false;
  final TextEditingController nameController = TextEditingController(
    text: "Mobile App Research",
  );
  final TextEditingController descController = TextEditingController(
    text:
        "Mobile App Research :- Based on food app and see user flow and find problem if any",
  );

  @override
  Widget build(BuildContext context) {
    final weekDays = [
      {'label': 'Mon', 'date': '04'},
      {'label': 'Tue', 'date': '05'},
      {'label': 'Wed', 'date': '07'},
      {'label': 'Thu', 'date': '08'},
      {'label': 'Fri', 'date': '09'},
      {'label': 'Sat', 'date': '10'},
      {'label': 'Sun', 'date': '11'},
    ];
    final priorities = ['High', 'Medium', 'Low'];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 32),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          "Mobile App Research",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          children: [
            const SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.chevron_left, color: Color(0xFFB77BFC), size: 28),
                Text(
                  "08 March",
                  style: TextStyle(
                    color: Color(0xFFB77BFC),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(Icons.chevron_right, color: Color(0xFFB77BFC), size: 28),
              ],
            ),
            const SizedBox(height: 18),
            SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(weekDays.length, (index) {
                  final isSelected = index == selectedDayIndex;
                  return GestureDetector(
                    onTap: () => setState(() {
                      selectedDayIndex = index;
                    }),
                    child: Container(
                      width: 46,
                      decoration: isSelected
                          ? BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFB77BFC),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            )
                          : null,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            weekDays[index]['label']!,
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.white70,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            weekDays[index]['date']!,
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 25),
            Text(
              "Schedule",
              style:
                  Theme.of(context).textTheme.titleMedium ??
                  TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF232124),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.white38),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 14),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF232124),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                controller: descController,
                minLines: 3,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Description",
                  hintStyle: TextStyle(color: Colors.white38),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 22),
            Row(
              children: [
                Text(
                  "Start Time",
                  style:
                      Theme.of(context).textTheme.bodyMedium ??
                      TextStyle(color: Colors.white70),
                ),
                const SizedBox(width: 57),
                Text(
                  "End Time",
                  style:
                      Theme.of(context).textTheme.bodyMedium ??
                      TextStyle(color: Colors.white70),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0xFF232124),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        const Icon(Icons.access_time, color: Colors.white54),
                        const SizedBox(width: 8),
                        Text(
                          "06 : 00 PM",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 18),
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0xFF232124),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        const Icon(Icons.access_time, color: Colors.white54),
                        const SizedBox(width: 8),
                        Text(
                          "10 : 00 PM",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            Text(
              "Priority",
              style:
                  Theme.of(context).textTheme.bodyMedium ??
                  TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 12),
            Row(
              children: List.generate(priorities.length, (idx) {
                final selected = idx == selectedPriority;
                return GestureDetector(
                  onTap: () => setState(() {
                    selectedPriority = idx;
                  }),
                  child: Container(
                    margin: EdgeInsets.only(right: 12),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                    decoration: BoxDecoration(
                      color: selected && idx == 0
                          ? Color(0xFFF3D8FF)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: selected ? Colors.white : Colors.white54,
                        width: selected ? 2 : 1,
                      ),
                    ),
                    child: Text(
                      priorities[idx],
                      style: TextStyle(
                        color: selected ? Colors.black : Colors.white54,
                        fontWeight: selected
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Get alert for this task",
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ),
                Switch(
                  value: getAlert,
                  onChanged: (val) => setState(() {
                    getAlert = val;
                  }),
                  activeTrackColor: Color(0xFFC59ADF),
                  activeColor: Color(0xFFDE83B0),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 52,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFDE83B0), Color(0xFFC59ADF)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Edit Task",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Container(
                    height: 52,
                    decoration: BoxDecoration(
                      color: Color(0xFF232124),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Delete Task",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
      backgroundColor: Color(0xFF181218),
    );
  }
}
