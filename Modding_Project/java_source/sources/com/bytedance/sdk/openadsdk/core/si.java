package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.view.ViewConfiguration;
import androidx.annotation.Nullable;
import java.lang.reflect.Method;
/* loaded from: classes3.dex */
public class si {
    private static volatile Id<com.bytedance.sdk.openadsdk.ex.oJ> ZYk = null;
    @SuppressLint({"StaticFieldLeak"})
    private static volatile Context oJ = null;
    private static int tB = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ {
        @SuppressLint({"StaticFieldLeak"})
        private static volatile Application oJ;

        static {
            try {
                Object ZYk = ZYk();
                oJ = (Application) ZYk.getClass().getMethod("getApplication", new Class[0]).invoke(ZYk, new Object[0]);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.oJ("MyApplication", "application get failed", th2);
            }
        }

        private static Object ZYk() {
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]);
                method.setAccessible(true);
                return method.invoke(null, new Object[0]);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.oJ("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th2);
                return null;
            }
        }

        @Nullable
        public static Application oJ() {
            return oJ;
        }
    }

    public static com.bytedance.sdk.openadsdk.awB.tB.ZYk Pfn() {
        if (!com.bytedance.sdk.openadsdk.core.settings.jFA.oJ()) {
            return com.bytedance.sdk.openadsdk.awB.tB.tB.oJ();
        }
        return com.bytedance.sdk.openadsdk.ex.oJ.ex.oJ();
    }

    public static void ZYk(Context context) {
        if (oJ == null) {
            synchronized (si.class) {
                try {
                    if (oJ == null) {
                        if (context != null) {
                            oJ = context;
                            Context applicationContext = context.getApplicationContext();
                            if (applicationContext != null) {
                                oJ = applicationContext;
                            }
                            return;
                        }
                        try {
                            Application oJ2 = oJ.oJ();
                            if (oJ2 != null) {
                                oJ = oJ2;
                            }
                        } catch (Throwable unused) {
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static com.bytedance.sdk.openadsdk.core.settings.ba ex() {
        return com.bytedance.sdk.openadsdk.core.settings.PiB.ib();
    }

    public static Context oJ() {
        if (oJ == null) {
            ZYk(null);
        }
        return oJ;
    }

    public static Id<com.bytedance.sdk.openadsdk.ex.oJ> tB() {
        if (ZYk == null) {
            synchronized (si.class) {
                try {
                    if (ZYk == null) {
                        ZYk = new cY(oJ);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ZYk;
    }

    public static Context oJ(Context context) {
        if (context == null) {
            context = oJ();
        }
        if (context instanceof Application) {
            return context;
        }
        if (context != null) {
            return context.getApplicationContext();
        }
        return null;
    }

    public static int ZYk() {
        Context oJ2;
        if (tB < 0 && (oJ2 = oJ()) != null) {
            tB = ViewConfiguration.get(oJ2).getScaledTouchSlop();
        }
        return tB;
    }
}
