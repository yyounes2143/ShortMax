package ip;

import ao.o0;
import io.bidmachine.media3.common.a;
import ip.l0;
/* compiled from: PassthroughSectionPayloadReader.java */
/* loaded from: classes8.dex */
public final class x implements d0 {

    /* renamed from: a  reason: collision with root package name */
    private io.bidmachine.media3.common.a f60051a;

    /* renamed from: b  reason: collision with root package name */
    private cn.h0 f60052b;

    /* renamed from: c  reason: collision with root package name */
    private o0 f60053c;

    public x(String str, String str2) {
        this.f60051a = new a.b().U(str2).u0(str).N();
    }

    private void c() {
        cn.a.i(this.f60052b);
        cn.m0.i(this.f60053c);
    }

    @Override // ip.d0
    public void a(cn.b0 b0Var) {
        c();
        long e10 = this.f60052b.e();
        long f10 = this.f60052b.f();
        if (e10 != -9223372036854775807L && f10 != -9223372036854775807L) {
            io.bidmachine.media3.common.a aVar = this.f60051a;
            if (f10 != aVar.f55179t) {
                io.bidmachine.media3.common.a N = aVar.b().y0(f10).N();
                this.f60051a = N;
                this.f60053c.g(N);
            }
            int a10 = b0Var.a();
            this.f60053c.a(b0Var, a10);
            this.f60053c.c(e10, 1, a10, 0, null);
        }
    }

    @Override // ip.d0
    public void b(cn.h0 h0Var, ao.r rVar, l0.d dVar) {
        this.f60052b = h0Var;
        dVar.a();
        o0 track = rVar.track(dVar.c(), 5);
        this.f60053c = track;
        track.g(this.f60051a);
    }
}
