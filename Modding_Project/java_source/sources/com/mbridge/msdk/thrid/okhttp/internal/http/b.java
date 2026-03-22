package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okio.l;
import java.io.IOException;
import java.net.ProtocolException;
/* compiled from: CallServerInterceptor.java */
/* loaded from: classes6.dex */
public final class b implements r {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f29685a;

    /* compiled from: CallServerInterceptor.java */
    /* loaded from: classes6.dex */
    static final class a extends com.mbridge.msdk.thrid.okio.g {

        /* renamed from: b  reason: collision with root package name */
        long f29686b;

        a(com.mbridge.msdk.thrid.okio.r rVar) {
            super(rVar);
        }

        @Override // com.mbridge.msdk.thrid.okio.g, com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            super.a(cVar, j10);
            this.f29686b += j10;
        }
    }

    public b(boolean z10) {
        this.f29685a = z10;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r
    public y a(r.a aVar) throws IOException {
        y a10;
        g gVar = (g) aVar;
        c h10 = gVar.h();
        com.mbridge.msdk.thrid.okhttp.internal.connection.g i10 = gVar.i();
        com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar = (com.mbridge.msdk.thrid.okhttp.internal.connection.c) gVar.f();
        w d10 = gVar.d();
        long currentTimeMillis = System.currentTimeMillis();
        gVar.g().requestHeadersStart(gVar.e());
        h10.a(d10);
        gVar.g().requestHeadersEnd(gVar.e(), d10);
        y.a aVar2 = null;
        if (f.a(d10.e()) && d10.a() != null) {
            if ("100-continue".equalsIgnoreCase(d10.a("Expect"))) {
                h10.b();
                gVar.g().responseHeadersStart(gVar.e());
                aVar2 = h10.a(true);
            }
            if (aVar2 == null) {
                gVar.g().requestBodyStart(gVar.e());
                a aVar3 = new a(h10.a(d10, d10.a().a()));
                com.mbridge.msdk.thrid.okio.d a11 = l.a(aVar3);
                d10.a().a(a11);
                a11.close();
                gVar.g().requestBodyEnd(gVar.e(), aVar3.f29686b);
            } else if (!cVar.f()) {
                i10.e();
            }
        }
        h10.a();
        if (aVar2 == null) {
            gVar.g().responseHeadersStart(gVar.e());
            aVar2 = h10.a(false);
        }
        y a12 = aVar2.a(d10).a(i10.c().b()).b(currentTimeMillis).a(System.currentTimeMillis()).a();
        int k10 = a12.k();
        if (k10 == 100) {
            a12 = h10.a(false).a(d10).a(i10.c().b()).b(currentTimeMillis).a(System.currentTimeMillis()).a();
            k10 = a12.k();
        }
        gVar.g().responseHeadersEnd(gVar.e(), a12);
        if (this.f29685a && k10 == 101) {
            a10 = a12.o().a(com.mbridge.msdk.thrid.okhttp.internal.c.f29603c).a();
        } else {
            a10 = a12.o().a(h10.a(a12)).a();
        }
        if ("close".equalsIgnoreCase(a10.r().a("Connection")) || "close".equalsIgnoreCase(a10.b("Connection"))) {
            i10.e();
        }
        if ((k10 != 204 && k10 != 205) || a10.d().h() <= 0) {
            return a10;
        }
        throw new ProtocolException("HTTP " + k10 + " had non-zero Content-Length: " + a10.d().h());
    }
}
