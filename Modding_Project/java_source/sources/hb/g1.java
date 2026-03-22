package hb;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class g1 {
    private static void a(String str, String str2) {
        e.a().b(new d0(str, str2));
    }

    public static boolean b() {
        String a10 = v0.a();
        if (TextUtils.isEmpty(a10)) {
            a10 = l.b(v0.q(), "Privacy_MY", "public_key_time_interval", "");
            v0.l(a10);
        }
        String u10 = v0.u();
        if (TextUtils.isEmpty(u10)) {
            u10 = l.b(v0.q(), "Privacy_MY", "public_key_time_last", "");
            v0.f(u10);
        }
        if (!TextUtils.isEmpty(a10) && !TextUtils.isEmpty(u10)) {
            try {
                int parseInt = Integer.parseInt(a10);
                if (System.currentTimeMillis() - Long.parseLong(u10) > parseInt) {
                    return true;
                }
                return false;
            } catch (NumberFormatException e10) {
                f1.l("GetPublicKey", "checkCachePubKey NumberFormatException :" + e10.getMessage());
            }
        }
        return true;
    }

    public static void c(String str, String str2) {
        n0 n0Var;
        String str3;
        String replace = "{url}/getPublicKey?keytype=4".replace("{url}", c.g(str, str2));
        String k10 = v0.k();
        HashMap hashMap = new HashMap();
        hashMap.put("App-Id", k10);
        try {
            n0Var = com.huawei.hms.hatool.w.a(replace, new byte[0], hashMap);
        } catch (Exception e10) {
            f1.l("GetPublicKey", "get pubKey response Exception :" + e10.getMessage());
            n0Var = null;
        }
        if (n0Var == null) {
            str3 = "get pubKey response is null";
        } else if (n0Var.b() != 200) {
            str3 = "get pubKey fail HttpCode :" + n0Var.b();
        } else if (!TextUtils.isEmpty(n0Var.a())) {
            e(n0Var.a(), str2);
            return;
        } else {
            return;
        }
        f1.l("GetPublicKey", str3);
    }

    public static String d(String str, String str2) {
        String w10;
        String e10 = v0.e();
        if (TextUtils.isEmpty(e10)) {
            e10 = l.b(v0.q(), "Privacy_MY", "public_key_version", "");
            v0.n(e10);
        }
        if (!MBridgeConstans.NATIVE_VIDEO_VERSION.equals(e10)) {
            a(str, str2);
            return null;
        }
        if ("maint".equals(str2)) {
            w10 = v0.v();
            if (TextUtils.isEmpty(w10)) {
                w10 = lb.a.d("HiAnalytics_Sdk_Public_Sp_Key", l.b(v0.q(), "Privacy_MY", "public_key_maint", ""));
                v0.h(w10);
            }
        } else {
            w10 = v0.w();
            if (TextUtils.isEmpty(w10)) {
                w10 = lb.a.d("HiAnalytics_Sdk_Public_Sp_Key", l.b(v0.q(), "Privacy_MY", "public_key_oper", ""));
                v0.j(w10);
            }
        }
        if (!TextUtils.isEmpty(w10) && !b()) {
            return w10;
        }
        a(str, str2);
        return null;
    }

    private static void e(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("publicKey");
            String optString2 = jSONObject.optString("publicKeyOM");
            String optString3 = jSONObject.optString("pubkey_version");
            String str3 = System.currentTimeMillis() + "";
            String optString4 = jSONObject.optString("timeInterval");
            l.g(v0.q(), "Privacy_MY", "public_key_oper", lb.a.g("HiAnalytics_Sdk_Public_Sp_Key", optString));
            l.g(v0.q(), "Privacy_MY", "public_key_maint", lb.a.g("HiAnalytics_Sdk_Public_Sp_Key", optString2));
            l.g(v0.q(), "Privacy_MY", "public_key_time_interval", optString4);
            l.g(v0.q(), "Privacy_MY", "public_key_version", optString3);
            l.g(v0.q(), "Privacy_MY", "public_key_time_last", str3);
            v0.j(optString);
            v0.h(optString2);
            v0.n(optString3);
            v0.f(str3);
            v0.l(optString4);
        } catch (JSONException e10) {
            f1.l("GetPublicKey", "get pubKey parse json JSONException :" + e10.getMessage());
        }
    }
}
