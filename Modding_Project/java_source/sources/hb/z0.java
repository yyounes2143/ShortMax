package hb;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes5.dex */
public final class z0 {

    /* renamed from: b  reason: collision with root package name */
    static Map<String, i0> f52810b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private static z0 f52811c;

    /* renamed from: a  reason: collision with root package name */
    private t f52812a = new t();

    private z0() {
    }

    public static z0 e() {
        if (f52811c == null) {
            f();
        }
        return f52811c;
    }

    private static synchronized void f() {
        synchronized (z0.class) {
            if (f52811c == null) {
                f52811c = new z0();
            }
        }
    }

    public i0 a(String str) {
        return f52810b.get(str);
    }

    public Set<String> b() {
        return f52810b.keySet();
    }

    public void c(String str, i0 i0Var) {
        f52810b.put(str, i0Var);
    }

    public t d() {
        return this.f52812a;
    }
}
