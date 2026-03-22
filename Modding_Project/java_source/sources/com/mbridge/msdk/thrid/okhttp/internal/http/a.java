package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.x;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okio.l;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.IOException;
import java.util.List;
/* compiled from: BridgeInterceptor.java */
/* loaded from: classes6.dex */
public final class a implements r {

    /* renamed from: a  reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.k f29684a;

    public a(com.mbridge.msdk.thrid.okhttp.k kVar) {
        this.f29684a = kVar;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r
    public y a(r.a aVar) throws IOException {
        w d10 = aVar.d();
        w.a f10 = d10.f();
        x a10 = d10.a();
        if (a10 != null) {
            a10.b();
            long a11 = a10.a();
            if (a11 != -1) {
                f10.b("Content-Length", Long.toString(a11));
                f10.a("Transfer-Encoding");
            } else {
                f10.b("Transfer-Encoding", "chunked");
                f10.a("Content-Length");
            }
        }
        boolean z10 = false;
        if (d10.a("Host") == null) {
            f10.b("Host", com.mbridge.msdk.thrid.okhttp.internal.c.a(d10.g(), false));
        }
        if (d10.a("Connection") == null) {
            f10.b("Connection", "Keep-Alive");
        }
        if (d10.a("Accept-Encoding") == null && d10.a(Command.HTTP_HEADER_RANGE) == null) {
            f10.b("Accept-Encoding", "gzip");
            z10 = true;
        }
        List<com.mbridge.msdk.thrid.okhttp.j> a12 = this.f29684a.a(d10.g());
        if (!a12.isEmpty()) {
            f10.b("Cookie", a(a12));
        }
        if (d10.a(Command.HTTP_HEADER_USER_AGENT) == null) {
            f10.b(Command.HTTP_HEADER_USER_AGENT, com.mbridge.msdk.thrid.okhttp.internal.d.a());
        }
        y a13 = aVar.a(f10.a());
        e.a(this.f29684a, d10.g(), a13.m());
        y.a a14 = a13.o().a(d10);
        if (z10 && "gzip".equalsIgnoreCase(a13.b("Content-Encoding")) && e.b(a13)) {
            com.mbridge.msdk.thrid.okio.j jVar = new com.mbridge.msdk.thrid.okio.j(a13.d().k());
            a14.a(a13.m().a().b("Content-Encoding").b("Content-Length").a());
            a14.a(new h(a13.b(CommonGatewayClient.HEADER_CONTENT_TYPE), -1L, l.a(jVar)));
        }
        return a14.a();
    }

    private String a(List<com.mbridge.msdk.thrid.okhttp.j> list) {
        StringBuilder sb2 = new StringBuilder();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 > 0) {
                sb2.append("; ");
            }
            com.mbridge.msdk.thrid.okhttp.j jVar = list.get(i10);
            sb2.append(jVar.a());
            sb2.append('=');
            sb2.append(jVar.b());
        }
        return sb2.toString();
    }
}
