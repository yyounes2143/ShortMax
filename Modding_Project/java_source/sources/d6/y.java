package d6;

import b7.o0;
import b7.s0;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
/* compiled from: PsDurationReader.java */
/* loaded from: classes4.dex */
final class y {

    /* renamed from: c  reason: collision with root package name */
    private boolean f50186c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f50187d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f50188e;

    /* renamed from: a  reason: collision with root package name */
    private final o0 f50184a = new o0(0);

    /* renamed from: f  reason: collision with root package name */
    private long f50189f = -9223372036854775807L;

    /* renamed from: g  reason: collision with root package name */
    private long f50190g = -9223372036854775807L;

    /* renamed from: h  reason: collision with root package name */
    private long f50191h = -9223372036854775807L;

    /* renamed from: b  reason: collision with root package name */
    private final b7.g0 f50185b = new b7.g0();

    private static boolean a(byte[] bArr) {
        if ((bArr[0] & 196) != 68 || (bArr[2] & 4) != 4 || (bArr[4] & 4) != 4 || (bArr[5] & 1) != 1 || (bArr[8] & 3) != 3) {
            return false;
        }
        return true;
    }

    private int b(t5.l lVar) {
        this.f50185b.M(s0.f2511f);
        this.f50186c = true;
        lVar.resetPeekPosition();
        return 0;
    }

    private int f(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
    }

    private int h(t5.l lVar, t5.y yVar) throws IOException {
        int min = (int) Math.min(20000L, lVar.getLength());
        long j10 = 0;
        if (lVar.getPosition() != j10) {
            yVar.f67204a = j10;
            return 1;
        }
        this.f50185b.L(min);
        lVar.resetPeekPosition();
        lVar.peekFully(this.f50185b.d(), 0, min);
        this.f50189f = i(this.f50185b);
        this.f50187d = true;
        return 0;
    }

    private long i(b7.g0 g0Var) {
        int f10 = g0Var.f();
        for (int e10 = g0Var.e(); e10 < f10 - 3; e10++) {
            if (f(g0Var.d(), e10) == 442) {
                g0Var.P(e10 + 4);
                long l10 = l(g0Var);
                if (l10 != -9223372036854775807L) {
                    return l10;
                }
            }
        }
        return -9223372036854775807L;
    }

    private int j(t5.l lVar, t5.y yVar) throws IOException {
        long length = lVar.getLength();
        int min = (int) Math.min(20000L, length);
        long j10 = length - min;
        if (lVar.getPosition() != j10) {
            yVar.f67204a = j10;
            return 1;
        }
        this.f50185b.L(min);
        lVar.resetPeekPosition();
        lVar.peekFully(this.f50185b.d(), 0, min);
        this.f50190g = k(this.f50185b);
        this.f50188e = true;
        return 0;
    }

    private long k(b7.g0 g0Var) {
        int e10 = g0Var.e();
        for (int f10 = g0Var.f() - 4; f10 >= e10; f10--) {
            if (f(g0Var.d(), f10) == 442) {
                g0Var.P(f10 + 4);
                long l10 = l(g0Var);
                if (l10 != -9223372036854775807L) {
                    return l10;
                }
            }
        }
        return -9223372036854775807L;
    }

    public static long l(b7.g0 g0Var) {
        int e10 = g0Var.e();
        if (g0Var.a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        g0Var.j(bArr, 0, 9);
        g0Var.P(e10);
        if (!a(bArr)) {
            return -9223372036854775807L;
        }
        return m(bArr);
    }

    private static long m(byte[] bArr) {
        byte b10 = bArr[0];
        byte b11 = bArr[2];
        return (((b10 & 56) >> 3) << 30) | ((b10 & 3) << 28) | ((bArr[1] & 255) << 20) | (((b11 & 248) >> 3) << 15) | ((b11 & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    public long c() {
        return this.f50191h;
    }

    public o0 d() {
        return this.f50184a;
    }

    public boolean e() {
        return this.f50186c;
    }

    public int g(t5.l lVar, t5.y yVar) throws IOException {
        if (!this.f50188e) {
            return j(lVar, yVar);
        }
        if (this.f50190g == -9223372036854775807L) {
            return b(lVar);
        }
        if (!this.f50187d) {
            return h(lVar, yVar);
        }
        long j10 = this.f50189f;
        if (j10 == -9223372036854775807L) {
            return b(lVar);
        }
        long b10 = this.f50184a.b(this.f50190g) - this.f50184a.b(j10);
        this.f50191h = b10;
        if (b10 < 0) {
            b7.q.i("PsDurationReader", "Invalid duration: " + this.f50191h + ". Using TIME_UNSET instead.");
            this.f50191h = -9223372036854775807L;
        }
        return b(lVar);
    }
}
