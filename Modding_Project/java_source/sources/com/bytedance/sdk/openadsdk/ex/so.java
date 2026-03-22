package com.bytedance.sdk.openadsdk.ex;

import android.app.ActivityManager;
import android.os.Build;
import com.bytedance.sdk.component.utils.QSm;
import java.lang.reflect.Method;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class so {
    private static boolean Pfn = false;
    private static Class<?> ZYk;
    private static Method ex;
    private static Method oJ;
    private static Method tB;

    static {
        ZYk();
    }

    private static void ZYk() {
        int i10;
        if (!Pfn && (i10 = Build.VERSION.SDK_INT) >= 35) {
            try {
                if (tB()) {
                    oJ = ActivityManager.class.getMethod("getHistoricalProcessStartReasons", Integer.TYPE);
                    Class<?> cls = Class.forName("android.app.ApplicationStartInfo");
                    ZYk = cls;
                    ex = cls.getMethod("getReason", new Class[0]);
                    if (i10 >= 36) {
                        tB = ZYk.getMethod("getStartComponent", new Class[0]);
                    }
                    Pfn = true;
                }
            } catch (Throwable th2) {
                QSm.tB(th2.getMessage(), new Object[0]);
            }
        }
    }

    public static JSONObject oJ() {
        JSONObject jSONObject;
        Method method;
        List list;
        Method method2;
        Method method3;
        int i10 = Build.VERSION.SDK_INT;
        JSONObject jSONObject2 = null;
        if (i10 < 35 || !tB()) {
            return null;
        }
        ZYk();
        try {
            jSONObject = new JSONObject();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            ActivityManager activityManager = (ActivityManager) com.bytedance.sdk.openadsdk.core.si.oJ().getSystemService(ActivityManager.class);
            if (activityManager != null && (method = oJ) != null && (list = (List) method.invoke(activityManager, 1)) != null && !list.isEmpty()) {
                Object obj = list.get(0);
                if (i10 >= 36 && obj != null && (method3 = tB) != null) {
                    jSONObject.put("start_component", ((Integer) method3.invoke(obj, new Object[0])).intValue());
                }
                if (obj != null && (method2 = ex) != null) {
                    jSONObject.put("start_reason", ((Integer) method2.invoke(obj, new Object[0])).intValue());
                }
            }
            return jSONObject;
        } catch (Throwable th3) {
            th = th3;
            jSONObject2 = jSONObject;
            QSm.tB(th.getMessage(), new Object[0]);
            return jSONObject2;
        }
    }

    private static boolean tB() {
        if (com.bytedance.sdk.openadsdk.oq.oJ.oJ("s_i_e", 0) != 1) {
            return false;
        }
        return true;
    }
}
