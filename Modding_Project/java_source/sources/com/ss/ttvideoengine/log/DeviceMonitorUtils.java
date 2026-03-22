package com.ss.ttvideoengine.log;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Debug;
import android.os.PowerManager;
import com.applovin.sdk.AppLovinEventTypes;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.unity3d.services.core.fid.Constants;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
/* loaded from: classes6.dex */
public class DeviceMonitorUtils {
    private static final String APM_CPU_INFO_CLASS_PATH = "com.bytedance.apm.perf.entity.CpuInfo";
    private static final String APM_CPU_MANAGER_CLASS_PATH = "com.bytedance.apm6.cpu.ApmCpuManager";
    private static final String TAG = "DeviceMonitorUtils";
    private static final String THOR_CLASS_PATH = "com.ss.thor.ThorUtils";
    private static Class<?> sCpuInfoClz;
    private static Class<?> sCpuManagerClz;
    private static Method sGetCpuRateMethod;
    private static Method sGetCpuSpeedMethod;
    private static Method sGetCurrentCpuInfoMethod;
    private static Method sGetGalvanicNowMethod;
    private static Method sGetInstanceMethod;
    private static Class<?> sThorClz;

    /* loaded from: classes6.dex */
    public static class CPUInfo {
        public double cpuAppRate = -1.0d;
        public double cpuAppSpeed = -1.0d;

        public String toString() {
            return "CpuInfo{cpuAppRate=" + this.cpuAppRate + ", cpuAppSpeed=" + this.cpuAppSpeed + '}';
        }
    }

    public static double getCPURate() {
        Object invoke;
        try {
            if (sCpuManagerClz == null) {
                sCpuManagerClz = Class.forName(APM_CPU_MANAGER_CLASS_PATH);
            }
            if (sGetInstanceMethod == null) {
                sGetInstanceMethod = sCpuManagerClz.getMethod(Constants.GET_INSTANCE, new Class[0]);
            }
            if (sGetCpuRateMethod == null) {
                sGetCpuRateMethod = sCpuManagerClz.getMethod("getCpuRate", new Class[0]);
            }
            Object invoke2 = sGetInstanceMethod.invoke(null, new Object[0]);
            if (invoke2 == null || (invoke = sGetCpuRateMethod.invoke(invoke2, new Object[0])) == null) {
                return -1.0d;
            }
            return Double.parseDouble(invoke.toString());
        } catch (Exception e10) {
            TTVideoEngineLog.d(TAG, "getCPURate:" + e10);
            return -1.0d;
        }
    }

    public static double getCPUSpeed() {
        Object invoke;
        try {
            if (sCpuManagerClz == null) {
                sCpuManagerClz = Class.forName(APM_CPU_MANAGER_CLASS_PATH);
            }
            if (sGetInstanceMethod == null) {
                sGetInstanceMethod = sCpuManagerClz.getMethod(Constants.GET_INSTANCE, new Class[0]);
            }
            if (sGetCpuSpeedMethod == null) {
                sGetCpuSpeedMethod = sCpuManagerClz.getMethod("getCpuSpeed", new Class[0]);
            }
            Object invoke2 = sGetInstanceMethod.invoke(null, new Object[0]);
            if (invoke2 == null || (invoke = sGetCpuSpeedMethod.invoke(invoke2, new Object[0])) == null) {
                return -1.0d;
            }
            return Double.parseDouble(invoke.toString());
        } catch (Exception e10) {
            TTVideoEngineLog.d(TAG, "getCPUSpeed:" + e10);
            return -1.0d;
        }
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

    public static CPUInfo getCurrentCPUInfo() {
        CPUInfo cPUInfo = new CPUInfo();
        try {
            if (sCpuManagerClz == null) {
                sCpuManagerClz = Class.forName(APM_CPU_MANAGER_CLASS_PATH);
            }
            if (sGetInstanceMethod == null) {
                sGetInstanceMethod = sCpuManagerClz.getMethod(Constants.GET_INSTANCE, new Class[0]);
            }
            if (sGetCurrentCpuInfoMethod == null) {
                sGetCurrentCpuInfoMethod = sCpuManagerClz.getMethod("getCurrentCpuRate", new Class[0]);
            }
            if (sCpuInfoClz == null) {
                sCpuInfoClz = Class.forName(APM_CPU_INFO_CLASS_PATH);
            }
            Object invoke = sGetInstanceMethod.invoke(null, new Object[0]);
            if (invoke != null) {
                Object invoke2 = sGetCurrentCpuInfoMethod.invoke(invoke, new Object[0]);
                if (invoke2 != null && sCpuInfoClz.isInstance(invoke2)) {
                    Field declaredField = sCpuInfoClz.getDeclaredField("cpuAppRate");
                    if (declaredField != null) {
                        cPUInfo.cpuAppRate = declaredField.getDouble(invoke2);
                    }
                    Field declaredField2 = sCpuInfoClz.getDeclaredField("cpuAppSpeed");
                    if (declaredField2 != null) {
                        cPUInfo.cpuAppSpeed = declaredField2.getDouble(invoke2);
                    }
                } else {
                    TTVideoEngineLog.i(TAG, "is not instance");
                }
            }
        } catch (Exception e10) {
            TTVideoEngineLog.d(TAG, "getCurrentCPUInfo:" + e10);
        }
        return cPUInfo;
    }

    public static float getGalvanicNow(Context context) {
        if (context == null) {
            return -1.0f;
        }
        try {
            if (sThorClz == null) {
                sThorClz = Class.forName(THOR_CLASS_PATH);
            }
            if (sGetGalvanicNowMethod == null) {
                sGetGalvanicNowMethod = sThorClz.getMethod("getGalvanicNow", Context.class);
            }
            return ((Float) sGetGalvanicNowMethod.invoke(null, context)).floatValue();
        } catch (Exception e10) {
            TTVideoEngineLog.d(TAG, "startThorMonitor failed:" + e10);
            return -1.0f;
        }
    }

    public static int getPowerCapacity(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            BatteryManager batteryManager = (BatteryManager) context.getSystemService("batterymanager");
            if (batteryManager == null) {
                return 0;
            }
            return batteryManager.getIntProperty(4);
        } catch (Throwable th2) {
            th2.printStackTrace();
            return 0;
        }
    }

    public static int getUsingMemory() {
        Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
        Debug.getMemoryInfo(memoryInfo);
        return memoryInfo.getTotalPss() / 1024;
    }

    public static int isPowerSaveMode(Context context) {
        if (context != null) {
            try {
                PowerManager powerManager = (PowerManager) context.getSystemService("power");
                if (powerManager != null) {
                    return powerManager.isPowerSaveMode() ? 1 : 0;
                }
                return -1;
            } catch (Exception e10) {
                TTVideoEngineLog.d(TAG, "isPowerSaveMode:" + e10);
                return -1;
            }
        }
        return -1;
    }
}
