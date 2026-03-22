package ib;

import com.huawei.hms.support.hwid.request.HuaweiIdAuthParams;
import com.huawei.hms.support.hwid.result.AuthHuaweiId;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: HuaweiIdAuthMemCache.java */
/* loaded from: classes5.dex */
public class r0 {

    /* renamed from: b  reason: collision with root package name */
    private static final r0 f53384b = new r0();

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f53385a = new ConcurrentHashMap();

    private r0() {
    }

    public static r0 a() {
        return f53384b;
    }

    private void c(String str, String str2) {
        t.b("[HUAWEIIDSDK]HuaweiIdAuthMemCache", "saveDefaultHuaweiIdSignInAccount start.", true);
        this.f53385a.remove("HuaweiIdAccount");
        this.f53385a.remove("HuaweiIdAuthParams");
        if (str != null) {
            this.f53385a.put("HuaweiIdAccount", str);
        }
        if (str2 != null) {
            this.f53385a.put("HuaweiIdAuthParams", str2);
        }
    }

    public void b(AuthHuaweiId authHuaweiId, HuaweiIdAuthParams huaweiIdAuthParams) {
        String json;
        t.b("[HUAWEIIDSDK]HuaweiIdAuthMemCache", "saveDefaultHuaweiIdSignInAccount start.", true);
        String str = null;
        if (authHuaweiId != null) {
            try {
                json = authHuaweiId.toJson();
            } catch (Throwable th2) {
                t.d("[HUAWEIIDSDK]HuaweiIdAuthMemCache", "store faild, exception:" + th2.getClass().getSimpleName(), true);
                return;
            }
        } else {
            json = null;
        }
        if (huaweiIdAuthParams != null) {
            str = huaweiIdAuthParams.toJson();
        }
        c(json, str);
    }

    public final AuthHuaweiId d() {
        try {
            String str = this.f53385a.get("HuaweiIdAccount");
            if (str == null) {
                return null;
            }
            return AuthHuaweiId.fromJson(str);
        } catch (Throwable th2) {
            t.d("[HUAWEIIDSDK]HuaweiIdAuthMemCache", "getHuaweiSignInAccount faild, exception:" + th2.getClass().getSimpleName(), true);
            return null;
        }
    }

    public void e() {
        this.f53385a.clear();
    }
}
