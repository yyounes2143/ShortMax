package com.mbridge.msdk.thrid.okhttp.internal.cache;

import com.mbridge.msdk.thrid.okhttp.internal.cache.b;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.u;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okhttp.z;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.IOException;
/* compiled from: CacheInterceptor.java */
/* loaded from: classes6.dex */
public final class a implements r {
    public a(c cVar) {
    }

    static boolean b(String str) {
        if (!"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str)) {
            return true;
        }
        return false;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r
    public y a(r.a aVar) throws IOException {
        b c10 = new b.a(System.currentTimeMillis(), aVar.d(), null).c();
        w wVar = c10.f29622a;
        y yVar = c10.f29623b;
        if (wVar == null && yVar == null) {
            return new y.a().a(aVar.d()).a(u.HTTP_1_1).a(504).a("Unsatisfiable Request (only-if-cached)").a(com.mbridge.msdk.thrid.okhttp.internal.c.f29603c).b(-1L).a(System.currentTimeMillis()).a();
        }
        if (wVar == null) {
            return yVar.o().a(a(yVar)).a();
        }
        y a10 = aVar.a(wVar);
        if (yVar != null) {
            if (a10.k() != 304) {
                com.mbridge.msdk.thrid.okhttp.internal.c.a(yVar.d());
            } else {
                yVar.o().a(a(yVar.m(), a10.m())).b(a10.s()).a(a10.q()).a(a(yVar)).c(a(a10)).a();
                a10.d().close();
                throw null;
            }
        }
        return a10.o().a(a(yVar)).c(a(a10)).a();
    }

    private static y a(y yVar) {
        return (yVar == null || yVar.d() == null) ? yVar : yVar.o().a((z) null).a();
    }

    private static p a(p pVar, p pVar2) {
        p.a aVar = new p.a();
        int b10 = pVar.b();
        for (int i10 = 0; i10 < b10; i10++) {
            String a10 = pVar.a(i10);
            String b11 = pVar.b(i10);
            if ((!"Warning".equalsIgnoreCase(a10) || !b11.startsWith("1")) && (a(a10) || !b(a10) || pVar2.b(a10) == null)) {
                com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(aVar, a10, b11);
            }
        }
        int b12 = pVar2.b();
        for (int i11 = 0; i11 < b12; i11++) {
            String a11 = pVar2.a(i11);
            if (!a(a11) && b(a11)) {
                com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(aVar, a11, pVar2.b(i11));
            }
        }
        return aVar.a();
    }

    static boolean a(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || CommonGatewayClient.HEADER_CONTENT_TYPE.equalsIgnoreCase(str);
    }
}
