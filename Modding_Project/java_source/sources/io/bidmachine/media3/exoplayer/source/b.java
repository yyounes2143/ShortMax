package io.bidmachine.media3.exoplayer.source;

import androidx.annotation.Nullable;
import cn.m0;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.source.ClippingMediaSource;
import io.bidmachine.media3.exoplayer.source.q;
import java.io.IOException;
/* compiled from: ClippingMediaPeriod.java */
/* loaded from: classes8.dex */
public final class b implements q, q.a {

    /* renamed from: a  reason: collision with root package name */
    public final q f56733a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private q.a f56734b;

    /* renamed from: c  reason: collision with root package name */
    private a[] f56735c = new a[0];

    /* renamed from: d  reason: collision with root package name */
    private long f56736d;

    /* renamed from: e  reason: collision with root package name */
    long f56737e;

    /* renamed from: f  reason: collision with root package name */
    long f56738f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private ClippingMediaSource.IllegalClippingException f56739g;

    /* compiled from: ClippingMediaPeriod.java */
    /* loaded from: classes8.dex */
    private final class a implements sn.s {

        /* renamed from: a  reason: collision with root package name */
        public final sn.s f56740a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f56741b;

        public a(sn.s sVar) {
            this.f56740a = sVar;
        }

        public void a() {
            this.f56741b = false;
        }

        @Override // sn.s
        public int c(gn.c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            if (b.this.j()) {
                return -3;
            }
            if (this.f56741b) {
                decoderInputBuffer.k(4);
                return -4;
            }
            long bufferedPositionUs = b.this.getBufferedPositionUs();
            int c10 = this.f56740a.c(c0Var, decoderInputBuffer, i10);
            if (c10 == -5) {
                io.bidmachine.media3.common.a aVar = (io.bidmachine.media3.common.a) cn.a.e(c0Var.f52440b);
                int i11 = aVar.H;
                if (i11 != 0 || aVar.I != 0) {
                    b bVar = b.this;
                    int i12 = 0;
                    if (bVar.f56737e != 0) {
                        i11 = 0;
                    }
                    if (bVar.f56738f == Long.MIN_VALUE) {
                        i12 = aVar.I;
                    }
                    c0Var.f52440b = aVar.b().Z(i11).a0(i12).N();
                }
                return -5;
            }
            long j10 = b.this.f56738f;
            if (j10 != Long.MIN_VALUE && ((c10 == -4 && decoderInputBuffer.f55347f >= j10) || (c10 == -3 && bufferedPositionUs == Long.MIN_VALUE && !decoderInputBuffer.f55346e))) {
                decoderInputBuffer.b();
                decoderInputBuffer.k(4);
                this.f56741b = true;
                return -4;
            }
            return c10;
        }

        @Override // sn.s
        public boolean isReady() {
            if (!b.this.j() && this.f56740a.isReady()) {
                return true;
            }
            return false;
        }

        @Override // sn.s
        public void maybeThrowError() throws IOException {
            this.f56740a.maybeThrowError();
        }

        @Override // sn.s
        public int skipData(long j10) {
            if (b.this.j()) {
                return -3;
            }
            return this.f56740a.skipData(j10);
        }
    }

    public b(q qVar, boolean z10, long j10, long j11) {
        long j12;
        this.f56733a = qVar;
        if (z10) {
            j12 = j10;
        } else {
            j12 = -9223372036854775807L;
        }
        this.f56736d = j12;
        this.f56737e = j10;
        this.f56738f = j11;
    }

    private gn.i0 c(long j10, gn.i0 i0Var) {
        long j11;
        long q10 = m0.q(i0Var.f52464a, 0L, j10 - this.f56737e);
        long j12 = i0Var.f52465b;
        long j13 = this.f56738f;
        if (j13 == Long.MIN_VALUE) {
            j11 = Long.MAX_VALUE;
        } else {
            j11 = j13 - j10;
        }
        long q11 = m0.q(j12, 0L, j11);
        if (q10 == i0Var.f52464a && q11 == i0Var.f52465b) {
            return i0Var;
        }
        return new gn.i0(q10, q11);
    }

    private static long h(long j10, long j11, long j12) {
        long max = Math.max(j10, j11);
        if (j12 != Long.MIN_VALUE) {
            return Math.min(max, j12);
        }
        return max;
    }

    private static boolean m(long j10, long j11, vn.q[] qVarArr) {
        if (j10 < j11) {
            return true;
        }
        if (j10 != 0) {
            for (vn.q qVar : qVarArr) {
                if (qVar != null) {
                    io.bidmachine.media3.common.a selectedFormat = qVar.getSelectedFormat();
                    if (!zm.u.a(selectedFormat.f55174o, selectedFormat.f55170k)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long a(long j10, gn.i0 i0Var) {
        long j11 = this.f56737e;
        if (j10 == j11) {
            return j11;
        }
        return this.f56733a.a(j10, c(j10, i0Var));
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean b(k1 k1Var) {
        return this.f56733a.b(k1Var);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q.a
    public void d(q qVar) {
        if (this.f56739g != null) {
            return;
        }
        ((q.a) cn.a.e(this.f56734b)).d(this);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void discardBuffer(long j10, boolean z10) {
        this.f56733a.discardBuffer(j10, z10);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void e(q.a aVar, long j10) {
        this.f56734b = aVar;
        this.f56733a.e(this, j10);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.f56733a.getBufferedPositionUs();
        if (bufferedPositionUs != Long.MIN_VALUE) {
            long j10 = this.f56738f;
            if (j10 == Long.MIN_VALUE || bufferedPositionUs < j10) {
                return bufferedPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.f56733a.getNextLoadPositionUs();
        if (nextLoadPositionUs != Long.MIN_VALUE) {
            long j10 = this.f56738f;
            if (j10 == Long.MIN_VALUE || nextLoadPositionUs < j10) {
                return nextLoadPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public sn.x getTrackGroups() {
        return this.f56733a.getTrackGroups();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long i(vn.q[] qVarArr, boolean[] zArr, sn.s[] sVarArr, boolean[] zArr2, long j10) {
        long j11;
        this.f56735c = new a[sVarArr.length];
        sn.s[] sVarArr2 = new sn.s[sVarArr.length];
        int i10 = 0;
        while (true) {
            sn.s sVar = null;
            if (i10 >= sVarArr.length) {
                break;
            }
            a[] aVarArr = this.f56735c;
            a aVar = (a) sVarArr[i10];
            aVarArr[i10] = aVar;
            if (aVar != null) {
                sVar = aVar.f56740a;
            }
            sVarArr2[i10] = sVar;
            i10++;
        }
        long i11 = this.f56733a.i(qVarArr, zArr, sVarArr2, zArr2, j10);
        long h10 = h(i11, j10, this.f56738f);
        if (j() && m(i11, j10, qVarArr)) {
            j11 = h10;
        } else {
            j11 = -9223372036854775807L;
        }
        this.f56736d = j11;
        for (int i12 = 0; i12 < sVarArr.length; i12++) {
            sn.s sVar2 = sVarArr2[i12];
            if (sVar2 == null) {
                this.f56735c[i12] = null;
            } else {
                a[] aVarArr2 = this.f56735c;
                a aVar2 = aVarArr2[i12];
                if (aVar2 == null || aVar2.f56740a != sVar2) {
                    aVarArr2[i12] = new a(sVar2);
                }
            }
            sVarArr[i12] = this.f56735c[i12];
        }
        return h10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean isLoading() {
        return this.f56733a.isLoading();
    }

    boolean j() {
        if (this.f56736d != -9223372036854775807L) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0.a
    /* renamed from: k */
    public void f(q qVar) {
        ((q.a) cn.a.e(this.f56734b)).f(this);
    }

    public void l(ClippingMediaSource.IllegalClippingException illegalClippingException) {
        this.f56739g = illegalClippingException;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void maybeThrowPrepareError() throws IOException {
        ClippingMediaSource.IllegalClippingException illegalClippingException = this.f56739g;
        if (illegalClippingException == null) {
            this.f56733a.maybeThrowPrepareError();
            return;
        }
        throw illegalClippingException;
    }

    public void n(long j10, long j11) {
        this.f56737e = j10;
        this.f56738f = j11;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long readDiscontinuity() {
        if (j()) {
            long j10 = this.f56736d;
            this.f56736d = -9223372036854775807L;
            long readDiscontinuity = readDiscontinuity();
            if (readDiscontinuity != -9223372036854775807L) {
                return readDiscontinuity;
            }
            return j10;
        }
        long readDiscontinuity2 = this.f56733a.readDiscontinuity();
        if (readDiscontinuity2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return h(readDiscontinuity2, this.f56737e, this.f56738f);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public void reevaluateBuffer(long j10) {
        this.f56733a.reevaluateBuffer(j10);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long seekToUs(long j10) {
        a[] aVarArr;
        this.f56736d = -9223372036854775807L;
        for (a aVar : this.f56735c) {
            if (aVar != null) {
                aVar.a();
            }
        }
        return h(this.f56733a.seekToUs(j10), this.f56737e, this.f56738f);
    }
}
