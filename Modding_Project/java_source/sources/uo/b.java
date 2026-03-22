package uo;

import androidx.collection.SieveCacheKt;
import ao.e0;
import ao.j0;
import cn.m0;
import java.math.RoundingMode;
/* compiled from: IndexSeeker.java */
/* loaded from: classes8.dex */
final class b implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long f68519a;

    /* renamed from: b  reason: collision with root package name */
    private final int f68520b;

    /* renamed from: c  reason: collision with root package name */
    private final e0 f68521c;

    public b(long j10, long j11, long j12) {
        this.f68521c = new e0(new long[]{j11}, new long[]{0}, j10);
        this.f68519a = j12;
        int i10 = -2147483647;
        if (j10 != -9223372036854775807L) {
            long h12 = m0.h1(j11 - j12, 8L, j10, RoundingMode.HALF_UP);
            if (h12 > 0 && h12 <= SieveCacheKt.NodeLinkMask) {
                i10 = (int) h12;
            }
            this.f68520b = i10;
            return;
        }
        this.f68520b = -2147483647;
    }

    @Override // uo.g
    public long a() {
        return this.f68519a;
    }

    public boolean b(long j10) {
        return this.f68521c.c(j10, 100000L);
    }

    public void c(long j10, long j11) {
        if (b(j10)) {
            return;
        }
        this.f68521c.b(j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(long j10) {
        this.f68521c.d(j10);
    }

    @Override // uo.g
    public int g() {
        return this.f68520b;
    }

    @Override // ao.j0
    public long getDurationUs() {
        return this.f68521c.getDurationUs();
    }

    @Override // ao.j0
    public j0.a getSeekPoints(long j10) {
        return this.f68521c.getSeekPoints(j10);
    }

    @Override // uo.g
    public long getTimeUs(long j10) {
        return this.f68521c.getTimeUs(j10);
    }

    @Override // ao.j0
    public boolean isSeekable() {
        return this.f68521c.isSeekable();
    }
}
