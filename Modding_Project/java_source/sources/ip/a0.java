package ip;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
/* compiled from: PsDurationReader.java */
/* loaded from: classes8.dex */
final class a0 {

    /* renamed from: c  reason: collision with root package name */
    private boolean f59649c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f59650d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f59651e;

    /* renamed from: a  reason: collision with root package name */
    private final cn.h0 f59647a = new cn.h0(0);

    /* renamed from: f  reason: collision with root package name */
    private long f59652f = -9223372036854775807L;

    /* renamed from: g  reason: collision with root package name */
    private long f59653g = -9223372036854775807L;

    /* renamed from: h  reason: collision with root package name */
    private long f59654h = -9223372036854775807L;

    /* renamed from: b  reason: collision with root package name */
    private final cn.b0 f59648b = new cn.b0();

    private static boolean a(byte[] bArr) {
        if ((bArr[0] & 196) != 68 || (bArr[2] & 4) != 4 || (bArr[4] & 4) != 4 || (bArr[5] & 1) != 1 || (bArr[8] & 3) != 3) {
            return false;
        }
        return true;
    }

    private int b(ao.q qVar) {
        this.f59648b.T(cn.m0.f3619f);
        this.f59649c = true;
        qVar.resetPeekPosition();
        return 0;
    }

    private int f(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
    }

    private int h(ao.q qVar, ao.i0 i0Var) throws IOException {
        int min = (int) Math.min(20000L, qVar.getLength());
        long j10 = 0;
        if (qVar.getPosition() != j10) {
            i0Var.f1855a = j10;
            return 1;
        }
        this.f59648b.S(min);
        qVar.resetPeekPosition();
        qVar.peekFully(this.f59648b.e(), 0, min);
        this.f59652f = i(this.f59648b);
        this.f59650d = true;
        return 0;
    }

    private long i(cn.b0 b0Var) {
        int g10 = b0Var.g();
        for (int f10 = b0Var.f(); f10 < g10 - 3; f10++) {
            if (f(b0Var.e(), f10) == 442) {
                b0Var.W(f10 + 4);
                long l10 = l(b0Var);
                if (l10 != -9223372036854775807L) {
                    return l10;
                }
            }
        }
        return -9223372036854775807L;
    }

    private int j(ao.q qVar, ao.i0 i0Var) throws IOException {
        long length = qVar.getLength();
        int min = (int) Math.min(20000L, length);
        long j10 = length - min;
        if (qVar.getPosition() != j10) {
            i0Var.f1855a = j10;
            return 1;
        }
        this.f59648b.S(min);
        qVar.resetPeekPosition();
        qVar.peekFully(this.f59648b.e(), 0, min);
        this.f59653g = k(this.f59648b);
        this.f59651e = true;
        return 0;
    }

    private long k(cn.b0 b0Var) {
        int f10 = b0Var.f();
        for (int g10 = b0Var.g() - 4; g10 >= f10; g10--) {
            if (f(b0Var.e(), g10) == 442) {
                b0Var.W(g10 + 4);
                long l10 = l(b0Var);
                if (l10 != -9223372036854775807L) {
                    return l10;
                }
            }
        }
        return -9223372036854775807L;
    }

    public static long l(cn.b0 b0Var) {
        int f10 = b0Var.f();
        if (b0Var.a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        b0Var.l(bArr, 0, 9);
        b0Var.W(f10);
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
        return this.f59654h;
    }

    public cn.h0 d() {
        return this.f59647a;
    }

    public boolean e() {
        return this.f59649c;
    }

    public int g(ao.q qVar, ao.i0 i0Var) throws IOException {
        if (!this.f59651e) {
            return j(qVar, i0Var);
        }
        if (this.f59653g == -9223372036854775807L) {
            return b(qVar);
        }
        if (!this.f59650d) {
            return h(qVar, i0Var);
        }
        long j10 = this.f59652f;
        if (j10 == -9223372036854775807L) {
            return b(qVar);
        }
        this.f59654h = this.f59647a.c(this.f59653g) - this.f59647a.b(j10);
        return b(qVar);
    }
}
