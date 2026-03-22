package io.bidmachine.media3.exoplayer.source;

import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.source.q;
import java.io.IOException;
/* compiled from: TimeOffsetMediaPeriod.java */
/* loaded from: classes8.dex */
final class k0 implements q, q.a {

    /* renamed from: a  reason: collision with root package name */
    private final q f56950a;

    /* renamed from: b  reason: collision with root package name */
    private final long f56951b;

    /* renamed from: c  reason: collision with root package name */
    private q.a f56952c;

    /* compiled from: TimeOffsetMediaPeriod.java */
    /* loaded from: classes8.dex */
    private static final class a implements sn.s {

        /* renamed from: a  reason: collision with root package name */
        private final sn.s f56953a;

        /* renamed from: b  reason: collision with root package name */
        private final long f56954b;

        public a(sn.s sVar, long j10) {
            this.f56953a = sVar;
            this.f56954b = j10;
        }

        public sn.s a() {
            return this.f56953a;
        }

        @Override // sn.s
        public int c(gn.c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            int c10 = this.f56953a.c(c0Var, decoderInputBuffer, i10);
            if (c10 == -4) {
                decoderInputBuffer.f55347f += this.f56954b;
            }
            return c10;
        }

        @Override // sn.s
        public boolean isReady() {
            return this.f56953a.isReady();
        }

        @Override // sn.s
        public void maybeThrowError() throws IOException {
            this.f56953a.maybeThrowError();
        }

        @Override // sn.s
        public int skipData(long j10) {
            return this.f56953a.skipData(j10 - this.f56954b);
        }
    }

    public k0(q qVar, long j10) {
        this.f56950a = qVar;
        this.f56951b = j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long a(long j10, gn.i0 i0Var) {
        return this.f56950a.a(j10 - this.f56951b, i0Var) + this.f56951b;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean b(k1 k1Var) {
        return this.f56950a.b(k1Var.a().f(k1Var.f56411a - this.f56951b).d());
    }

    public q c() {
        return this.f56950a;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q.a
    public void d(q qVar) {
        ((q.a) cn.a.e(this.f56952c)).d(this);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void discardBuffer(long j10, boolean z10) {
        this.f56950a.discardBuffer(j10 - this.f56951b, z10);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void e(q.a aVar, long j10) {
        this.f56952c = aVar;
        this.f56950a.e(this, j10 - this.f56951b);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.f56950a.getBufferedPositionUs();
        if (bufferedPositionUs == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return this.f56951b + bufferedPositionUs;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.f56950a.getNextLoadPositionUs();
        if (nextLoadPositionUs == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return this.f56951b + nextLoadPositionUs;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public sn.x getTrackGroups() {
        return this.f56950a.getTrackGroups();
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0.a
    /* renamed from: h */
    public void f(q qVar) {
        ((q.a) cn.a.e(this.f56952c)).f(this);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long i(vn.q[] qVarArr, boolean[] zArr, sn.s[] sVarArr, boolean[] zArr2, long j10) {
        sn.s[] sVarArr2 = new sn.s[sVarArr.length];
        int i10 = 0;
        while (true) {
            sn.s sVar = null;
            if (i10 >= sVarArr.length) {
                break;
            }
            a aVar = (a) sVarArr[i10];
            if (aVar != null) {
                sVar = aVar.a();
            }
            sVarArr2[i10] = sVar;
            i10++;
        }
        long i11 = this.f56950a.i(qVarArr, zArr, sVarArr2, zArr2, j10 - this.f56951b);
        for (int i12 = 0; i12 < sVarArr.length; i12++) {
            sn.s sVar2 = sVarArr2[i12];
            if (sVar2 == null) {
                sVarArr[i12] = null;
            } else {
                sn.s sVar3 = sVarArr[i12];
                if (sVar3 == null || ((a) sVar3).a() != sVar2) {
                    sVarArr[i12] = new a(sVar2, this.f56951b);
                }
            }
        }
        return i11 + this.f56951b;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean isLoading() {
        return this.f56950a.isLoading();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void maybeThrowPrepareError() throws IOException {
        this.f56950a.maybeThrowPrepareError();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long readDiscontinuity() {
        long readDiscontinuity = this.f56950a.readDiscontinuity();
        if (readDiscontinuity == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return this.f56951b + readDiscontinuity;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public void reevaluateBuffer(long j10) {
        this.f56950a.reevaluateBuffer(j10 - this.f56951b);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long seekToUs(long j10) {
        return this.f56950a.seekToUs(j10 - this.f56951b) + this.f56951b;
    }
}
