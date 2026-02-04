enum ItemType { beneficial, harmful }

class ItemData {
  final String name;
  final ItemType type;
  final String actionDescription; // e.g., "cleaning cholesterol from blood veins"
  final String target; // e.g., "blood veins" or "teeth"
  final String hindiDialogue;
  final String englishDialogue;

  const ItemData({
    required this.name,
    required this.type,
    required this.actionDescription,
    required this.target,
    required this.hindiDialogue,
    required this.englishDialogue,
  });
}

class AppData {
  static const List<ItemData> beneficialItems = [
    ItemData(
      name: "Garlic",
      type: ItemType.beneficial,
      actionDescription: "scrubbing cholesterol off blood vein walls with its hands",
      target: "blood veins",
      hindiDialogue: "Main Garlic hoon. Main tumhare khoon ki nason ko saaf karta hoon taaki tumhara dil swasth rahe.",
      englishDialogue: "I am Garlic. I clean your blood vessels so your heart stays healthy.",
    ),
    ItemData(
      name: "Spinach",
      type: ItemType.beneficial,
      actionDescription: "strengthening muscle fibers with tiny tools",
      target: "muscles",
      hindiDialogue: "Main Palak hoon. Main tumhare muscles ko taqat deta hoon, mujhe khao aur shaktishali bano.",
      englishDialogue: "I am Spinach. I give strength to your muscles, eat me and become powerful.",
    ),
    ItemData(
      name: "Broccoli",
      type: ItemType.beneficial,
      actionDescription: "fighting off green toxic cells with a shield",
      target: "cells",
      hindiDialogue: "Main Broccoli hoon. Main tumhare sharir se gandagi nikalta hoon aur bimariyon se ladta hoon.",
      englishDialogue: "I am Broccoli. I remove toxins from your body and fight against diseases.",
    ),
    ItemData(
      name: "Turmeric",
      type: ItemType.beneficial,
      actionDescription: "patching up damaged liver cells with golden glowing paste",
      target: "liver",
      hindiDialogue: "Main Haldi hoon. Main tumhare andar ki choton ko bharta hoon aur tumhe andar se strong banata hoon.",
      englishDialogue: "I am Turmeric. I heal your internal wounds and make you strong from the inside.",
    ),
    ItemData(
      name: "Ginger",
      type: ItemType.beneficial,
      actionDescription: "soothing inflamed stomach lining with cool mist",
      target: "stomach",
      hindiDialogue: "Main Adrak hoon. Main tumhare pet ko thanda rakhta hoon aur hazma theek karta hoon.",
      englishDialogue: "I am Ginger. I keep your stomach cool and fix your digestion.",
    ),
    ItemData(
      name: "Carrots",
      type: ItemType.beneficial,
      actionDescription: "polishing the lens of a giant eye to make it crystal clear",
      target: "eyes",
      hindiDialogue: "Main Gajar hoon. Meri wajah se tumhari aankhen tej hoti hain, duniya saaf dikhegi.",
      englishDialogue: "I am Carrot. Because of me, your eyes get sharper, and the world looks clearer.",
    ),
    ItemData(
      name: "Beetroot",
      type: ItemType.beneficial,
      actionDescription: "pumping bright red energy into blood cells",
      target: "blood",
      hindiDialogue: "Main Chukandar hoon. Main tumhare khoon ko badhata hoon aur energy deta hoon.",
      englishDialogue: "I am Beetroot. I increase your blood count and give you energy.",
    ),
    ItemData(
      name: "Sweet Potato",
      type: ItemType.beneficial,
      actionDescription: "nourishing skin cells making them glow",
      target: "skin",
      hindiDialogue: "Main Shakarkand hoon. Main tumhari skin ko glowing banata hoon.",
      englishDialogue: "I am Sweet Potato. I make your skin glow.",
    ),
    ItemData(
      name: "Avocado",
      type: ItemType.beneficial,
      actionDescription: "protecting the heart with a soft green cushion",
      target: "heart",
      hindiDialogue: "Main Avocado hoon. Main tumhare dil ka khayal rakhta hoon.",
      englishDialogue: "I am Avocado. I take care of your heart.",
    ),
    ItemData(
      name: "Kale",
      type: ItemType.beneficial,
      actionDescription: "sweeping toxins out of the bloodstream",
      target: "bloodstream",
      hindiDialogue: "Main Kale hoon. Main tumhare sharir ki safai karta hoon.",
      englishDialogue: "I am Kale. I clean your body.",
    ),
  ];

  static const List<ItemData> harmfulItems = [
    ItemData(
      name: "Sugar",
      type: ItemType.harmful,
      actionDescription: "attacking teeth enamel with a pickaxe",
      target: "teeth",
      hindiDialogue: "Main Cheeni hoon. Main tumhare daanton ko sadata hoon aur tumhe bimar karta hoon.",
      englishDialogue: "I am Sugar. I rot your teeth and make you sick.",
    ),
    ItemData(
      name: "Fried Food",
      type: ItemType.harmful,
      actionDescription: "clogging arteries with thick yellow grease",
      target: "arteries",
      hindiDialogue: "Main Talahua Khana hoon. Main tumhari nason ko block kar dunga, bach ke rehna.",
      englishDialogue: "I am Fried Food. I will block your veins, stay away.",
    ),
    ItemData(
      name: "Soda",
      type: ItemType.harmful,
      actionDescription: "eroding bone density with acidic bubbles",
      target: "bones",
      hindiDialogue: "Main Soda hoon. Main tumhari haddiyon ko kamzor kar dunga.",
      englishDialogue: "I am Soda. I will weaken your bones.",
    ),
    ItemData(
      name: "Processed Meat",
      type: ItemType.harmful,
      actionDescription: "damaging the gut lining with rough scratches",
      target: "gut",
      hindiDialogue: "Main Processed Meat hoon. Main tumhare pet ko kharab kar dunga.",
      englishDialogue: "I am Processed Meat. I will ruin your stomach.",
    ),
    ItemData(
      name: "Alcohol",
      type: ItemType.harmful,
      actionDescription: "burning liver tissue with blue flames",
      target: "liver",
      hindiDialogue: "Main Sharab hoon. Main tumhare liver ko jala dunga, mujhe mat piyo.",
      englishDialogue: "I am Alcohol. I will burn your liver, do not drink me.",
    ),
    ItemData(
      name: "Donuts",
      type: ItemType.harmful,
      actionDescription: "spiking blood sugar levels aggressively",
      target: "blood sugar",
      hindiDialogue: "Main Donut hoon. Main tumhara sugar level badha dunga.",
      englishDialogue: "I am Donut. I will spike your sugar level.",
    ),
    ItemData(
      name: "Potato Chips",
      type: ItemType.harmful,
      actionDescription: "inflaming blood vessels with salt crystals",
      target: "blood vessels",
      hindiDialogue: "Main Chips hoon. Main tumhara blood pressure badha dunga.",
      englishDialogue: "I am Chips. I will increase your blood pressure.",
    ),
    ItemData(
      name: "Margarine",
      type: ItemType.harmful,
      actionDescription: "blocking cell membranes with plastic-like film",
      target: "cells",
      hindiDialogue: "Main Margarine hoon. Main tumhare cells ko block kar dunga.",
      englishDialogue: "I am Margarine. I will block your cells.",
    ),
    ItemData(
      name: "White Bread",
      type: ItemType.harmful,
      actionDescription: "turning into sticky glue inside the stomach",
      target: "stomach",
      hindiDialogue: "Main Maida hoon. Main tumhare pet mein chipak jaunga.",
      englishDialogue: "I am White Bread. I will stick inside your stomach.",
    ),
    ItemData(
      name: "Candy",
      type: ItemType.harmful,
      actionDescription: "rotting teeth roots with neon acid",
      target: "teeth",
      hindiDialogue: "Main Candy hoon. Main tumhare daanton mein keeda laga dungi.",
      englishDialogue: "I am Candy. I will put cavities in your teeth.",
    ),
  ];
}
