package io.bidmachine.media3.exoplayer.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import io.bidmachine.media3.common.a;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.source.j;
import io.bidmachine.media3.exoplayer.source.q;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: ExternallyLoadedMediaPeriod.java */
/* loaded from: classes8.dex */
final class k implements q {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f56940a;

    /* renamed from: b  reason: collision with root package name */
    private final j f56941b;

    /* renamed from: c  reason: collision with root package name */
    private final sn.x f56942c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f56943d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f56944e;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicReference<Throwable> f56945f;

    /* renamed from: g  reason: collision with root package name */
    private com.google.common.util.concurrent.e<?> f56946g;

    /* compiled from: ExternallyLoadedMediaPeriod.java */
    /* loaded from: classes8.dex */
    class a implements com.google.common.util.concurrent.a<Object> {
        a() {
        }

        @Override // com.google.common.util.concurrent.a
        public void onFailure(Throwable th2) {
            k.this.f56945f.set(th2);
        }

        @Override // com.google.common.util.concurrent.a
        public void onSuccess(@Nullable Object obj) {
            k.this.f56944e.set(true);
        }
    }

    /* compiled from: ExternallyLoadedMediaPeriod.java */
    /* loaded from: classes8.dex */
    private final class b implements sn.s {

        /* renamed from: a  reason: collision with root package name */
        private int f56948a = 0;

        public b() {
        }

        @Override // sn.s
        public int c(gn.c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            int i11 = this.f56948a;
            if (i11 == 2) {
                decoderInputBuffer.a(4);
                return -4;
            } else if ((i10 & 2) == 0 && i11 != 0) {
                if (!k.this.f56944e.get()) {
                    return -3;
                }
                int length = k.this.f56943d.length;
                decoderInputBuffer.a(1);
                decoderInputBuffer.f55347f = 0L;
                if ((i10 & 4) == 0) {
                    decoderInputBuffer.m(length);
                    decoderInputBuffer.f55345d.put(k.this.f56943d, 0, length);
                }
                if ((i10 & 1) == 0) {
                    this.f56948a = 2;
                }
                return -4;
            } else {
                c0Var.f52440b = k.this.f56942c.b(0).a(0);
                this.f56948a = 1;
                return -5;
            }
        }

        @Override // sn.s
        public boolean isReady() {
            return k.this.f56944e.get();
        }

        @Override // sn.s
        public void maybeThrowError() throws IOException {
            Throwable th2 = (Throwable) k.this.f56945f.get();
            if (th2 == null) {
                return;
            }
            throw new IOException(th2);
        }

        @Override // sn.s
        public int skipData(long j10) {
            return 0;
        }
    }

    public k(Uri uri, String str, j jVar) {
        this.f56940a = uri;
        io.bidmachine.media3.common.a N = new a.b().u0(str).N();
        this.f56941b = jVar;
        this.f56942c = new sn.x(new zm.b0(N));
        this.f56943d = uri.toString().getBytes(StandardCharsets.UTF_8);
        this.f56944e = new AtomicBoolean();
        this.f56945f = new AtomicReference<>();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean b(k1 k1Var) {
        return !this.f56944e.get();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void e(q.a aVar, long j10) {
        aVar.d(this);
        com.google.common.util.concurrent.e<?> a10 = this.f56941b.a(new j.a(this.f56940a));
        this.f56946g = a10;
        com.google.common.util.concurrent.b.a(a10, new a(), com.google.common.util.concurrent.f.a());
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getBufferedPositionUs() {
        if (this.f56944e.get()) {
            return Long.MIN_VALUE;
        }
        return 0L;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getNextLoadPositionUs() {
        if (this.f56944e.get()) {
            return Long.MIN_VALUE;
        }
        return 0L;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public sn.x getTrackGroups() {
        return this.f56942c;
    }

    public void h() {
        com.google.common.util.concurrent.e<?> eVar = this.f56946g;
        if (eVar != null) {
            eVar.cancel(false);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long i(vn.q[] qVarArr, boolean[] zArr, sn.s[] sVarArr, boolean[] zArr2, long j10) {
        for (int i10 = 0; i10 < qVarArr.length; i10++) {
            if (sVarArr[i10] != null && (qVarArr[i10] == null || !zArr[i10])) {
                sVarArr[i10] = null;
            }
            if (sVarArr[i10] == null && qVarArr[i10] != null) {
                sVarArr[i10] = new b();
                zArr2[i10] = true;
            }
        }
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean isLoading() {
        return !this.f56944e.get();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long readDiscontinuity() {
        return -9223372036854775807L;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void maybeThrowPrepareError() {
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public void reevaluateBuffer(long j10) {
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long seekToUs(long j10) {
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long a(long j10, gn.i0 i0Var) {
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void discardBuffer(long j10, boolean z10) {
    }
}
