package hb;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class o {

    /* renamed from: b  reason: collision with root package name */
    private static o f52732b;

    /* renamed from: c  reason: collision with root package name */
    private static Map<String, Long> f52733c = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private Context f52734a;

    public static o a() {
        return h();
    }

    private static synchronized o h() {
        o oVar;
        synchronized (o.class) {
            try {
                if (f52732b == null) {
                    f52732b = new o();
                }
                oVar = f52732b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return oVar;
    }

    private void i(Context context) {
        String str;
        String j10 = com.huawei.hms.hatool.o.j(context);
        v0.b(j10);
        if (w0.b().a()) {
            String b10 = l.b(context, "global_v2", "app_ver", "");
            l.g(context, "global_v2", "app_ver", j10);
            v0.d(b10);
            if (TextUtils.isEmpty(b10)) {
                str = "app ver is first save!";
            } else if (!b10.equals(j10)) {
                f1.h("hmsSdk", "the appVers are different!");
                a().g("", "alltype", b10);
                return;
            } else {
                return;
            }
        } else {
            str = "userManager.isUserUnlocked() == false";
        }
        f1.h("hmsSdk", str);
    }

    public void b(Context context) {
        this.f52734a = context;
        i(context);
        z0.e().d().q(com.huawei.hms.hatool.o.c());
    }

    public void c(String str, int i10) {
        if (this.f52734a == null) {
            f1.l("hmsSdk", "onReport() null context or SDK was not init.");
            return;
        }
        f1.h("hmsSdk", "onReport: Before calling runtaskhandler()");
        g(str, o0.c(i10), v0.m());
    }

    public void d(String str, int i10, String str2, JSONObject jSONObject) {
        long currentTimeMillis = System.currentTimeMillis();
        if (2 == i10) {
            currentTimeMillis = o0.a("yyyy-MM-dd", currentTimeMillis);
        }
        e.d().b(new b(str2, jSONObject, str, o0.c(i10), currentTimeMillis));
    }

    public void e(String str, int i10, String str2, JSONObject jSONObject, long j10) {
        new z(str, o0.c(i10), str2, jSONObject.toString(), j10).a();
    }

    public void f(String str, String str2) {
        if (c.b(str, str2)) {
            long k10 = c.k(str, str2);
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - k10 > 30000) {
                f1.b("hmsSdk", "begin to call onReport!");
                c.a(str, str2, currentTimeMillis);
                g(str, str2, v0.m());
                return;
            }
            f1.m("hmsSdk", "autoReport timeout. interval < 30s ");
            return;
        }
        f1.h("hmsSdk", "auto report is closed tag:" + str);
    }

    public void g(String str, String str2, String str3) {
        Context context = this.f52734a;
        if (context == null) {
            f1.l("hmsSdk", "onReport() null context or SDK was not init.");
            return;
        }
        String d10 = com.huawei.hms.hatool.r0.d(context);
        if (c.f(str, str2) && !"WIFI".equals(d10)) {
            f1.h("hmsSdk", "strNetworkType is :" + d10);
        } else if (!"unknown".equals(d10) && !DevicePublicKeyStringDef.NONE.equals(d10) && !"2G".equals(d10)) {
            e.d().b(new e1(str, str2, str3));
        } else {
            f1.l("hmsSdk", "The network is bad.");
        }
    }
}
