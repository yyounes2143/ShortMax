package hb;

import android.content.Context;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
/* loaded from: classes5.dex */
public abstract class y {
    public static String a(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(m1.a(str, str2))) {
            return m1.a(str, str2);
        }
        f1.h("hmsSdk", "getAndroidId(): to getConfigByType()");
        return c(context, str, str2);
    }

    public static String b(Context context, String str, String str2) {
        if (str2.equals("oper")) {
            return d(context, str, str2);
        }
        if (str2.equals("maint")) {
            return d(context, str, str2);
        }
        if (str2.equals("diffprivacy")) {
            return d(context, str, str2);
        }
        if (str2.equals("preins")) {
            return d(context, str, str2);
        }
        f1.m("hmsSdk", "getChannel(): Invalid type: " + str2);
        return "";
    }

    private static String c(Context context, String str, String str2) {
        if (m1.b(str, str2)) {
            if (TextUtils.isEmpty(v0.g())) {
                z0.e().d().e(com.huawei.hms.hatool.o.d(context));
            }
            return v0.g();
        }
        return "";
    }

    private static String d(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(c.e(str, str2))) {
            return c.e(str, str2);
        }
        t d10 = z0.e().d();
        if (TextUtils.isEmpty(d10.p())) {
            String h10 = com.huawei.hms.hatool.o.h(context);
            if (!n.c(AppsFlyerProperties.CHANNEL, h10, 256)) {
                h10 = "";
            }
            d10.m(h10);
        }
        return d10.p();
    }
}
