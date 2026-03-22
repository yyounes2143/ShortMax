package bu;

import java.lang.reflect.InvocationTargetException;
import org.greenrobot.eventbus.android.AndroidComponentsImpl;
/* compiled from: AndroidDependenciesDetector.java */
/* loaded from: classes8.dex */
public class b {
    public static boolean a() {
        try {
            int i10 = AndroidComponentsImpl.f64371d;
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static a b() {
        try {
            int i10 = AndroidComponentsImpl.f64371d;
            return (a) AndroidComponentsImpl.class.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean c() {
        try {
            if (Class.forName("android.os.Looper").getDeclaredMethod("getMainLooper", new Class[0]).invoke(null, new Object[0]) == null) {
                return false;
            }
            return true;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }
}
