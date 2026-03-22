package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.source.o;
import java.io.IOException;
import o5.r0;
/* compiled from: MaskingMediaPeriod.java */
/* loaded from: classes4.dex */
public final class l implements n, n.a {

    /* renamed from: a  reason: collision with root package name */
    public final o.b f18344a;

    /* renamed from: b  reason: collision with root package name */
    private final long f18345b;

    /* renamed from: c  reason: collision with root package name */
    private final a7.b f18346c;

    /* renamed from: d  reason: collision with root package name */
    private o f18347d;

    /* renamed from: e  reason: collision with root package name */
    private n f18348e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private n.a f18349f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private a f18350g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f18351h;

    /* renamed from: i  reason: collision with root package name */
    private long f18352i = -9223372036854775807L;

    /* compiled from: MaskingMediaPeriod.java */
    /* loaded from: classes4.dex */
    public interface a {
        void a(o.b bVar, IOException iOException);

        void b(o.b bVar);
    }

    public l(o.b bVar, a7.b bVar2, long j10) {
        this.f18344a = bVar;
        this.f18346c = bVar2;
        this.f18345b = j10;
    }

    private long i(long j10) {
        long j11 = this.f18352i;
        if (j11 != -9223372036854775807L) {
            return j11;
        }
        return j10;
    }

    @Override // com.google.android.exoplayer2.source.n
    public long a(long j10, r0 r0Var) {
        return ((n) s0.j(this.f18348e)).a(j10, r0Var);
    }

    public void c(o.b bVar) {
        long i10 = i(this.f18345b);
        n f10 = ((o) b7.a.e(this.f18347d)).f(bVar, this.f18346c, i10);
        this.f18348e = f10;
        if (this.f18349f != null) {
            f10.f(this, i10);
        }
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j10) {
        n nVar = this.f18348e;
        if (nVar != null && nVar.continueLoading(j10)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.n.a
    public void d(n nVar) {
        ((n.a) s0.j(this.f18349f)).d(this);
        a aVar = this.f18350g;
        if (aVar != null) {
            aVar.b(this.f18344a);
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public void discardBuffer(long j10, boolean z10) {
        ((n) s0.j(this.f18348e)).discardBuffer(j10, z10);
    }

    public long e() {
        return this.f18352i;
    }

    @Override // com.google.android.exoplayer2.source.n
    public void f(n.a aVar, long j10) {
        this.f18349f = aVar;
        n nVar = this.f18348e;
        if (nVar != null) {
            nVar.f(this, i(this.f18345b));
        }
    }

    public long g() {
        return this.f18345b;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        return ((n) s0.j(this.f18348e)).getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        return ((n) s0.j(this.f18348e)).getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n
    public n6.w getTrackGroups() {
        return ((n) s0.j(this.f18348e)).getTrackGroups();
    }

    @Override // com.google.android.exoplayer2.source.n
    public long h(z6.y[] yVarArr, boolean[] zArr, n6.q[] qVarArr, boolean[] zArr2, long j10) {
        long j11;
        long j12 = this.f18352i;
        if (j12 != -9223372036854775807L && j10 == this.f18345b) {
            this.f18352i = -9223372036854775807L;
            j11 = j12;
        } else {
            j11 = j10;
        }
        return ((n) s0.j(this.f18348e)).h(yVarArr, zArr, qVarArr, zArr2, j11);
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        n nVar = this.f18348e;
        if (nVar != null && nVar.isLoading()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.b0.a
    /* renamed from: j */
    public void b(n nVar) {
        ((n.a) s0.j(this.f18349f)).b(this);
    }

    public void k(long j10) {
        this.f18352i = j10;
    }

    public void l() {
        if (this.f18348e != null) {
            ((o) b7.a.e(this.f18347d)).i(this.f18348e);
        }
    }

    public void m(o oVar) {
        boolean z10;
        if (this.f18347d == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        this.f18347d = oVar;
    }

    @Override // com.google.android.exoplayer2.source.n
    public void maybeThrowPrepareError() throws IOException {
        try {
            n nVar = this.f18348e;
            if (nVar != null) {
                nVar.maybeThrowPrepareError();
            } else {
                o oVar = this.f18347d;
                if (oVar != null) {
                    oVar.maybeThrowSourceInfoRefreshError();
                }
            }
        } catch (IOException e10) {
            a aVar = this.f18350g;
            if (aVar != null) {
                if (!this.f18351h) {
                    this.f18351h = true;
                    aVar.a(this.f18344a, e10);
                    return;
                }
                return;
            }
            throw e10;
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public long readDiscontinuity() {
        return ((n) s0.j(this.f18348e)).readDiscontinuity();
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j10) {
        ((n) s0.j(this.f18348e)).reevaluateBuffer(j10);
    }

    @Override // com.google.android.exoplayer2.source.n
    public long seekToUs(long j10) {
        return ((n) s0.j(this.f18348e)).seekToUs(j10);
    }
}
