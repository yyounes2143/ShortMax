package oa;

import android.content.Context;
import android.util.Log;
/* loaded from: classes5.dex */
public abstract class c {
    public static c a(d dVar) {
        return com.huawei.agconnect.core.a.a.h(dVar);
    }

    public static c c() {
        return com.huawei.agconnect.core.a.a.f();
    }

    public static void e(Context context) {
        Log.i("AGConnectInstance", "AGConnectInstance#initialize");
        com.huawei.agconnect.core.a.a.j(context);
    }

    public abstract Context b();

    public abstract d d();
}
