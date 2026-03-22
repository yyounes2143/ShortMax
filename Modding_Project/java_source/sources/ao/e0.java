package ao;

import ao.j0;
/* compiled from: IndexSeekMap.java */
/* loaded from: classes8.dex */
public final class e0 implements j0 {

    /* renamed from: a  reason: collision with root package name */
    private final cn.s f1818a;

    /* renamed from: b  reason: collision with root package name */
    private final cn.s f1819b;

    /* renamed from: c  reason: collision with root package name */
    private long f1820c;

    public e0(long[] jArr, long[] jArr2, long j10) {
        boolean z10;
        if (jArr.length == jArr2.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        int length = jArr2.length;
        if (length > 0 && jArr2[0] > 0) {
            int i10 = length + 1;
            cn.s sVar = new cn.s(i10);
            this.f1818a = sVar;
            cn.s sVar2 = new cn.s(i10);
            this.f1819b = sVar2;
            sVar.a(0L);
            sVar2.a(0L);
        } else {
            this.f1818a = new cn.s(length);
            this.f1819b = new cn.s(length);
        }
        this.f1818a.b(jArr);
        this.f1819b.b(jArr2);
        this.f1820c = j10;
    }

    public void b(long j10, long j11) {
        if (this.f1819b.d() == 0 && j10 > 0) {
            this.f1818a.a(0L);
            this.f1819b.a(0L);
        }
        this.f1818a.a(j11);
        this.f1819b.a(j10);
    }

    public boolean c(long j10, long j11) {
        if (this.f1819b.d() == 0) {
            return false;
        }
        cn.s sVar = this.f1819b;
        if (j10 - sVar.c(sVar.d() - 1) >= j11) {
            return false;
        }
        return true;
    }

    public void d(long j10) {
        this.f1820c = j10;
    }

    @Override // ao.j0
    public long getDurationUs() {
        return this.f1820c;
    }

    @Override // ao.j0
    public j0.a getSeekPoints(long j10) {
        if (this.f1819b.d() == 0) {
            return new j0.a(k0.f1860c);
        }
        int e10 = cn.m0.e(this.f1819b, j10, true, true);
        k0 k0Var = new k0(this.f1819b.c(e10), this.f1818a.c(e10));
        if (k0Var.f1861a != j10 && e10 != this.f1819b.d() - 1) {
            int i10 = e10 + 1;
            return new j0.a(k0Var, new k0(this.f1819b.c(i10), this.f1818a.c(i10)));
        }
        return new j0.a(k0Var);
    }

    public long getTimeUs(long j10) {
        if (this.f1819b.d() == 0) {
            return -9223372036854775807L;
        }
        return this.f1819b.c(cn.m0.e(this.f1818a, j10, true, true));
    }

    @Override // ao.j0
    public boolean isSeekable() {
        if (this.f1819b.d() > 0) {
            return true;
        }
        return false;
    }
}
