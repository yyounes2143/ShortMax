package d6;

import b7.o0;
import b7.s0;
import com.google.android.exoplayer2.v0;
import d6.i0;
/* compiled from: PassthroughSectionPayloadReader.java */
/* loaded from: classes4.dex */
public final class v implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private v0 f50167a;

    /* renamed from: b  reason: collision with root package name */
    private o0 f50168b;

    /* renamed from: c  reason: collision with root package name */
    private t5.b0 f50169c;

    public v(String str) {
        this.f50167a = new v0.b().e0(str).E();
    }

    private void c() {
        b7.a.i(this.f50168b);
        s0.j(this.f50169c);
    }

    @Override // d6.b0
    public void a(o0 o0Var, t5.m mVar, i0.d dVar) {
        this.f50168b = o0Var;
        dVar.a();
        t5.b0 track = mVar.track(dVar.c(), 5);
        this.f50169c = track;
        track.b(this.f50167a);
    }

    @Override // d6.b0
    public void b(b7.g0 g0Var) {
        c();
        long d10 = this.f50168b.d();
        long e10 = this.f50168b.e();
        if (d10 != -9223372036854775807L && e10 != -9223372036854775807L) {
            v0 v0Var = this.f50167a;
            if (e10 != v0Var.f19161p) {
                v0 E = v0Var.b().i0(e10).E();
                this.f50167a = E;
                this.f50169c.b(E);
            }
            int a10 = g0Var.a();
            this.f50169c.a(g0Var, a10);
            this.f50169c.e(d10, 1, a10, 0, null);
        }
    }
}
