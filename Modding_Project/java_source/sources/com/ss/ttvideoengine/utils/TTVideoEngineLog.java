package com.ss.ttvideoengine.utils;

import com.bytedance.vcloud.abrmodule.ABRConfig;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConfig;
import com.ss.ttvideoengine.setting.SettingsHelper;
/* loaded from: classes6.dex */
public class TTVideoEngineLog {
    public static final int LOG_DEBUG = 1;
    public static final int LOG_ERROR = 6;
    public static final int LOG_INFO = 2;
    public static final int LOG_KILL = 4;
    public static final int LOG_TRACK = 3;
    public static final int LOG_VERBOSE = 0;
    public static final int LOG_WARN = 5;
    private static final String TAG = "TTVideoEngineLog";

    private static void _notifyListener(String str, String str2) {
        TTVideoEngineInternalLog._notifyListener(str, str2);
    }

    public static void d(String str, String str2) {
        TTVideoEngineInternalLog.d(str, str2);
    }

    public static void e(String str, String str2) {
        TTVideoEngineInternalLog.e(str, str2);
    }

    public static int getLogNotifyLevel() {
        return TTVideoEngineInternalLog.LogNotifyLevel;
    }

    public static int getLogTurnOn() {
        return TTVideoEngineInternalLog.LogTurnOn;
    }

    public static void i(String str, String str2) {
        TTVideoEngineInternalLog.i(str, str2);
    }

    public static void k(String str, String str2) {
        TTVideoEngineInternalLog.k(str, str2);
    }

    public static void setListener(TTVideoEngineLogListener tTVideoEngineLogListener) {
        TTVideoEngineInternalLog.setListener(tTVideoEngineLogListener);
    }

    public static void setLogNotifyLevel(int i10, int i11) {
        TTVideoEngineInternalLog.setLogNotifyLevel(i10, i11);
    }

    public static void t(String str, String str2) {
        TTVideoEngineInternalLog.t(str, str2);
    }

    public static void turnOn(int i10, int i11) {
        TTVideoEngineInternalLog.turnOn(i10, i11);
        if (i10 == 1 && i11 == 1) {
            ABRConfig.setLoglevel(1);
            GearStrategyConfig globalConfig = GearStrategy.getGlobalConfig();
            globalConfig.setIntValue(33, 1);
            GearStrategy.setGlobalConfig(globalConfig);
            SettingsHelper.helper().setDebug(true);
        } else {
            SettingsHelper.helper().setDebug(false);
        }
        if (i11 > 0) {
            DataLoaderHelper.getDataLoader().setPreloadLogLevel(i10);
        } else {
            DataLoaderHelper.getDataLoader().setPreloadLogLevel(6);
        }
    }

    public static void w(String str, String str2) {
        TTVideoEngineInternalLog.w(str, str2);
    }

    public static void d(Throwable th2) {
        TTVideoEngineInternalLog.d(th2);
    }

    public static boolean e() {
        return TTVideoEngineInternalLog.e();
    }

    public static boolean d() {
        return TTVideoEngineInternalLog.d();
    }
}
