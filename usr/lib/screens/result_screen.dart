import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../data/items_data.dart';

class ResultScreen extends StatelessWidget {
  final ItemData item;

  const ResultScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final isBeneficial = item.type == ItemType.beneficial;
    final tone = isBeneficial ? "friendly, helpful, positive" : "villainous, threatening, warning";
    final mood = "emotional, intense, scroll-stopping";

    // Output 1: Image Prompt
    final imagePrompt = """
Create a highly detailed cinematic 3D animated scene where ${item.name} is transformed into a living character actively performing its health function.

Rules:
The item must appear alive (eyes, facial expressions, two hands, two legs, body language) and actively doing its effect.

Tone: $tone
Scene storytelling: ${isBeneficial ? "Inside the human body, actively performing its benefit" : "Inside the human body, actively causing damage"}
Action: ${item.actionDescription}

Style: Pixar-level 3D animation mixed with dark cinematic realism
Lighting: dramatic, cinematic, volumetric
Camera: close-up or dynamic cinematic angle
Mood: $mood
Ultra-high detail, realistic texture
Aspect ratio: 9:16 vertical
STRICTLY NO text, No captions, No logos
""";

    // Output 2: Video Prompt (Hindi)
    final videoPromptHindi = """
Create a short cinematic talking video using the generated image.

Rules:
The character stands still and speaks directly to the camera.
Natural facial expressions and hand gestures showing the item actively performing its effect.
Background movements: ${item.actionDescription}

Duration: 7-10 seconds
Tone: ${isBeneficial ? "Friendly" : "Warning"}
Dialogue requirements:
ONLY simple Hindi / Hinglish
First-person (main, mujhe, mera)
Short, emotional, reel-friendly
Avoid medical or complex terms

Dialogue:
"${item.hindiDialogue}"
""";

    // Output 3: Video Prompt (English)
    final videoPromptEnglish = """
Create a short cinematic talking video using the generated image.

Rules:
The character stands still and speaks directly to the camera.
Natural facial expressions and hand gestures showing the item actively performing its effect.
Background movements: ${item.actionDescription}

Duration: 7-10 seconds
Tone: ${isBeneficial ? "Friendly" : "Warning"}
Dialogue requirements:
English language
First-person
Short, emotional, reel-friendly

Dialogue:
"${item.englishDialogue}"
""";

    return Scaffold(
      appBar: AppBar(
        title: Text("Prompts for ${item.name}"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "STEP 3 - PROMPT GENERATION",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            const SizedBox(height: 16),
            _buildPromptSection(context, "OUTPUT 1: IMAGE PROMPT", imagePrompt),
            _buildPromptSection(context, "OUTPUT 2: VIDEO PROMPT (Hindi/Hinglish)", videoPromptHindi),
            _buildPromptSection(context, "OUTPUT 3: VIDEO PROMPT (English)", videoPromptEnglish),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.refresh),
                label: const Text("Start Over"),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPromptSection(BuildContext context, String title, String content) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.copy, size: 20),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: content));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Prompt copied to clipboard!"),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                  tooltip: "Copy Prompt",
                ),
              ],
            ),
            const Divider(),
            Text(
              content,
              style: const TextStyle(
                fontFamily: 'Courier', // Monospace for code/prompt feel
                fontSize: 13,
                height: 1.4,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
