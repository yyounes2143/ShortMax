package d6;

import b7.o0;
import b7.s0;
import java.io.IOException;
/* compiled from: TsDurationReader.java */
/* loaded from: classes4.dex */
final class f0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f49895a;

    /* renamed from: d  reason: collision with root package name */
    private boolean f49898d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f49899e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f49900f;

    /* renamed from: b  reason: collision with root package name */
    private final o0 f49896b = new o0(0);

    /* renamed from: g  reason: collision with root package name */
    private long f49901g = -9223372036854775807L;

    /* renamed from: h  reason: collision with root package name */
    private long f49902h = -9223372036854775807L;

    /* renamed from: i  reason: collision with root package name */
    private long f49903i = -9223372036854775807L;

    /* renamed from: c  reason: collision with root package name */
    private final b7.g0 f49897c = new b7.g0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(int i10) {
        this.f49895a = i10;
    }

    private int a(t5.l lVar) {
        this.f49897c.M(s0.f2511f);
        this.f49898d = true;
        lVar.resetPeekPosition();
        return 0;
    }

    private int f(t5.l lVar, t5.y yVar, int i10) throws IOException {
        int min = (int) Math.min(this.f49895a, lVar.getLength());
        long j10 = 0;
        if (lVar.getPosition() != j10) {
            yVar.f67204a = j10;
            return 1;
        }
        this.f49897c.L(min);
        lVar.resetPeekPosition();
        lVar.peekFully(this.f49897c.d(), 0, min);
        this.f49901g = g(this.f49897c, i10);
        this.f49899e = true;
        return 0;
    }

    private long g(b7.g0 g0Var, int i10) {
        int f10 = g0Var.f();
        for (int e10 = g0Var.e(); e10 < f10; e10++) {
            if (g0Var.d()[e10] == 71) {
                long c10 = j0.c(g0Var, e10, i10);
                if (c10 != -9223372036854775807L) {
                    return c10;
                }
            }
        }
        return -9223372036854775807L;
    }

    private int h(t5.l lVar, t5.y yVar, int i10) throws IOException {
        long length = lVar.getLength();
        int min = (int) Math.min(this.f49895a, length);
        long j10 = length - min;
        if (lVar.getPosition() != j10) {
            yVar.f67204a = j10;
            return 1;
        }
        this.f49897c.L(min);
        lVar.resetPeekPosition();
        lVar.peekFully(this.f49897c.d(), 0, min);
        this.f49902h = i(this.f49897c, i10);
        this.f49900f = true;
        return 0;
    }

    private long i(b7.g0 g0Var, int i10) {
        int e10 = g0Var.e();
        int f10 = g0Var.f();
        for (int i11 = f10 - 188; i11 >= e10; i11--) {
            if (j0.b(g0Var.d(), e10, f10, i11)) {
                long c10 = j0.c(g0Var, i11, i10);
                if (c10 != -9223372036854775807L) {
                    return c10;
                }
            }
        }
        return -9223372036854775807L;
    }

    public long b() {
        return this.f49903i;
    }

    public o0 c() {
        return this.f49896b;
    }

    public boolean d() {
        return this.f49898d;
    }

    public int e(t5.l lVar, t5.y yVar, int i10) throws IOException {
        if (i10 <= 0) {
            return a(lVar);
        }
        if (!this.f49900f) {
            return h(lVar, yVar, i10);
        }
        if (this.f49902h == -9223372036854775807L) {
            return a(lVar);
        }
        if (!this.f49899e) {
            return f(lVar, yVar, i10);
        }
        long j10 = this.f49901g;
        if (j10 == -9223372036854775807L) {
            return a(lVar);
        }
        long b10 = this.f49896b.b(this.f49902h) - this.f49896b.b(j10);
        this.f49903i = b10;
        if (b10 < 0) {
            b7.q.i("TsDurationReader", "Invalid duration: " + this.f49903i + ". Using TIME_UNSET instead.");
            this.f49903i = -9223372036854775807L;
        }
        return a(lVar);
    }
}
