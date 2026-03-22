package com.google.android.exoplayer2.decoder;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import o5.z;
import r5.a;
import r5.c;
/* loaded from: classes4.dex */
public class DecoderInputBuffer extends a {

    /* renamed from: b  reason: collision with root package name */
    public final c f17472b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public ByteBuffer f17473c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f17474d;

    /* renamed from: e  reason: collision with root package name */
    public long f17475e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public ByteBuffer f17476f;

    /* renamed from: g  reason: collision with root package name */
    private final int f17477g;

    /* renamed from: h  reason: collision with root package name */
    private final int f17478h;

    /* loaded from: classes4.dex */
    public static final class InsufficientCapacityException extends IllegalStateException {

        /* renamed from: a  reason: collision with root package name */
        public final int f17479a;

        /* renamed from: b  reason: collision with root package name */
        public final int f17480b;

        public InsufficientCapacityException(int i10, int i11) {
            super("Buffer too small (" + i10 + " < " + i11 + ")");
            this.f17479a = i10;
            this.f17480b = i11;
        }
    }

    static {
        z.a("goog.exo.decoder");
    }

    public DecoderInputBuffer(int i10) {
        this(i10, 0);
    }

    private ByteBuffer l(int i10) {
        int capacity;
        int i11 = this.f17477g;
        if (i11 == 1) {
            return ByteBuffer.allocate(i10);
        }
        if (i11 == 2) {
            return ByteBuffer.allocateDirect(i10);
        }
        ByteBuffer byteBuffer = this.f17473c;
        if (byteBuffer == null) {
            capacity = 0;
        } else {
            capacity = byteBuffer.capacity();
        }
        throw new InsufficientCapacityException(capacity, i10);
    }

    public static DecoderInputBuffer p() {
        return new DecoderInputBuffer(0);
    }

    @Override // r5.a
    public void b() {
        super.b();
        ByteBuffer byteBuffer = this.f17473c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f17476f;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f17474d = false;
    }

    public void m(int i10) {
        int i11 = i10 + this.f17478h;
        ByteBuffer byteBuffer = this.f17473c;
        if (byteBuffer == null) {
            this.f17473c = l(i11);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i12 = i11 + position;
        if (capacity >= i12) {
            this.f17473c = byteBuffer;
            return;
        }
        ByteBuffer l10 = l(i12);
        l10.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            l10.put(byteBuffer);
        }
        this.f17473c = l10;
    }

    public final void n() {
        ByteBuffer byteBuffer = this.f17473c;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f17476f;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean o() {
        return e(1073741824);
    }

    public void q(int i10) {
        ByteBuffer byteBuffer = this.f17476f;
        if (byteBuffer != null && byteBuffer.capacity() >= i10) {
            this.f17476f.clear();
        } else {
            this.f17476f = ByteBuffer.allocate(i10);
        }
    }

    public DecoderInputBuffer(int i10, int i11) {
        this.f17472b = new c();
        this.f17477g = i10;
        this.f17478h = i11;
    }
}
