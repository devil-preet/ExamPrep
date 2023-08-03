// package com.example.app; // Change this to match your package name

// import androidx.annotation.NonNull;
// import androidx.core.view.WindowCompat;
// import androidx.core.view.WindowInsetsCompat;
// import androidx.core.view.WindowInsetsControllerCompat;

// import io.flutter.embedding.android.FlutterActivity;
// import io.flutter.embedding.engine.FlutterEngine;
// import io.flutter.plugin.common.MethodChannel;

// public class MainActivity extends FlutterActivity {
//   private static final String CHANNEL = "com.example.app/systemui";

//   @Override
//   public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
//     super.configureFlutterEngine(flutterEngine);
//     new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
//         .setMethodCallHandler(
//           (call, result) -> {
//             if (call.method.equals("setSystemUIOverlayStyle")) {
//               // Get the color value from the arguments
//               int systemNavigationBarColor = call.argument("systemNavigationBarColor");
//               // Set the window to fit the system insets
//               WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
//               // Get the window insets controller
//               WindowInsetsControllerCompat controller = WindowCompat.getInsetsController(getWindow(), getWindow().getDecorView());
//               if (controller != null) {
//                 // Set the navigation bar color
//                 controller.setSystemBarsAppearance(systemNavigationBarColor, WindowInsetsControllerCompat.APPEARANCE_LIGHT_NAVIGATION_BARS);
//                 // Set the navigation bar to be visible
//                 controller.show(WindowInsetsCompat.Type.navigationBars());
//               }
//               result.success(null);
//             } else {
//               result.notImplemented();
//             }
//           }
//         );
//   }
// }
