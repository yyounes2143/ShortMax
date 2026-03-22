package ol;

import java.util.HashMap;
import java.util.Map;
/* compiled from: SignalsResult.java */
/* loaded from: classes7.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f64274a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private String f64275b = null;

    public void a(String str, String str2) {
        this.f64274a.put(str, str2);
    }

    public String b() {
        return this.f64275b;
    }

    public Map<String, String> c() {
        return this.f64274a;
    }

    public void d(String str) {
        this.f64275b = str;
    }
}
