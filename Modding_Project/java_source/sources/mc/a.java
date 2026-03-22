package mc;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.IAppLogInstance;
import com.pandora.common.applog.AppLogWrapper;
/* compiled from: AppLogUtils.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Class<?> f62501a;

    private static Class<?> a() throws ClassNotFoundException {
        Class<?> cls;
        synchronized (a.class) {
            try {
                if (f62501a == null) {
                    IAppLogInstance iAppLogInstance = AppLog.f11741a;
                    f62501a = AppLog.class;
                }
                cls = f62501a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cls;
    }

    public static void b(Context context, String str, String str2, String str3, boolean z10, boolean z11) {
        if (context == null) {
            return;
        }
        b.a("AppLogUtils", "init appid:" + str + ", channel:" + str3);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        AppLogWrapper.init(context, str, str2, str3, z10, z11);
    }

    public static boolean c() {
        try {
            if (a() == null) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
