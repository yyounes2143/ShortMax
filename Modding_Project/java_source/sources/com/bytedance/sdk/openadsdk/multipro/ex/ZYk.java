package com.bytedance.sdk.openadsdk.multipro.ex;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.adjust.sdk.Constants;
import com.bytedance.sdk.component.oJ;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.jFA;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ZYk {
    private static SoftReference<ConcurrentHashMap<String, Map<String, Object>>> oJ;

    private static void ZYk(String str) {
        Map<String, Object> map;
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = oJ;
        if (softReference == null || softReference.get() == null || (map = oJ.get().get(oJ(str))) == null) {
            return;
        }
        map.clear();
    }

    @Nullable
    public static SharedPreferences oJ(Context context, String str) {
        if (context == null) {
            return null;
        }
        try {
            return context.getSharedPreferences(oJ(str), 0);
        } catch (Throwable th2) {
            QSm.tB("SPMultiHelperImpl", "getSharedPreferences error ", th2.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, ?> tB(Context context, String str) {
        SharedPreferences oJ2 = oJ(context, str);
        if (oJ2 == null) {
            return null;
        }
        return oJ2.getAll();
    }

    private static String oJ(String str) {
        return TextUtils.isEmpty(str) ? "sphelper_ttopenadsdk" : str;
    }

    private static Object ZYk(Context context, String str, String str2, String str3) {
        String oJ2 = oJ(str);
        if (oJ(context, oJ2, str2)) {
            if (str3.equalsIgnoreCase(TypedValues.Custom.S_STRING)) {
                return oJ.oJ(context, oJ2, str2, (String) null);
            }
            if (str3.equalsIgnoreCase(TypedValues.Custom.S_BOOLEAN)) {
                return Boolean.valueOf(oJ.oJ(context, oJ2, str2, false));
            }
            if (str3.equalsIgnoreCase("int")) {
                return Integer.valueOf(oJ.oJ(context, oJ2, str2, 0));
            }
            if (str3.equalsIgnoreCase(Constants.LONG)) {
                return Long.valueOf(oJ.oJ(context, oJ2, str2, 0L));
            }
            if (str3.equalsIgnoreCase(TypedValues.Custom.S_FLOAT)) {
                return Float.valueOf(oJ.oJ(context, oJ2, str2, 0.0f));
            }
            if (str3.equalsIgnoreCase("string_set")) {
                return oJ.oJ(context, oJ2, str2, (String) null);
            }
            return null;
        }
        return null;
    }

    private static Object oJ(String str, String str2) {
        ConcurrentHashMap<String, Map<String, Object>> concurrentHashMap;
        Map<String, Object> map;
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = oJ;
        if (softReference == null || (concurrentHashMap = softReference.get()) == null || (map = concurrentHashMap.get(oJ(str))) == null) {
            return null;
        }
        return map.get(str2);
    }

    private static void oJ(String str, String str2, Object obj) {
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = oJ;
        if (softReference == null || softReference.get() == null) {
            oJ = new SoftReference<>(new ConcurrentHashMap());
        }
        String oJ2 = oJ(str);
        ConcurrentHashMap<String, Map<String, Object>> concurrentHashMap = oJ.get();
        if (concurrentHashMap.get(oJ2) == null) {
            concurrentHashMap.put(oJ2, new HashMap());
        }
        concurrentHashMap.get(oJ2).put(str2, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized <T> void oJ(Context context, String str, String str2, T t10) {
        synchronized (ZYk.class) {
            String oJ2 = oJ.oJ(str, str2);
            if (jFA.cFZ(oJ2)) {
                com.bytedance.sdk.component.oJ oJ3 = com.bytedance.sdk.component.oJ.oJ(context, oJ2);
                if (t10.equals(oJ(oJ2, str2))) {
                    return;
                }
                oJ.tB ZYk = oJ3.ZYk();
                oJ(ZYk, str2, (Object) t10);
                ZYk.apply();
                oJ(oJ2, str2, t10);
                return;
            }
            SharedPreferences oJ4 = oJ(context, oJ2);
            if (oJ4 == null) {
                return;
            }
            if (t10.equals(oJ(oJ2, str2))) {
                return;
            }
            SharedPreferences.Editor edit = oJ4.edit();
            oJ(edit, str2, t10);
            edit.apply();
            oJ(oJ2, str2, t10);
        }
    }

    public static void ZYk(Context context, String str, String str2) {
        try {
            String oJ2 = oJ.oJ(str, str2);
            if (jFA.cFZ(oJ2)) {
                com.bytedance.sdk.component.oJ.oJ(context, oJ2).ZYk().remove(str2).apply();
                return;
            }
            SharedPreferences oJ3 = oJ(context, oJ2);
            if (oJ3 == null) {
                return;
            }
            SharedPreferences.Editor edit = oJ3.edit();
            edit.remove(str2);
            edit.apply();
            SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = oJ;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            Map<String, Object> map = oJ.get().get(oJ(oJ2));
            if (map != null && map.size() != 0) {
                map.remove(str2);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void ZYk(Context context, String str) {
        if (jFA.cFZ(str)) {
            com.bytedance.sdk.component.oJ.oJ(context, str).ZYk().clear().apply();
            ZYk(str);
            return;
        }
        SharedPreferences oJ2 = oJ(context, str);
        if (oJ2 == null) {
            return;
        }
        SharedPreferences.Editor edit = oJ2.edit();
        edit.clear();
        edit.apply();
        ZYk(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T> void oJ(SharedPreferences.Editor editor, String str, T t10) {
        if (t10 instanceof Integer) {
            editor.putInt(str, ((Integer) t10).intValue());
        }
        if (t10 instanceof Long) {
            editor.putLong(str, ((Long) t10).longValue());
        }
        if (t10 instanceof Float) {
            editor.putFloat(str, ((Float) t10).floatValue());
        }
        if (t10 instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) t10).booleanValue());
        }
        if (t10 instanceof String) {
            editor.putString(str, (String) t10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T> void oJ(oJ.tB tBVar, String str, T t10) {
        if (t10 instanceof Integer) {
            tBVar.putInt(str, ((Integer) t10).intValue());
        }
        if (t10 instanceof Long) {
            tBVar.putLong(str, ((Long) t10).longValue());
        }
        if (t10 instanceof Float) {
            tBVar.putFloat(str, ((Float) t10).floatValue());
        }
        if (t10 instanceof Boolean) {
            tBVar.putBoolean(str, ((Boolean) t10).booleanValue());
        }
        if (t10 instanceof String) {
            tBVar.putString(str, (String) t10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String oJ(Context context, String str, String str2, String str3) {
        Object oJ2 = oJ(str, str2);
        if (oJ2 != null) {
            return String.valueOf(oJ2);
        }
        Object ZYk = ZYk(context, str, str2, str3);
        oJ(str, str2, ZYk);
        return String.valueOf(ZYk);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean oJ(Context context, String str, String str2) {
        String oJ2 = oJ.oJ(str, str2);
        if (jFA.cFZ(oJ2)) {
            return com.bytedance.sdk.component.oJ.oJ(context, oJ2).oJ(str2);
        }
        SharedPreferences oJ3 = oJ(context, oJ2);
        return oJ3 != null && oJ3.contains(str2);
    }
}
