package io.bidmachine.media3.exoplayer.mediacodec;

import androidx.annotation.IntRange;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;
/* compiled from: BatchBuffer.java */
/* loaded from: classes8.dex */
final class f extends DecoderInputBuffer {

    /* renamed from: j  reason: collision with root package name */
    private long f56560j;

    /* renamed from: k  reason: collision with root package name */
    private int f56561k;

    /* renamed from: l  reason: collision with root package name */
    private int f56562l;

    public f() {
        super(2);
        this.f56562l = 32;
    }

    private boolean s(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        if (!w()) {
            return true;
        }
        if (this.f56561k >= this.f56562l) {
            return false;
        }
        ByteBuffer byteBuffer2 = decoderInputBuffer.f55345d;
        if (byteBuffer2 == null || (byteBuffer = this.f55345d) == null || byteBuffer.position() + byteBuffer2.remaining() <= 3072000) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.decoder.DecoderInputBuffer, fn.a
    public void b() {
        super.b();
        this.f56561k = 0;
    }

    public boolean r(DecoderInputBuffer decoderInputBuffer) {
        cn.a.a(!decoderInputBuffer.o());
        cn.a.a(!decoderInputBuffer.e());
        cn.a.a(!decoderInputBuffer.f());
        if (!s(decoderInputBuffer)) {
            return false;
        }
        int i10 = this.f56561k;
        this.f56561k = i10 + 1;
        if (i10 == 0) {
            this.f55347f = decoderInputBuffer.f55347f;
            if (decoderInputBuffer.h()) {
                k(1);
            }
        }
        ByteBuffer byteBuffer = decoderInputBuffer.f55345d;
        if (byteBuffer != null) {
            m(byteBuffer.remaining());
            this.f55345d.put(byteBuffer);
        }
        this.f56560j = decoderInputBuffer.f55347f;
        return true;
    }

    public long t() {
        return this.f55347f;
    }

    public long u() {
        return this.f56560j;
    }

    public int v() {
        return this.f56561k;
    }

    public boolean w() {
        if (this.f56561k > 0) {
            return true;
        }
        return false;
    }

    public void x(@IntRange(from = 1) int i10) {
        boolean z10;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        this.f56562l = i10;
    }
}
