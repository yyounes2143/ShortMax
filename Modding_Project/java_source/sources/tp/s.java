package tp;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.UnknownHostException;
/* loaded from: classes8.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f67645a = false;

    private static void a(@Nullable Object obj, @NonNull String str, boolean z10, @Nullable Object... objArr) {
        if (!f()) {
            return;
        }
        if (objArr != null && objArr.length != 0) {
            try {
                str = String.format(str, objArr);
            } catch (Throwable unused) {
            }
        }
        if (obj != null) {
            String obj2 = obj.toString();
            if (!TextUtils.isEmpty(obj2)) {
                str = "[" + obj2 + "] " + str;
            }
        }
        if (z10) {
            Log.e("AdaptiveRendering", str);
        } else {
            Log.d("AdaptiveRendering", str);
        }
    }

    public static void b(@NonNull Object obj, @NonNull String str, @Nullable Object... objArr) {
        a(obj, str, true, objArr);
    }

    public static void c(@NonNull String str, @Nullable Object... objArr) {
        a(null, str, true, objArr);
    }

    private static void d(@NonNull Throwable th2) {
        if (!f()) {
            return;
        }
        if (th2 instanceof UnknownHostException) {
            th2.printStackTrace();
        } else {
            Log.w("AdaptiveRendering", th2);
        }
    }

    public static void e(boolean z10) {
        f67645a = z10;
    }

    public static boolean f() {
        return i();
    }

    public static void g(@NonNull Object obj, @NonNull String str, @Nullable Object... objArr) {
        a(obj, str, false, objArr);
    }

    public static void h(@NonNull Throwable th2) {
        d(th2);
    }

    public static boolean i() {
        return f67645a;
    }
}
