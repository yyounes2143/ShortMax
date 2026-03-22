package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.applovin.shadow.okhttp3.internal.http2.Header;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.u;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okhttp.z;
import com.mbridge.msdk.thrid.okio.s;
import com.ss.texturerender.TextureRenderKeys;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* compiled from: Http2Codec.java */
/* loaded from: classes6.dex */
public final class f implements com.mbridge.msdk.thrid.okhttp.internal.http.c {

    /* renamed from: f  reason: collision with root package name */
    private static final List<String> f29786f = com.mbridge.msdk.thrid.okhttp.internal.c.a("connection", TextureRenderKeys.KEY_IS_BMF_VQSCORE_HOST, "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", Header.TARGET_METHOD_UTF8, Header.TARGET_PATH_UTF8, Header.TARGET_SCHEME_UTF8, Header.TARGET_AUTHORITY_UTF8);

    /* renamed from: g  reason: collision with root package name */
    private static final List<String> f29787g = com.mbridge.msdk.thrid.okhttp.internal.c.a("connection", TextureRenderKeys.KEY_IS_BMF_VQSCORE_HOST, "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* renamed from: a  reason: collision with root package name */
    private final r.a f29788a;

    /* renamed from: b  reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.internal.connection.g f29789b;

    /* renamed from: c  reason: collision with root package name */
    private final g f29790c;

    /* renamed from: d  reason: collision with root package name */
    private i f29791d;

    /* renamed from: e  reason: collision with root package name */
    private final u f29792e;

    /* compiled from: Http2Codec.java */
    /* loaded from: classes6.dex */
    class a extends com.mbridge.msdk.thrid.okio.h {

        /* renamed from: b  reason: collision with root package name */
        boolean f29793b;

        /* renamed from: c  reason: collision with root package name */
        long f29794c;

        a(s sVar) {
            super(sVar);
            this.f29793b = false;
            this.f29794c = 0L;
        }

        private void a(IOException iOException) {
            if (this.f29793b) {
                return;
            }
            this.f29793b = true;
            f fVar = f.this;
            fVar.f29789b.a(false, fVar, this.f29794c, iOException);
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            try {
                long b10 = d().b(cVar, j10);
                if (b10 > 0) {
                    this.f29794c += b10;
                }
                return b10;
            } catch (IOException e10) {
                a(e10);
                throw e10;
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.h, com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            a(null);
        }
    }

    public f(t tVar, r.a aVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, g gVar2) {
        this.f29788a = aVar;
        this.f29789b = gVar;
        this.f29790c = gVar2;
        List<u> u10 = tVar.u();
        u uVar = u.H2_PRIOR_KNOWLEDGE;
        this.f29792e = u10.contains(uVar) ? uVar : u.HTTP_2;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public com.mbridge.msdk.thrid.okio.r a(w wVar, long j10) {
        return this.f29791d.d();
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void b() throws IOException {
        this.f29790c.flush();
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void cancel() {
        i iVar = this.f29791d;
        if (iVar != null) {
            iVar.c(b.CANCEL);
        }
    }

    public static List<c> b(w wVar) {
        p c10 = wVar.c();
        ArrayList arrayList = new ArrayList(c10.b() + 4);
        arrayList.add(new c(c.f29755f, wVar.e()));
        arrayList.add(new c(c.f29756g, com.mbridge.msdk.thrid.okhttp.internal.http.i.a(wVar.g())));
        String a10 = wVar.a("Host");
        if (a10 != null) {
            arrayList.add(new c(c.f29758i, a10));
        }
        arrayList.add(new c(c.f29757h, wVar.g().l()));
        int b10 = c10.b();
        for (int i10 = 0; i10 < b10; i10++) {
            com.mbridge.msdk.thrid.okio.f c11 = com.mbridge.msdk.thrid.okio.f.c(c10.a(i10).toLowerCase(Locale.US));
            if (!f29786f.contains(c11.h())) {
                arrayList.add(new c(c11, c10.b(i10)));
            }
        }
        return arrayList;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void a(w wVar) throws IOException {
        if (this.f29791d != null) {
            return;
        }
        i a10 = this.f29790c.a(b(wVar), wVar.a() != null);
        this.f29791d = a10;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        a10.h().a(this.f29788a.b(), timeUnit);
        this.f29791d.l().a(this.f29788a.c(), timeUnit);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void a() throws IOException {
        this.f29791d.d().close();
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public y.a a(boolean z10) throws IOException {
        y.a a10 = a(this.f29791d.j(), this.f29792e);
        if (z10 && com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(a10) == 100) {
            return null;
        }
        return a10;
    }

    public static y.a a(p pVar, u uVar) throws IOException {
        p.a aVar = new p.a();
        int b10 = pVar.b();
        com.mbridge.msdk.thrid.okhttp.internal.http.k kVar = null;
        for (int i10 = 0; i10 < b10; i10++) {
            String a10 = pVar.a(i10);
            String b11 = pVar.b(i10);
            if (a10.equals(Header.RESPONSE_STATUS_UTF8)) {
                kVar = com.mbridge.msdk.thrid.okhttp.internal.http.k.a("HTTP/1.1 " + b11);
            } else if (!f29787g.contains(a10)) {
                com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(aVar, a10, b11);
            }
        }
        if (kVar != null) {
            return new y.a().a(uVar).a(kVar.f29713b).a(kVar.f29714c).a(aVar.a());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public z a(y yVar) throws IOException {
        com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = this.f29789b;
        gVar.f29674f.responseBodyStart(gVar.f29673e);
        return new com.mbridge.msdk.thrid.okhttp.internal.http.h(yVar.b(CommonGatewayClient.HEADER_CONTENT_TYPE), com.mbridge.msdk.thrid.okhttp.internal.http.e.a(yVar), com.mbridge.msdk.thrid.okio.l.a(new a(this.f29791d.e())));
    }
}
