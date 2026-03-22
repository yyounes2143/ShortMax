package ip;

import java.io.IOException;
/* compiled from: TsDurationReader.java */
/* loaded from: classes8.dex */
final class i0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f59764a;

    /* renamed from: d  reason: collision with root package name */
    private boolean f59767d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f59768e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f59769f;

    /* renamed from: b  reason: collision with root package name */
    private final cn.h0 f59765b = new cn.h0(0);

    /* renamed from: g  reason: collision with root package name */
    private long f59770g = -9223372036854775807L;

    /* renamed from: h  reason: collision with root package name */
    private long f59771h = -9223372036854775807L;

    /* renamed from: i  reason: collision with root package name */
    private long f59772i = -9223372036854775807L;

    /* renamed from: c  reason: collision with root package name */
    private final cn.b0 f59766c = new cn.b0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public i0(int i10) {
        this.f59764a = i10;
    }

    private int a(ao.q qVar) {
        this.f59766c.T(cn.m0.f3619f);
        this.f59767d = true;
        qVar.resetPeekPosition();
        return 0;
    }

    private int f(ao.q qVar, ao.i0 i0Var, int i10) throws IOException {
        int min = (int) Math.min(this.f59764a, qVar.getLength());
        long j10 = 0;
        if (qVar.getPosition() != j10) {
            i0Var.f1855a = j10;
            return 1;
        }
        this.f59766c.S(min);
        qVar.resetPeekPosition();
        qVar.peekFully(this.f59766c.e(), 0, min);
        this.f59770g = g(this.f59766c, i10);
        this.f59768e = true;
        return 0;
    }

    private long g(cn.b0 b0Var, int i10) {
        int g10 = b0Var.g();
        for (int f10 = b0Var.f(); f10 < g10; f10++) {
            if (b0Var.e()[f10] == 71) {
                long c10 = m0.c(b0Var, f10, i10);
                if (c10 != -9223372036854775807L) {
                    return c10;
                }
            }
        }
        return -9223372036854775807L;
    }

    private int h(ao.q qVar, ao.i0 i0Var, int i10) throws IOException {
        long length = qVar.getLength();
        int min = (int) Math.min(this.f59764a, length);
        long j10 = length - min;
        if (qVar.getPosition() != j10) {
            i0Var.f1855a = j10;
            return 1;
        }
        this.f59766c.S(min);
        qVar.resetPeekPosition();
        qVar.peekFully(this.f59766c.e(), 0, min);
        this.f59771h = i(this.f59766c, i10);
        this.f59769f = true;
        return 0;
    }

    private long i(cn.b0 b0Var, int i10) {
        int f10 = b0Var.f();
        int g10 = b0Var.g();
        for (int i11 = g10 - 188; i11 >= f10; i11--) {
            if (m0.b(b0Var.e(), f10, g10, i11)) {
                long c10 = m0.c(b0Var, i11, i10);
                if (c10 != -9223372036854775807L) {
                    return c10;
                }
            }
        }
        return -9223372036854775807L;
    }

    public long b() {
        return this.f59772i;
    }

    public cn.h0 c() {
        return this.f59765b;
    }

    public boolean d() {
        return this.f59767d;
    }

    public int e(ao.q qVar, ao.i0 i0Var, int i10) throws IOException {
        if (i10 <= 0) {
            return a(qVar);
        }
        if (!this.f59769f) {
            return h(qVar, i0Var, i10);
        }
        if (this.f59771h == -9223372036854775807L) {
            return a(qVar);
        }
        if (!this.f59768e) {
            return f(qVar, i0Var, i10);
        }
        long j10 = this.f59770g;
        if (j10 == -9223372036854775807L) {
            return a(qVar);
        }
        this.f59772i = this.f59765b.c(this.f59771h) - this.f59765b.b(j10);
        return a(qVar);
    }
}
