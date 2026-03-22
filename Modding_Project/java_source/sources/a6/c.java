package a6;

import android.util.Pair;
import b7.s0;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import t5.a0;
import t5.z;
/* compiled from: MlltSeeker.java */
/* loaded from: classes4.dex */
final class c implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f139a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f140b;

    /* renamed from: c  reason: collision with root package name */
    private final long f141c;

    private c(long[] jArr, long[] jArr2, long j10) {
        this.f139a = jArr;
        this.f140b = jArr2;
        this.f141c = j10 == -9223372036854775807L ? s0.w0(jArr2[jArr2.length - 1]) : j10;
    }

    public static c b(long j10, MlltFrame mlltFrame, long j11) {
        int length = mlltFrame.f18062e.length;
        int i10 = length + 1;
        long[] jArr = new long[i10];
        long[] jArr2 = new long[i10];
        jArr[0] = j10;
        long j12 = 0;
        jArr2[0] = 0;
        for (int i11 = 1; i11 <= length; i11++) {
            int i12 = i11 - 1;
            j10 += mlltFrame.f18060c + mlltFrame.f18062e[i12];
            j12 += mlltFrame.f18061d + mlltFrame.f18063f[i12];
            jArr[i11] = j10;
            jArr2[i11] = j12;
        }
        return new c(jArr, jArr2, j11);
    }

    private static Pair<Long, Long> c(long j10, long[] jArr, long[] jArr2) {
        double d10;
        int i10 = s0.i(jArr, j10, true, true);
        long j11 = jArr[i10];
        long j12 = jArr2[i10];
        int i11 = i10 + 1;
        if (i11 == jArr.length) {
            return Pair.create(Long.valueOf(j11), Long.valueOf(j12));
        }
        long j13 = jArr[i11];
        long j14 = jArr2[i11];
        if (j13 == j11) {
            d10 = 0.0d;
        } else {
            d10 = (j10 - j11) / (j13 - j11);
        }
        return Pair.create(Long.valueOf(j10), Long.valueOf(((long) (d10 * (j14 - j12))) + j12));
    }

    @Override // a6.g
    public long a() {
        return -1L;
    }

    @Override // t5.z
    public long getDurationUs() {
        return this.f141c;
    }

    @Override // t5.z
    public z.a getSeekPoints(long j10) {
        Pair<Long, Long> c10 = c(s0.Q0(s0.q(j10, 0L, this.f141c)), this.f140b, this.f139a);
        return new z.a(new a0(s0.w0(((Long) c10.first).longValue()), ((Long) c10.second).longValue()));
    }

    @Override // a6.g
    public long getTimeUs(long j10) {
        return s0.w0(((Long) c(j10, this.f139a, this.f140b).second).longValue());
    }

    @Override // t5.z
    public boolean isSeekable() {
        return true;
    }
}
