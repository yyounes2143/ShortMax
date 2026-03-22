package com.google.android.exoplayer2.mediacodec;

import androidx.annotation.IntRange;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;
/* compiled from: BatchBuffer.java */
/* loaded from: classes4.dex */
final class f extends DecoderInputBuffer {

    /* renamed from: i  reason: collision with root package name */
    private long f17954i;

    /* renamed from: j  reason: collision with root package name */
    private int f17955j;

    /* renamed from: k  reason: collision with root package name */
    private int f17956k;

    public f() {
        super(2);
        this.f17956k = 32;
    }

    private boolean s(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        if (!w()) {
            return true;
        }
        if (this.f17955j >= this.f17956k || decoderInputBuffer.g() != g()) {
            return false;
        }
        ByteBuffer byteBuffer2 = decoderInputBuffer.f17473c;
        if (byteBuffer2 == null || (byteBuffer = this.f17473c) == null || byteBuffer.position() + byteBuffer2.remaining() <= 3072000) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.decoder.DecoderInputBuffer, r5.a
    public void b() {
        super.b();
        this.f17955j = 0;
    }

    public boolean r(DecoderInputBuffer decoderInputBuffer) {
        b7.a.a(!decoderInputBuffer.o());
        b7.a.a(!decoderInputBuffer.f());
        b7.a.a(!decoderInputBuffer.h());
        if (!s(decoderInputBuffer)) {
            return false;
        }
        int i10 = this.f17955j;
        this.f17955j = i10 + 1;
        if (i10 == 0) {
            this.f17475e = decoderInputBuffer.f17475e;
            if (decoderInputBuffer.j()) {
                k(1);
            }
        }
        if (decoderInputBuffer.g()) {
            k(Integer.MIN_VALUE);
        }
        ByteBuffer byteBuffer = decoderInputBuffer.f17473c;
        if (byteBuffer != null) {
            m(byteBuffer.remaining());
            this.f17473c.put(byteBuffer);
        }
        this.f17954i = decoderInputBuffer.f17475e;
        return true;
    }

    public long t() {
        return this.f17475e;
    }

    public long u() {
        return this.f17954i;
    }

    public int v() {
        return this.f17955j;
    }

    public boolean w() {
        if (this.f17955j > 0) {
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
        b7.a.a(z10);
        this.f17956k = i10;
    }
}
