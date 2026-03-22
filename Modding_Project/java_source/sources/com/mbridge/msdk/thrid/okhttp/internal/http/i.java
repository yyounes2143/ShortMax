package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.w;
import java.net.Proxy;
/* compiled from: RequestLine.java */
/* loaded from: classes6.dex */
public final class i {
    public static String a(w wVar, Proxy.Type type) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(wVar.e());
        sb2.append(' ');
        if (b(wVar, type)) {
            sb2.append(wVar.g());
        } else {
            sb2.append(a(wVar.g()));
        }
        sb2.append(" HTTP/1.1");
        return sb2.toString();
    }

    private static boolean b(w wVar, Proxy.Type type) {
        if (!wVar.d() && type == Proxy.Type.HTTP) {
            return true;
        }
        return false;
    }

    public static String a(q qVar) {
        String c10 = qVar.c();
        String e10 = qVar.e();
        if (e10 != null) {
            return c10 + '?' + e10;
        }
        return c10;
    }
}
