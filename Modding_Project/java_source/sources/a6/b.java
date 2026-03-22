package a6;

import b7.r;
import b7.s0;
import t5.a0;
import t5.z;
/* compiled from: IndexSeeker.java */
/* loaded from: classes4.dex */
final class b implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long f135a;

    /* renamed from: b  reason: collision with root package name */
    private final r f136b;

    /* renamed from: c  reason: collision with root package name */
    private final r f137c;

    /* renamed from: d  reason: collision with root package name */
    private long f138d;

    public b(long j10, long j11, long j12) {
        this.f138d = j10;
        this.f135a = j12;
        r rVar = new r();
        this.f136b = rVar;
        r rVar2 = new r();
        this.f137c = rVar2;
        rVar.a(0L);
        rVar2.a(j11);
    }

    @Override // a6.g
    public long a() {
        return this.f135a;
    }

    public boolean b(long j10) {
        r rVar = this.f136b;
        if (j10 - rVar.b(rVar.c() - 1) < 100000) {
            return true;
        }
        return false;
    }

    public void c(long j10, long j11) {
        if (b(j10)) {
            return;
        }
        this.f136b.a(j10);
        this.f137c.a(j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(long j10) {
        this.f138d = j10;
    }

    @Override // t5.z
    public long getDurationUs() {
        return this.f138d;
    }

    @Override // t5.z
    public z.a getSeekPoints(long j10) {
        int f10 = s0.f(this.f136b, j10, true, true);
        a0 a0Var = new a0(this.f136b.b(f10), this.f137c.b(f10));
        if (a0Var.f67098a != j10 && f10 != this.f136b.c() - 1) {
            int i10 = f10 + 1;
            return new z.a(a0Var, new a0(this.f136b.b(i10), this.f137c.b(i10)));
        }
        return new z.a(a0Var);
    }

    @Override // a6.g
    public long getTimeUs(long j10) {
        return this.f136b.b(s0.f(this.f137c, j10, true, true));
    }

    @Override // t5.z
    public boolean isSeekable() {
        return true;
    }
}
