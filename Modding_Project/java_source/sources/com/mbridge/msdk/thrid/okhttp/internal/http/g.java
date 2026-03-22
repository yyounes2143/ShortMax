package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import java.io.IOException;
import java.util.List;
/* compiled from: RealInterceptorChain.java */
/* loaded from: classes6.dex */
public final class g implements r.a {

    /* renamed from: a  reason: collision with root package name */
    private final List<r> f29692a;

    /* renamed from: b  reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.internal.connection.g f29693b;

    /* renamed from: c  reason: collision with root package name */
    private final c f29694c;

    /* renamed from: d  reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.internal.connection.c f29695d;

    /* renamed from: e  reason: collision with root package name */
    private final int f29696e;

    /* renamed from: f  reason: collision with root package name */
    private final w f29697f;

    /* renamed from: g  reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.d f29698g;

    /* renamed from: h  reason: collision with root package name */
    private final n f29699h;

    /* renamed from: i  reason: collision with root package name */
    private final int f29700i;

    /* renamed from: j  reason: collision with root package name */
    private final int f29701j;

    /* renamed from: k  reason: collision with root package name */
    private final int f29702k;

    /* renamed from: l  reason: collision with root package name */
    private int f29703l;

    public g(List<r> list, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, c cVar, com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar2, int i10, w wVar, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar, int i11, int i12, int i13) {
        this.f29692a = list;
        this.f29695d = cVar2;
        this.f29693b = gVar;
        this.f29694c = cVar;
        this.f29696e = i10;
        this.f29697f = wVar;
        this.f29698g = dVar;
        this.f29699h = nVar;
        this.f29700i = i11;
        this.f29701j = i12;
        this.f29702k = i13;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r.a
    public int a() {
        return this.f29700i;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r.a
    public int b() {
        return this.f29701j;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r.a
    public int c() {
        return this.f29702k;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r.a
    public w d() {
        return this.f29697f;
    }

    public com.mbridge.msdk.thrid.okhttp.d e() {
        return this.f29698g;
    }

    public com.mbridge.msdk.thrid.okhttp.g f() {
        return this.f29695d;
    }

    public n g() {
        return this.f29699h;
    }

    public c h() {
        return this.f29694c;
    }

    public com.mbridge.msdk.thrid.okhttp.internal.connection.g i() {
        return this.f29693b;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r.a
    public y a(w wVar) throws IOException {
        return a(wVar, this.f29693b, this.f29694c, this.f29695d);
    }

    public y a(w wVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, c cVar, com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar2) throws IOException {
        if (this.f29696e < this.f29692a.size()) {
            this.f29703l++;
            if (this.f29694c != null && !this.f29695d.a(wVar.g())) {
                throw new IllegalStateException("network interceptor " + this.f29692a.get(this.f29696e - 1) + " must retain the same host and port");
            } else if (this.f29694c != null && this.f29703l > 1) {
                throw new IllegalStateException("network interceptor " + this.f29692a.get(this.f29696e - 1) + " must call proceed() exactly once");
            } else {
                g gVar2 = new g(this.f29692a, gVar, cVar, cVar2, this.f29696e + 1, wVar, this.f29698g, this.f29699h, this.f29700i, this.f29701j, this.f29702k);
                r rVar = this.f29692a.get(this.f29696e);
                y a10 = rVar.a(gVar2);
                if (cVar != null && this.f29696e + 1 < this.f29692a.size() && gVar2.f29703l != 1) {
                    throw new IllegalStateException("network interceptor " + rVar + " must call proceed() exactly once");
                } else if (a10 != null) {
                    if (a10.d() != null) {
                        return a10;
                    }
                    throw new IllegalStateException("interceptor " + rVar + " returned a response with no body");
                } else {
                    throw new NullPointerException("interceptor " + rVar + " returned null");
                }
            }
        }
        throw new AssertionError();
    }
}
