package pb;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes5.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f64850a;

    public static long a(String str, long j10, Context context) {
        return c(context).getLong(str, j10);
    }

    public static String b(String str, String str2, Context context) {
        return c(context).getString(str, str2);
    }

    public static synchronized SharedPreferences c(Context context) {
        SharedPreferences sharedPreferences;
        synchronized (h.class) {
            try {
                if (f64850a == null) {
                    f64850a = context.createDeviceProtectedStorageContext().getSharedPreferences("aegis", 0);
                }
                sharedPreferences = f64850a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return sharedPreferences;
    }

    public static void d(String str, long j10, Context context) {
        c(context).edit().putLong(str, j10).apply();
    }

    public static void e(String str, String str2, Context context) {
        c(context).edit().putString(str, str2).apply();
    }
}
