package com.ss.mediakit.utils;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.StatFs;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.ss.texturerender.TextureRenderKeys;
import java.util.HashMap;
/* loaded from: classes6.dex */
public class AVMDLDeviceUtil {
    public static String sBoard;
    public static String sHardware;

    public static int getBatteryPercentage(Context context) {
        return ((BatteryManager) context.getSystemService("batterymanager")).getIntProperty(4);
    }

    public static HashMap<String, Object> getChargingState(Context context) {
        Intent registerReceiver;
        int i10;
        if (context == null || (registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"))) == null) {
            return null;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        if (intExtra != 2 && intExtra != 5) {
            i10 = 0;
        } else {
            i10 = 1;
        }
        int intExtra2 = registerReceiver.getIntExtra("plugged", -1);
        int intExtra3 = (registerReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) * 100) / registerReceiver.getIntExtra(TextureRenderKeys.KEY_IS_SCALE, -1);
        HashMap<String, Object> hashMap = new HashMap<>(3);
        hashMap.put("isCharging", Integer.valueOf(i10));
        hashMap.put("chargePlug", Integer.valueOf(intExtra2));
        hashMap.put("power", Integer.valueOf(intExtra3));
        return hashMap;
    }

    public static String getDeviceBoard() {
        try {
            if (sBoard == null) {
                sBoard = Build.BOARD;
            }
        } catch (Throwable unused) {
            sBoard = null;
        }
        return sBoard;
    }

    public static String getDeviceHardware() {
        try {
            if (sHardware == null) {
                sHardware = Build.HARDWARE;
            }
        } catch (Throwable unused) {
            sHardware = null;
        }
        return sHardware;
    }

    public static String getDeviceModel() {
        return Build.MODEL;
    }

    private static StatFs getSdcardState() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            return new StatFs(Environment.getExternalStorageDirectory().getPath());
        }
        return null;
    }

    public static long getTotalFreeStorageKB() {
        StatFs sdcardState = getSdcardState();
        if (sdcardState != null) {
            return (sdcardState.getAvailableBlocks() * sdcardState.getBlockSize()) / RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        }
        return 0L;
    }

    public static long getTotalStorageSpaceKB() {
        StatFs sdcardState = getSdcardState();
        if (sdcardState != null) {
            return (sdcardState.getBlockSizeLong() * sdcardState.getBlockCountLong()) / RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        }
        return 0L;
    }

    public static boolean isOverHeat(Context context) {
        int currentThermalStatus;
        if (context != null && Build.VERSION.SDK_INT >= 29) {
            try {
                PowerManager powerManager = (PowerManager) context.getSystemService("power");
                if (powerManager != null) {
                    currentThermalStatus = powerManager.getCurrentThermalStatus();
                    if (currentThermalStatus < 3) {
                        return false;
                    }
                    return true;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public static boolean isPowerSaveMode(Context context) {
        if (context != null) {
            try {
                PowerManager powerManager = (PowerManager) context.getSystemService("power");
                if (powerManager != null) {
                    return powerManager.isPowerSaveMode();
                }
                return false;
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
