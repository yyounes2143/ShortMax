package d6;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.v0;
import d6.i0;
/* compiled from: DtsReader.java */
/* loaded from: classes4.dex */
public final class k implements m {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f49981b;

    /* renamed from: c  reason: collision with root package name */
    private String f49982c;

    /* renamed from: d  reason: collision with root package name */
    private t5.b0 f49983d;

    /* renamed from: f  reason: collision with root package name */
    private int f49985f;

    /* renamed from: g  reason: collision with root package name */
    private int f49986g;

    /* renamed from: h  reason: collision with root package name */
    private long f49987h;

    /* renamed from: i  reason: collision with root package name */
    private v0 f49988i;

    /* renamed from: j  reason: collision with root package name */
    private int f49989j;

    /* renamed from: a  reason: collision with root package name */
    private final b7.g0 f49980a = new b7.g0(new byte[18]);

    /* renamed from: e  reason: collision with root package name */
    private int f49984e = 0;

    /* renamed from: k  reason: collision with root package name */
    private long f49990k = -9223372036854775807L;

    public k(@Nullable String str) {
        this.f49981b = str;
    }

    private boolean a(b7.g0 g0Var, byte[] bArr, int i10) {
        int min = Math.min(g0Var.a(), i10 - this.f49985f);
        g0Var.j(bArr, this.f49985f, min);
        int i11 = this.f49985f + min;
        this.f49985f = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private void e() {
        byte[] d10 = this.f49980a.d();
        if (this.f49988i == null) {
            v0 g10 = q5.f0.g(d10, this.f49982c, this.f49981b, null);
            this.f49988i = g10;
            this.f49983d.b(g10);
        }
        this.f49989j = q5.f0.a(d10);
        this.f49987h = (int) ((q5.f0.f(d10) * 1000000) / this.f49988i.f19171z);
    }

    private boolean f(b7.g0 g0Var) {
        while (g0Var.a() > 0) {
            int i10 = this.f49986g << 8;
            this.f49986g = i10;
            int D = i10 | g0Var.D();
            this.f49986g = D;
            if (q5.f0.d(D)) {
                byte[] d10 = this.f49980a.d();
                int i11 = this.f49986g;
                d10[0] = (byte) ((i11 >> 24) & 255);
                d10[1] = (byte) ((i11 >> 16) & 255);
                d10[2] = (byte) ((i11 >> 8) & 255);
                d10[3] = (byte) (i11 & 255);
                this.f49985f = 4;
                this.f49986g = 0;
                return true;
            }
        }
        return false;
    }

    @Override // d6.m
    public void b(b7.g0 g0Var) {
        b7.a.i(this.f49983d);
        while (g0Var.a() > 0) {
            int i10 = this.f49984e;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        int min = Math.min(g0Var.a(), this.f49989j - this.f49985f);
                        this.f49983d.a(g0Var, min);
                        int i11 = this.f49985f + min;
                        this.f49985f = i11;
                        int i12 = this.f49989j;
                        if (i11 == i12) {
                            long j10 = this.f49990k;
                            if (j10 != -9223372036854775807L) {
                                this.f49983d.e(j10, 1, i12, 0, null);
                                this.f49990k += this.f49987h;
                            }
                            this.f49984e = 0;
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (a(g0Var, this.f49980a.d(), 18)) {
                    e();
                    this.f49980a.P(0);
                    this.f49983d.a(this.f49980a, 18);
                    this.f49984e = 2;
                }
            } else if (f(g0Var)) {
                this.f49984e = 1;
            }
        }
    }

    @Override // d6.m
    public void c(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f49990k = j10;
        }
    }

    @Override // d6.m
    public void d(t5.m mVar, i0.d dVar) {
        dVar.a();
        this.f49982c = dVar.b();
        this.f49983d = mVar.track(dVar.c(), 1);
    }

    @Override // d6.m
    public void seek() {
        this.f49984e = 0;
        this.f49985f = 0;
        this.f49986g = 0;
        this.f49990k = -9223372036854775807L;
    }

    @Override // d6.m
    public void packetFinished() {
    }
}
