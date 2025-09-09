import 'package:flutter/material.dart';
import 'package:todoapp/pages/task_creator.dart';
import 'package:todoapp/widgets/progress_Section.dart';
import 'package:todoapp/widgets/sectionTitle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "You have got 5 tasks\ntoday to complete ✏️",
              style: theme.textTheme.headlineMedium,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Icon(Icons.person, size: 40, color: Colors.white),
                // Image.asset(
                //   'assets/images/person.png',
                //   fit: BoxFit.contain,
                // ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GradientFAB(onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            const SizedBox(height: 12),
            SearchBar(),
            const SizedBox(height: 20),
            ProgressSection(),
            const SizedBox(height: 24),
            SectionTitle(title: "Today's Task"),
            const SizedBox(height: 8),
            TaskCard(
              title: "Mobile App Research",
              date: "4 Oct",
              completed: true,
              color: const Color(0xFFC19BF5),
            ),
            TaskCard(
              title: "Prepare Wireframe for Main Flow",
              date: "4 Oct",
              completed: true,
              color: const Color(0xFFAEE2FF),
            ),
            TaskCard(
              title: "Prepare Screens",
              date: "4 Oct",
              completed: false,
              color: const Color(0xFFF3D8FF),
            ),
            const SizedBox(height: 24),
            SectionTitle(title: "Tomorrow Task"),
            const SizedBox(height: 8),
            TaskCard(
              title: "Website Research",
              date: "5 Oct",
              completed: false,
              color: const Color(0xFFC19BF5),
            ),
            TaskCard(
              title: "Prepare Wireframe for Main Flow",
              date: "5 Oct",
              completed: false,
              color: const Color(0xFFAEE2FF),
            ),
            TaskCard(
              title: "Prepare Screens",
              date: "5 Oct",
              completed: false,
              color: const Color(0xFFF3D8FF),
            ),
            const SizedBox(height: 60), // Ensures last item is above the FAB
          ],
        ),
      ),
    );
  }
}

class GradientFAB extends StatelessWidget {
  const GradientFAB({super.key, required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CreateTaskScreen()),
        );
      },
      child: SizedBox(
        width: 71,
        height: 71,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.5),
                gradient: const LinearGradient(
                  begin: Alignment(-0.6, -1.0),
                  end: Alignment(1.0, 1.0),
                  colors: [Color(0xFFDE83B0), Color(0xFFC59ADF)],
                  stops: [0.0, 1.0],
                  transform: GradientRotation(340.24 * 3.14159265359 / 180),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x59000000), // #00000059, 35% opacity
                    offset: Offset(5, 10),
                    blurRadius: 5,
                  ),
                  BoxShadow(
                    color: Color(0x40000000), // #00000040, 25% opacity
                    offset: Offset(2, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
            Center(
              child: Icon(Icons.add, size: 32, color: const Color(0xFF292D32)),
            ),
          ],
        ),
      ),
    );
  }
}
