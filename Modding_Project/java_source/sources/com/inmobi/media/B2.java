package com.inmobi.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.webkit.WebResourceResponse;
import android.widget.RelativeLayout;
import androidx.webkit.ProxyConfig;
import java.io.InputStream;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
/* loaded from: classes5.dex */
public abstract class B2 {
    public static final boolean a(String str) {
        return str != null && str.length() > 0;
    }

    public static final int b(float f10) {
        try {
            return bt.a.c(f10);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static final int c(float f10) {
        try {
            return (int) (f10 / U3.b());
        } catch (Exception unused) {
            return 0;
        }
    }

    public static final boolean a(JSONArray jSONArray) {
        Intrinsics.checkNotNullParameter(jSONArray, "<this>");
        return jSONArray.length() == 0;
    }

    public static final WebResourceResponse a(InputStream inputStream, String mimeType) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        Map f10 = kotlin.collections.p0.f(ms.k.a("Access-Control-Allow-Origin", ProxyConfig.MATCH_ALL_SCHEMES));
        if (L3.G()) {
            return new WebResourceResponse(mimeType, "UTF-8", 200, "OK", f10, inputStream);
        }
        return new WebResourceResponse(mimeType, "UTF-8", inputStream);
    }

    public static final int a(int i10) {
        try {
            return (int) (i10 / U3.b());
        } catch (Exception unused) {
            return i10;
        }
    }

    public static final float a(float f10) {
        return bt.a.c(f10 * 10.0f) / 10.0f;
    }

    public static final Intent a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter filter) {
        Intent registerReceiver;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(filter, "filter");
        if (L3.f23796a.B()) {
            registerReceiver = context.registerReceiver(broadcastReceiver, filter, 2);
            return registerReceiver;
        }
        return context.registerReceiver(broadcastReceiver, filter);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0031 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean a(android.content.Context r4) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            com.inmobi.media.L3 r0 = com.inmobi.media.L3.f23796a
            boolean r0 = r0.D()
            r1 = 0
            if (r0 == 0) goto L32
            android.content.pm.PackageManager r0 = r4.getPackageManager()     // Catch: java.lang.Exception -> L2c
            java.lang.String r4 = r4.getPackageName()     // Catch: java.lang.Exception -> L2c
            r2 = 0
            android.content.pm.PackageManager$PackageInfoFlags r2 = com.appsflyer.internal.p.a(r2)     // Catch: java.lang.Exception -> L2c
            android.content.pm.PackageInfo r4 = com.appsflyer.internal.q.a(r0, r4, r2)     // Catch: java.lang.Exception -> L2c
            java.lang.String r0 = "getPackageInfo(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r0)     // Catch: java.lang.Exception -> L2c
            android.content.pm.ApplicationInfo r4 = r4.applicationInfo     // Catch: java.lang.Exception -> L2c
            if (r4 == 0) goto L2c
            int r4 = r4.targetSdkVersion     // Catch: java.lang.Exception -> L2c
            goto L2d
        L2c:
            r4 = -1
        L2d:
            r0 = 35
            if (r4 < r0) goto L32
            r1 = 1
        L32:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.B2.a(android.content.Context):boolean");
    }

    public static final void a(Cf cf2, RelativeLayout.LayoutParams layoutParams, EnumC3115pa orientation) {
        Intrinsics.checkNotNullParameter(cf2, "<this>");
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        cf2.getClass();
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Bf bf2 = (Bf) cf2.f23553a.get(orientation);
        int i10 = bf2 != null ? bf2.f23521a : 0;
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Bf bf3 = (Bf) cf2.f23553a.get(orientation);
        int i11 = bf3 != null ? bf3.f23523c : 0;
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Bf bf4 = (Bf) cf2.f23553a.get(orientation);
        layoutParams.setMargins(i10, 0, i11, bf4 != null ? bf4.f23524d : 0);
    }
}
