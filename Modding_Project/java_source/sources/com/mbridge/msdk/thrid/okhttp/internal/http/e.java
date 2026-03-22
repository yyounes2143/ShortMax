package com.mbridge.msdk.thrid.okhttp.internal.http;

import androidx.collection.SieveCacheKt;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.y;
import java.util.List;
/* compiled from: HttpHeaders.java */
/* loaded from: classes6.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final com.mbridge.msdk.thrid.okio.f f29690a = com.mbridge.msdk.thrid.okio.f.c("\"\\");

    /* renamed from: b  reason: collision with root package name */
    private static final com.mbridge.msdk.thrid.okio.f f29691b = com.mbridge.msdk.thrid.okio.f.c("\t ,=");

    public static long a(y yVar) {
        return a(yVar.m());
    }

    public static boolean b(y yVar) {
        if (yVar.r().e().equals("HEAD")) {
            return false;
        }
        int k10 = yVar.k();
        return (((k10 >= 100 && k10 < 200) || k10 == 204 || k10 == 304) && a(yVar) == -1 && !"chunked".equalsIgnoreCase(yVar.b("Transfer-Encoding"))) ? false : true;
    }

    public static long a(p pVar) {
        return a(pVar.b("Content-Length"));
    }

    private static long a(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static void a(com.mbridge.msdk.thrid.okhttp.k kVar, q qVar, p pVar) {
        if (kVar == com.mbridge.msdk.thrid.okhttp.k.f29972a) {
            return;
        }
        List<com.mbridge.msdk.thrid.okhttp.j> a10 = com.mbridge.msdk.thrid.okhttp.j.a(qVar, pVar);
        if (a10.isEmpty()) {
            return;
        }
        kVar.a(qVar, a10);
    }

    public static int b(String str, int i10) {
        char charAt;
        while (i10 < str.length() && ((charAt = str.charAt(i10)) == ' ' || charAt == '\t')) {
            i10++;
        }
        return i10;
    }

    public static int a(String str, int i10, String str2) {
        while (i10 < str.length() && str2.indexOf(str.charAt(i10)) == -1) {
            i10++;
        }
        return i10;
    }

    public static int a(String str, int i10) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > SieveCacheKt.NodeLinkMask) {
                return Integer.MAX_VALUE;
            }
            if (parseLong < 0) {
                return 0;
            }
            return (int) parseLong;
        } catch (NumberFormatException unused) {
            return i10;
        }
    }
}
