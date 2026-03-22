package com.pgl.ssdk;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.adjust.sdk.Constants;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes6.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private static String f36837a;

    /* renamed from: b  reason: collision with root package name */
    private static long[][] f36838b;

    /* renamed from: c  reason: collision with root package name */
    private static String f36839c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TextUtils.isEmpty(w.f36839c)) {
                String unused = w.f36839c = w.b();
                x0.b(z.b(), "romtype", w.f36839c);
            }
        }
    }

    static /* synthetic */ String b() {
        return d();
    }

    public static JSONArray[] c(Context context) {
        if (f36838b == null) {
            f36838b = (long[][]) com.pgl.ssdk.ces.a.meta(157, context, null);
        }
        long[][] jArr = f36838b;
        if (jArr != null && jArr.length == 2) {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            long[][] jArr2 = f36838b;
            long[] jArr3 = jArr2[0];
            long[] jArr4 = jArr2[1];
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArray2 = new JSONArray();
            for (int i10 = 0; i10 < jArr3.length; i10++) {
                try {
                    jSONArray.put(i10, currentTimeMillis - jArr3[i10]);
                    jSONArray2.put(i10, currentTimeMillis - jArr4[i10]);
                } catch (JSONException unused) {
                }
            }
            return new JSONArray[]{jSONArray, jSONArray2};
        }
        f36838b = null;
        return null;
    }

    public static boolean d(Context context) {
        Object meta = com.pgl.ssdk.ces.a.meta(155, context, null);
        if (meta instanceof Boolean) {
            return ((Boolean) meta).booleanValue();
        }
        return false;
    }

    public static int e() {
        return ((Integer) com.pgl.ssdk.ces.a.meta(162, null, null)).intValue();
    }

    public static boolean b(Context context) {
        Object meta = com.pgl.ssdk.ces.a.meta(156, context, null);
        if (meta instanceof Boolean) {
            return ((Boolean) meta).booleanValue();
        }
        return false;
    }

    public static String a(Context context) {
        String str = f36837a;
        if (str != null) {
            return str;
        }
        String string = Settings.Global.getString(context.getContentResolver(), "boot_count");
        f36837a = string;
        return string;
    }

    private static String d() {
        return (b("com.samsung.android.knox.SemPersonaManager") || b("com.samsung.android.knoxguard.KnoxGuardManager")) ? Constants.REFERRER_API_SAMSUNG : (b("androidhnext.Manifest") || b("androidhnext.R")) ? "honor" : (b("androidhwext.Manifest") || b("androidhwext.R")) ? "huawei" : (b("oppo.Manifest") || b("oppo.R") || b("oplus.Manifest") || b("oplus.R") || b("com.oneplus.Manifest") || b("com.oneplus.R")) ? "oppo" : (b("vivo.Manifest") || b("vivo.R")) ? Constants.REFERRER_API_VIVO : (b("miui.Manifest") || b("miui.R") || b("miui.os.Build")) ? Constants.REFERRER_API_XIAOMI : (b("lineageos.platform.Manifest") || b("lineageos.platform.R")) ? "lineage" : c("/system/framework/com.motorola.motosignature.jar") ? "moto" : (c("/system/framework/transsion-framework.jar") || c("/system/framework/transsion-services.jar")) ? "transsion" : "other";
    }

    private static boolean b(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean c(String str) {
        try {
            return new File(str).exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String c() {
        if (!TextUtils.isEmpty(f36839c)) {
            return f36839c;
        }
        String a10 = x0.a(z.b(), "romtype", (String) null);
        f36839c = a10;
        if (!TextUtils.isEmpty(a10)) {
            return f36839c;
        }
        r0.b(new a());
        return "";
    }
}
