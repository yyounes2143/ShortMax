package io.bidmachine.media3.exoplayer.dash;

import cn.m0;
import gn.c0;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import java.io.IOException;
import sn.s;
/* compiled from: EventSampleStream.java */
/* loaded from: classes8.dex */
final class e implements s {

    /* renamed from: a  reason: collision with root package name */
    private final io.bidmachine.media3.common.a f55745a;

    /* renamed from: c  reason: collision with root package name */
    private long[] f55747c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f55748d;

    /* renamed from: e  reason: collision with root package name */
    private kn.f f55749e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f55750f;

    /* renamed from: g  reason: collision with root package name */
    private int f55751g;

    /* renamed from: b  reason: collision with root package name */
    private final mo.c f55746b = new mo.c();

    /* renamed from: h  reason: collision with root package name */
    private long f55752h = -9223372036854775807L;

    public e(kn.f fVar, io.bidmachine.media3.common.a aVar, boolean z10) {
        this.f55745a = aVar;
        this.f55749e = fVar;
        this.f55747c = fVar.f60837b;
        d(fVar, z10);
    }

    public String a() {
        return this.f55749e.a();
    }

    public void b(long j10) {
        int d10 = m0.d(this.f55747c, j10, true, false);
        this.f55751g = d10;
        this.f55752h = (this.f55748d && d10 == this.f55747c.length) ? -9223372036854775807L : -9223372036854775807L;
    }

    @Override // sn.s
    public int c(c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        boolean z10;
        int i11 = this.f55751g;
        if (i11 == this.f55747c.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 && !this.f55748d) {
            decoderInputBuffer.k(4);
            return -4;
        } else if ((i10 & 2) == 0 && this.f55750f) {
            if (z10) {
                return -3;
            }
            if ((i10 & 1) == 0) {
                this.f55751g = i11 + 1;
            }
            if ((i10 & 4) == 0) {
                byte[] a10 = this.f55746b.a(this.f55749e.f60836a[i11]);
                decoderInputBuffer.m(a10.length);
                decoderInputBuffer.f55345d.put(a10);
            }
            decoderInputBuffer.f55347f = this.f55747c[i11];
            decoderInputBuffer.k(1);
            return -4;
        } else {
            c0Var.f52440b = this.f55745a;
            this.f55750f = true;
            return -5;
        }
    }

    public void d(kn.f fVar, boolean z10) {
        long j10;
        int i10 = this.f55751g;
        if (i10 == 0) {
            j10 = -9223372036854775807L;
        } else {
            j10 = this.f55747c[i10 - 1];
        }
        this.f55748d = z10;
        this.f55749e = fVar;
        long[] jArr = fVar.f60837b;
        this.f55747c = jArr;
        long j11 = this.f55752h;
        if (j11 != -9223372036854775807L) {
            b(j11);
        } else if (j10 != -9223372036854775807L) {
            this.f55751g = m0.d(jArr, j10, false, false);
        }
    }

    @Override // sn.s
    public boolean isReady() {
        return true;
    }

    @Override // sn.s
    public int skipData(long j10) {
        int max = Math.max(this.f55751g, m0.d(this.f55747c, j10, true, false));
        int i10 = max - this.f55751g;
        this.f55751g = max;
        return i10;
    }

    @Override // sn.s
    public void maybeThrowError() throws IOException {
    }
}
