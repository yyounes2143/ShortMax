package com.bytedance.sdk.openadsdk.core.jFA.oJ;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Process;
import android.util.ArrayMap;
import androidx.core.app.NotificationCompat;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    private static volatile ZYk oJ;
    private final ArrayList<String> ZYk = new ArrayList<>();
    private final AtomicBoolean tB = new AtomicBoolean(false);
    private long ex = System.currentTimeMillis();
    private long Pfn = 0;

    /* renamed from: ba  reason: collision with root package name */
    private long f13150ba = 0;
    private String cFZ = "";

    /* renamed from: so  reason: collision with root package name */
    private String f13151so = "";
    private String jFA = "";
    private boolean kkU = false;
    private boolean dLZ = false;

    public static ZYk oJ(Application application) {
        if (oJ == null) {
            synchronized (ZYk.class) {
                try {
                    if (oJ == null) {
                        ZYk zYk = new ZYk();
                        oJ = zYk;
                        zYk.kkU = oJ((Context) application);
                        oJ.dLZ = oJ(application.getApplicationContext(), "android.permission.SYSTEM_ALERT_WINDOW") == 0;
                        oJ.oJ();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public void ZYk(Activity activity) {
        String localClassName = activity.getLocalClassName();
        if (this.ZYk.contains(localClassName)) {
            this.ZYk.remove(localClassName);
        }
        if (this.ZYk.size() == 0) {
            this.ex = System.currentTimeMillis();
            this.tB.set(true);
            this.f13151so = localClassName;
        }
    }

    private static int oJ(Context context, String str) {
        try {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        } catch (Throwable unused) {
            return -1;
        }
    }

    private static boolean oJ(Context context) {
        ApplicationInfo applicationInfo;
        return (context == null || (applicationInfo = context.getApplicationInfo()) == null || (applicationInfo.flags & 1) <= 0) ? false : true;
    }

    public void oJ(Activity activity) {
        String localClassName = activity.getLocalClassName();
        if (this.ZYk.size() == 0) {
            this.cFZ = localClassName;
            this.Pfn = System.currentTimeMillis();
            this.f13150ba = System.currentTimeMillis() - this.ex;
            this.tB.set(false);
        }
        if (!this.ZYk.contains(localClassName)) {
            this.ZYk.add(localClassName);
        }
        if (localClassName.contains("com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity") || localClassName.contains("com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity")) {
            return;
        }
        this.jFA = localClassName;
    }

    private void oJ() {
        int size;
        boolean z10 = true;
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            ArrayMap arrayMap = (ArrayMap) declaredField.get(invoke);
            if (arrayMap != null && (size = arrayMap.size()) > 0) {
                Class<?> cls2 = Class.forName("android.app.ActivityThread$ActivityClientRecord");
                Field declaredField2 = cls2.getDeclaredField("stopped");
                declaredField2.setAccessible(true);
                Field declaredField3 = cls2.getDeclaredField("activity");
                declaredField3.setAccessible(true);
                for (int i10 = 0; i10 < size; i10++) {
                    Object valueAt = arrayMap.valueAt(i10);
                    if (!((Boolean) declaredField2.get(valueAt)).booleanValue()) {
                        String localClassName = ((Activity) declaredField3.get(valueAt)).getLocalClassName();
                        if (!this.ZYk.contains(localClassName)) {
                            this.ZYk.add(localClassName);
                        }
                    }
                }
                AtomicBoolean atomicBoolean = this.tB;
                if (this.ZYk.size() > 0) {
                    z10 = false;
                }
                atomicBoolean.set(z10);
            }
        } catch (Throwable unused) {
        }
    }

    public String oJ(String str, long j10, int i10) {
        String str2;
        long currentTimeMillis = System.currentTimeMillis();
        long j11 = currentTimeMillis - this.Pfn;
        long j12 = currentTimeMillis - j10;
        int i11 = j12 < 500 ? 1 : 0;
        if (this.tB.get() && this.dLZ) {
            i11 |= 2;
        }
        if (!this.tB.get() && this.f13150ba >= 5000 && j11 < 1000) {
            i11 = this.f13151so.equals(this.jFA) ? i11 | 4 : i11 | 8;
        }
        try {
            str2 = new JSONObject().put("rst", i11).put("adtag", str).put("bakdur", this.f13150ba).put("rit", i10).put("poptime", j11).put("unlocktime", j12).put("bakground", this.tB).put("alert", this.dLZ).put(NotificationCompat.CATEGORY_SYSTEM, this.kkU).put("actsize", this.ZYk.size()).put("mutiproc", com.bytedance.sdk.openadsdk.multipro.ZYk.tB()).toString();
        } catch (JSONException unused) {
            str2 = "";
        }
        this.cFZ = "";
        this.f13150ba = 0L;
        this.Pfn = 0L;
        this.ex = System.currentTimeMillis();
        return str2;
    }
}
