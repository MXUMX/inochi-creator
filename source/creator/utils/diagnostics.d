module creator.utils.diagnostics;

import std.stdio : File;

enum INC_DIAGNOSTIC_LOG = "inochi-render.log";

void incDiagnosticReset() {
    try {
        auto file = File(INC_DIAGNOSTIC_LOG, "w");
        file.writeln("Inochi Creator Windows render diagnostic");
        file.close();
    } catch (Exception) {
        // Diagnostics must never prevent the application from starting.
    }
}

void incDiagnosticLog(const(char)[] message) {
    try {
        auto file = File(INC_DIAGNOSTIC_LOG, "a");
        file.writeln(message);
        file.close();
    } catch (Exception) {
        // Diagnostics must never interfere with the renderer.
    }
}
