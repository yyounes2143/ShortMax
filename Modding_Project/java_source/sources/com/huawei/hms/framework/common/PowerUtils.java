package com.huawei.hms.framework.common;

import android.annotation.SuppressLint;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.os.PowerManager;
/* loaded from: classes5.dex */
public class PowerUtils {

    /* loaded from: classes5.dex */
    public static final class PowerMode {
        static final int POWER_MODE_DEFAULT_RETURN_VALUE = 0;
        static final int POWER_SAVER_MODE = 4;
        static final String SMART_MODE_STATUS = "SmartModeStatus";
    }

    public static boolean isAppIdleMode(Context context) {
        if (context != null) {
            String packageName = context.getPackageName();
            Object systemService = context.getSystemService("usagestats");
            if (systemService instanceof UsageStatsManager) {
                UsageStatsManager usageStatsManager = (UsageStatsManager) systemService;
                if (usageStatsManager != null) {
                    return usageStatsManager.isAppInactive(packageName);
                }
                Logger.i("PowerUtils", "isAppIdleMode statsManager is null!");
            }
            return false;
        }
        Logger.i("PowerUtils", "isAppIdleMode Context is null!");
        return false;
    }

    public static boolean isDozeIdleMode(Context context) {
        PowerManager powerManager;
        if (context != null) {
            Object systemService = ContextCompat.getSystemService(context, "power");
            if (systemService instanceof PowerManager) {
                powerManager = (PowerManager) systemService;
            } else {
                powerManager = null;
            }
            if (powerManager != null) {
                try {
                    return powerManager.isDeviceIdleMode();
                } catch (RuntimeException e10) {
                    Logger.e("PowerUtils", "dealType rethrowFromSystemServer:", e10);
                    return false;
                }
            }
            Logger.i("PowerUtils", "isDozeIdleMode powerManager is null!");
            return false;
        }
        Logger.i("PowerUtils", "isDozeIdleMode Context is null!");
        return false;
    }

    public static boolean isInteractive(Context context) {
        if (context != null) {
            Object systemService = ContextCompat.getSystemService(context, "power");
            if (systemService instanceof PowerManager) {
                try {
                    return ((PowerManager) systemService).isInteractive();
                } catch (RuntimeException e10) {
                    Logger.i("PowerUtils", "getActiveNetworkInfo failed, exception:" + e10.getClass().getSimpleName() + e10.getMessage());
                }
            }
        }
        return false;
    }

    public static boolean isWhilteList(Context context) {
        PowerManager powerManager;
        if (context != null) {
            Object systemService = ContextCompat.getSystemService(context, "power");
            if (systemService instanceof PowerManager) {
                powerManager = (PowerManager) systemService;
            } else {
                powerManager = null;
            }
            String packageName = context.getPackageName();
            if (powerManager != null) {
                try {
                    return powerManager.isIgnoringBatteryOptimizations(packageName);
                } catch (RuntimeException e10) {
                    Logger.e("PowerUtils", "dealType rethrowFromSystemServer:", e10);
                }
            }
        }
        return false;
    }

    @SuppressLint({"MissingPermission"})
    public static int readDataSaverMode(Context context) {
        ConnectivityManager connectivityManager;
        if (context != null) {
            Object systemService = context.getSystemService("connectivity");
            if (systemService instanceof ConnectivityManager) {
                connectivityManager = (ConnectivityManager) systemService;
            } else {
                connectivityManager = null;
            }
            if (connectivityManager != null) {
                if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
                    return 0;
                }
                if (connectivityManager.isActiveNetworkMetered()) {
                    return connectivityManager.getRestrictBackgroundStatus();
                }
                Logger.v("PowerUtils", "ConnectType is not Mobile Network!");
                return 0;
            }
            Logger.i("PowerUtils", "readDataSaverMode Context is null!");
            return 0;
        }
        Logger.i("PowerUtils", "readDataSaverMode manager is null!");
        return 0;
    }

    public static int readPowerSaverMode(Context context) {
        PowerManager powerManager;
        if (context != null) {
            int systemInt = SettingUtil.getSystemInt(context.getContentResolver(), "SmartModeStatus", 0);
            if (systemInt == 0) {
                Object systemService = ContextCompat.getSystemService(context, "power");
                if (systemService instanceof PowerManager) {
                    powerManager = (PowerManager) systemService;
                } else {
                    powerManager = null;
                }
                if (powerManager != null) {
                    try {
                        if (!powerManager.isPowerSaveMode()) {
                            return 0;
                        }
                        return 4;
                    } catch (RuntimeException e10) {
                        Logger.e("PowerUtils", "dealType rethrowFromSystemServer:", e10);
                    }
                }
            }
            return systemInt;
        }
        Logger.i("PowerUtils", "readPowerSaverMode Context is null!");
        return 0;
    }
}
