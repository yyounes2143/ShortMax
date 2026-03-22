package hb;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public final class k1 {

    /* renamed from: b  reason: collision with root package name */
    private static k1 f52717b;

    /* renamed from: a  reason: collision with root package name */
    private volatile Map<String, s0> f52718a = new HashMap();

    private k1() {
    }

    private s0 a(String str) {
        if (!this.f52718a.containsKey(str)) {
            this.f52718a.put(str, new s0());
        }
        return this.f52718a.get(str);
    }

    public static k1 c() {
        if (f52717b == null) {
            d();
        }
        return f52717b;
    }

    private static synchronized void d() {
        synchronized (k1.class) {
            if (f52717b == null) {
                f52717b = new k1();
            }
        }
    }

    public s0 b(String str, long j10) {
        s0 a10 = a(str);
        a10.b(j10);
        return a10;
    }
}
