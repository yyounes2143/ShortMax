package com.mbridge.msdk.foundation.same.net.utils;

import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.z0;
/* compiled from: HttpUtils.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27143a = "b";

    public static void a(e eVar, String str, String str2) {
        if (eVar != null) {
            try {
                if (!z0.a(str) && !z0.a(str2)) {
                    eVar.a(str, str2);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static void a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (str.startsWith(ProxyConfig.MATCH_HTTP)) {
                str = b1.a(str);
            }
            TextUtils.isEmpty(str);
        } catch (Throwable th2) {
            p0.b(f27143a, th2.getMessage());
        }
    }
}
