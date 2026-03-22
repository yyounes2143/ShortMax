package io.bidmachine.analytics.internal;

import java.util.Map;
import kotlin.text.Charsets;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public abstract class U {
    public static final T a(Q q10) {
        byte[] bArr;
        JSONObject a10;
        String jSONObject;
        byte[] bytes = q10.a().isEmpty() ? new byte[0] : s0.a(q10.a()).toString().getBytes(Charsets.UTF_8);
        String c10 = q10.c();
        String d10 = q10.d();
        String e10 = q10.e();
        long f10 = q10.f();
        q0 b10 = q10.b();
        if (b10 == null || (a10 = r0.a(b10)) == null || (jSONObject = a10.toString()) == null || (bArr = jSONObject.getBytes(Charsets.UTF_8)) == null) {
            bArr = new byte[0];
        }
        return new T(c10, d10, e10, f10, bytes, bArr);
    }

    public static final Q a(T t10) {
        Map a10;
        if (t10.a().length == 0) {
            a10 = kotlin.collections.p0.i();
        } else {
            a10 = s0.a(new JSONObject(new String(t10.a(), Charsets.UTF_8)));
        }
        return new Q(t10.c(), t10.d(), t10.e(), t10.f(), a10, t10.b().length == 0 ? null : r0.a(new JSONObject(new String(t10.b(), Charsets.UTF_8))));
    }
}
