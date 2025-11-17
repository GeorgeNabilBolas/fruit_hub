import 'dart:io';

void main(List<String> inputs) {
  validateInputs(inputs);
  final screenName = buildScreenName(inputs);
  final basePath = 'lib/';

  print('\n🛠️ Setting up screen structure for: $screenName\n');

  generateFolders(basePath, screenName);
  generateFiles(basePath, screenName);

  print('\n🎉 Done setting up "$screenName" structure!\n');
}

void validateInputs(List<String> inputs) {
  if (inputs.isEmpty) {
    print(
      '❌ Please provide a screen name.\n'
      'Usage: dart generate.dart <screen_name>',
    );
    exit(1);
  }
}

String buildScreenName(List<String> inputs) {
  return inputs.join('_').toLowerCase();
}

void generateFolders(String basePath, String screenName) {
  final folderStructure = [
    'assets/svgs',
    'assets/images',
    'assets/fonts',
    '$basePath/Core/di',
    '$basePath/Core/networking',
    '$basePath/Core/routing',
    '$basePath/Core/helpers',
    '$basePath/Core/theming',
    '$basePath/Core/widgets',
    '$basePath/features/$screenName/data/models',
    '$basePath/features/$screenName/data/repo',
    '$basePath/features/$screenName/logic',
    '$basePath/features/$screenName/ui/widgets',
  ];

  print('📂 Creating folders:\n');

  for (final folder in folderStructure) {
    createDirectory(folder);
  }
}

void generateFiles(String basePath, String screenName) {
  final files = [
    '$basePath/features/$screenName/ui/${screenName}_screen.dart',
  ];

  print('📄 Creating files:\n');

  for (final file in files) {
    createFile(file);
  }
}

void createDirectory(String path) {
  final dir = Directory(path);
  if (!dir.existsSync()) {
    dir.createSync(recursive: true);
    print('   ✅ Created: $path');
  } else {
    print('   ⚠️ Already exists: $path');
  }
}

void createFile(String path) {
  final file = File(path);
  if (!file.existsSync()) {
    file.createSync(recursive: true);
    print('   ✅ Created: $path');
  } else {
    print('   ⚠️ Already exists: $path');
  }
}
