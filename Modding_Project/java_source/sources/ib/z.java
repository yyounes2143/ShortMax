package ib;

import com.huawei.hms.support.account.request.AccountAuthParams;
import com.huawei.hms.support.account.result.AuthAccount;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: AccountAuthMemCache.java */
/* loaded from: classes5.dex */
public class z {

    /* renamed from: b  reason: collision with root package name */
    private static final z f53390b = new z();

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f53391a = new ConcurrentHashMap();

    private z() {
    }

    public static z a() {
        return f53390b;
    }

    private void c(String str, String str2) {
        t.b("[AccountSDK]AccountAuthMemCache", "saveDefaultAccountSignInAccount start.", true);
        this.f53391a.remove("AccountAuth");
        this.f53391a.remove("AccountAuthParams");
        if (str != null) {
            this.f53391a.put("AccountAuth", str);
        }
        if (str2 != null) {
            this.f53391a.put("AccountAuthParams", str2);
        }
    }

    public void b(AuthAccount authAccount, AccountAuthParams accountAuthParams) {
        String json;
        t.b("[AccountSDK]AccountAuthMemCache", "saveDefaultAccountSignInAccount start.", true);
        String str = null;
        if (authAccount != null) {
            try {
                json = authAccount.toJson();
            } catch (Throwable th2) {
                t.d("[AccountSDK]AccountAuthMemCache", "store faild, exception:" + th2.getClass().getSimpleName(), true);
                return;
            }
        } else {
            json = null;
        }
        if (accountAuthParams != null) {
            str = accountAuthParams.toJson();
        }
        c(json, str);
    }

    public final AuthAccount d() {
        t.b("[AccountSDK]AccountAuthMemCache", "getSignInAccount start.", true);
        try {
            String str = this.f53391a.get("AccountAuth");
            if (str == null) {
                return null;
            }
            return AuthAccount.fromJson(str);
        } catch (Throwable th2) {
            t.d("[AccountSDK]AccountAuthMemCache", "getSignInAccount faild, exception:" + th2.getClass().getSimpleName(), true);
            return null;
        }
    }

    public void e() {
        this.f53391a.clear();
    }
}
