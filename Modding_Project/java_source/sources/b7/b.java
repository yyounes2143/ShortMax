package b7;

import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: BundleUtil.java */
/* loaded from: classes4.dex */
public final class b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static Method f2434a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static Method f2435b;

    @Nullable
    public static IBinder a(Bundle bundle, @Nullable String str) {
        if (s0.f2506a >= 18) {
            return bundle.getBinder(str);
        }
        return b(bundle, str);
    }

    @Nullable
    private static IBinder b(Bundle bundle, @Nullable String str) {
        Method method = f2434a;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("getIBinder", String.class);
                f2434a = method2;
                method2.setAccessible(true);
                method = f2434a;
            } catch (NoSuchMethodException e10) {
                q.g("BundleUtil", "Failed to retrieve getIBinder method", e10);
                return null;
            }
        }
        try {
            return (IBinder) method.invoke(bundle, str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e11) {
            q.g("BundleUtil", "Failed to invoke getIBinder via reflection", e11);
            return null;
        }
    }

    public static void c(Bundle bundle, @Nullable String str, @Nullable IBinder iBinder) {
        if (s0.f2506a >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            d(bundle, str, iBinder);
        }
    }

    private static void d(Bundle bundle, @Nullable String str, @Nullable IBinder iBinder) {
        Method method = f2435b;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                f2435b = method2;
                method2.setAccessible(true);
                method = f2435b;
            } catch (NoSuchMethodException e10) {
                q.g("BundleUtil", "Failed to retrieve putIBinder method", e10);
                return;
            }
        }
        try {
            method.invoke(bundle, str, iBinder);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e11) {
            q.g("BundleUtil", "Failed to invoke putIBinder via reflection", e11);
        }
    }
}
