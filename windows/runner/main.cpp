#include <flutter/flutter_view_controller.h>
#include <windows.h>
#include "flutter/generated_plugin_registrant.h"

int APIENTRY wWinMain(HINSTANCE instance, HINSTANCE prev_instance, LPWSTR cmd, int cmd_show) {
    flutter::FlutterViewController flutter_controller(1280, 720);
    RegisterPlugins(flutter_controller.engine());
    flutter_controller.Run();
    return 0;
}
