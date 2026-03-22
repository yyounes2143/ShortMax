package io.bidmachine.media3.exoplayer.source;

import androidx.annotation.Nullable;
import cn.m0;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.source.q;
import io.bidmachine.media3.exoplayer.source.r;
import java.io.IOException;
/* compiled from: MaskingMediaPeriod.java */
/* loaded from: classes8.dex */
public final class o implements q, q.a {

    /* renamed from: a  reason: collision with root package name */
    public final r.b f56968a;

    /* renamed from: b  reason: collision with root package name */
    private final long f56969b;

    /* renamed from: c  reason: collision with root package name */
    private final wn.b f56970c;

    /* renamed from: d  reason: collision with root package name */
    private r f56971d;

    /* renamed from: e  reason: collision with root package name */
    private q f56972e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private q.a f56973f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private a f56974g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f56975h;

    /* renamed from: i  reason: collision with root package name */
    private long f56976i = -9223372036854775807L;

    /* compiled from: MaskingMediaPeriod.java */
    /* loaded from: classes8.dex */
    public interface a {
        void a(r.b bVar);

        void b(r.b bVar, IOException iOException);
    }

    public o(r.b bVar, wn.b bVar2, long j10) {
        this.f56968a = bVar;
        this.f56970c = bVar2;
        this.f56969b = j10;
    }

    private long k(long j10) {
        long j11 = this.f56976i;
        if (j11 != -9223372036854775807L) {
            return j11;
        }
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long a(long j10, gn.i0 i0Var) {
        return ((q) m0.i(this.f56972e)).a(j10, i0Var);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean b(k1 k1Var) {
        q qVar = this.f56972e;
        if (qVar != null && qVar.b(k1Var)) {
            return true;
        }
        return false;
    }

    public void c(r.b bVar) {
        long k10 = k(this.f56969b);
        q f10 = ((r) cn.a.e(this.f56971d)).f(bVar, this.f56970c, k10);
        this.f56972e = f10;
        if (this.f56973f != null) {
            f10.e(this, k10);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q.a
    public void d(q qVar) {
        ((q.a) m0.i(this.f56973f)).d(this);
        a aVar = this.f56974g;
        if (aVar != null) {
            aVar.a(this.f56968a);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void discardBuffer(long j10, boolean z10) {
        ((q) m0.i(this.f56972e)).discardBuffer(j10, z10);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void e(q.a aVar, long j10) {
        this.f56973f = aVar;
        q qVar = this.f56972e;
        if (qVar != null) {
            qVar.e(this, k(this.f56969b));
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getBufferedPositionUs() {
        return ((q) m0.i(this.f56972e)).getBufferedPositionUs();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getNextLoadPositionUs() {
        return ((q) m0.i(this.f56972e)).getNextLoadPositionUs();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public sn.x getTrackGroups() {
        return ((q) m0.i(this.f56972e)).getTrackGroups();
    }

    public long h() {
        return this.f56976i;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long i(vn.q[] qVarArr, boolean[] zArr, sn.s[] sVarArr, boolean[] zArr2, long j10) {
        long j11;
        long j12 = this.f56976i;
        if (j12 != -9223372036854775807L && j10 == this.f56969b) {
            j11 = j12;
        } else {
            j11 = j10;
        }
        this.f56976i = -9223372036854775807L;
        return ((q) m0.i(this.f56972e)).i(qVarArr, zArr, sVarArr, zArr2, j11);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean isLoading() {
        q qVar = this.f56972e;
        if (qVar != null && qVar.isLoading()) {
            return true;
        }
        return false;
    }

    public long j() {
        return this.f56969b;
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0.a
    /* renamed from: l */
    public void f(q qVar) {
        ((q.a) m0.i(this.f56973f)).f(this);
    }

    public void m(long j10) {
        this.f56976i = j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void maybeThrowPrepareError() throws IOException {
        try {
            q qVar = this.f56972e;
            if (qVar != null) {
                qVar.maybeThrowPrepareError();
            } else {
                r rVar = this.f56971d;
                if (rVar != null) {
                    rVar.maybeThrowSourceInfoRefreshError();
                }
            }
        } catch (IOException e10) {
            a aVar = this.f56974g;
            if (aVar != null) {
                if (!this.f56975h) {
                    this.f56975h = true;
                    aVar.b(this.f56968a, e10);
                    return;
                }
                return;
            }
            throw e10;
        }
    }

    public void n() {
        if (this.f56972e != null) {
            ((r) cn.a.e(this.f56971d)).m(this.f56972e);
        }
    }

    public void o(r rVar) {
        boolean z10;
        if (this.f56971d == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        this.f56971d = rVar;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long readDiscontinuity() {
        return ((q) m0.i(this.f56972e)).readDiscontinuity();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public void reevaluateBuffer(long j10) {
        ((q) m0.i(this.f56972e)).reevaluateBuffer(j10);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long seekToUs(long j10) {
        return ((q) m0.i(this.f56972e)).seekToUs(j10);
    }
}
