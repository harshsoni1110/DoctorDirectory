package com.betterdoctor.doctor_directory

import android.content.Intent
import android.os.Build
import android.provider.Settings
import android.util.Log
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.betterdoctor/settingsPanel"
    private lateinit var channel: MethodChannel
    private val SETTINGS_CODE = 1
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        channel = MethodChannel(flutterEngine.dartExecutor, CHANNEL)
        channel.setMethodCallHandler { call, result ->
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                if (call.method.equals("openSettingsPanel")) {
                    Log.d("METHOD", "SETTINGS PANEL")
                    result.success("1")

                    val panelIntent = Intent(Settings.Panel.ACTION_INTERNET_CONNECTIVITY)
                    val result = startActivityForResult(panelIntent, SETTINGS_CODE)
                    Log.d("METHOD", result.toString())
                } else {
                    result.error("0", "FAILED", null)
                }
            } else {
                result.error("0", "FAILED", null)
            }

        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == SETTINGS_CODE) {
            channel.invokeMethod("SettingsDismissed", "SETTINGS DISMISSED")
        }
    }
}
