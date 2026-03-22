package uo;

import android.util.Pair;
import ao.j0;
import ao.k0;
import cn.m0;
import po.l;
/* compiled from: MlltSeeker.java */
/* loaded from: classes8.dex */
final class c implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f68522a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f68523b;

    /* renamed from: c  reason: collision with root package name */
    private final long f68524c;

    private c(long[] jArr, long[] jArr2, long j10) {
        this.f68522a = jArr;
        this.f68523b = jArr2;
        this.f68524c = j10 == -9223372036854775807L ? m0.S0(jArr2[jArr2.length - 1]) : j10;
    }

    public static c b(long j10, l lVar, long j11) {
        int length = lVar.f64959e.length;
        int i10 = length + 1;
        long[] jArr = new long[i10];
        long[] jArr2 = new long[i10];
        jArr[0] = j10;
        long j12 = 0;
        jArr2[0] = 0;
        for (int i11 = 1; i11 <= length; i11++) {
            int i12 = i11 - 1;
            j10 += lVar.f64957c + lVar.f64959e[i12];
            j12 += lVar.f64958d + lVar.f64960f[i12];
            jArr[i11] = j10;
            jArr2[i11] = j12;
        }
        return new c(jArr, jArr2, j11);
    }

    private static Pair<Long, Long> c(long j10, long[] jArr, long[] jArr2) {
        double d10;
        int h10 = m0.h(jArr, j10, true, true);
        long j11 = jArr[h10];
        long j12 = jArr2[h10];
        int i10 = h10 + 1;
        if (i10 == jArr.length) {
            return Pair.create(Long.valueOf(j11), Long.valueOf(j12));
        }
        long j13 = jArr[i10];
        long j14 = jArr2[i10];
        if (j13 == j11) {
            d10 = 0.0d;
        } else {
            d10 = (j10 - j11) / (j13 - j11);
        }
        return Pair.create(Long.valueOf(j10), Long.valueOf(((long) (d10 * (j14 - j12))) + j12));
    }

    @Override // uo.g
    public long a() {
        return -1L;
    }

    @Override // uo.g
    public int g() {
        return -2147483647;
    }

    @Override // ao.j0
    public long getDurationUs() {
        return this.f68524c;
    }

    @Override // ao.j0
    public j0.a getSeekPoints(long j10) {
        Pair<Long, Long> c10 = c(m0.u1(m0.q(j10, 0L, this.f68524c)), this.f68523b, this.f68522a);
        return new j0.a(new k0(m0.S0(((Long) c10.first).longValue()), ((Long) c10.second).longValue()));
    }

    @Override // uo.g
    public long getTimeUs(long j10) {
        return m0.S0(((Long) c(j10, this.f68522a, this.f68523b).second).longValue());
    }

    @Override // ao.j0
    public boolean isSeekable() {
        return true;
    }
}
