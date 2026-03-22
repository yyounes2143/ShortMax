package pb;

import android.content.Context;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static Context f64846a;

    public static Context a() {
        return f64846a;
    }

    public static void b(Context context) {
        if (context != null && f64846a == null) {
            f64846a = context.getApplicationContext();
        }
    }
}
