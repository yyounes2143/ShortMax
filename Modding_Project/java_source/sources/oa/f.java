package oa;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, a> f63166a = new HashMap();

    /* loaded from: classes5.dex */
    public interface a {
        String a(d dVar);
    }

    public static Map<String, a> a() {
        return f63166a;
    }

    public static void b(String str, a aVar) {
        f63166a.put(str, aVar);
    }
}
