package io.bidmachine.media3.decoder;

import androidx.annotation.Nullable;
import fn.a;
import fn.c;
import java.nio.ByteBuffer;
import zm.r;
/* loaded from: classes8.dex */
public class DecoderInputBuffer extends a {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public io.bidmachine.media3.common.a f55343b;

    /* renamed from: c  reason: collision with root package name */
    public final c f55344c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public ByteBuffer f55345d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f55346e;

    /* renamed from: f  reason: collision with root package name */
    public long f55347f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public ByteBuffer f55348g;

    /* renamed from: h  reason: collision with root package name */
    private final int f55349h;

    /* renamed from: i  reason: collision with root package name */
    private final int f55350i;

    /* loaded from: classes8.dex */
    public static final class InsufficientCapacityException extends IllegalStateException {

        /* renamed from: a  reason: collision with root package name */
        public final int f55351a;

        /* renamed from: b  reason: collision with root package name */
        public final int f55352b;

        public InsufficientCapacityException(int i10, int i11) {
            super("Buffer too small (" + i10 + " < " + i11 + ")");
            this.f55351a = i10;
            this.f55352b = i11;
        }
    }

    static {
        r.a("media3.decoder");
    }

    public DecoderInputBuffer(int i10) {
        this(i10, 0);
    }

    private ByteBuffer l(int i10) {
        int capacity;
        int i11 = this.f55349h;
        if (i11 == 1) {
            return ByteBuffer.allocate(i10);
        }
        if (i11 == 2) {
            return ByteBuffer.allocateDirect(i10);
        }
        ByteBuffer byteBuffer = this.f55345d;
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

    @Override // fn.a
    public void b() {
        super.b();
        ByteBuffer byteBuffer = this.f55345d;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f55348g;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f55346e = false;
    }

    public void m(int i10) {
        int i11 = i10 + this.f55350i;
        ByteBuffer byteBuffer = this.f55345d;
        if (byteBuffer == null) {
            this.f55345d = l(i11);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i12 = i11 + position;
        if (capacity >= i12) {
            this.f55345d = byteBuffer;
            return;
        }
        ByteBuffer l10 = l(i12);
        l10.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            l10.put(byteBuffer);
        }
        this.f55345d = l10;
    }

    public final void n() {
        ByteBuffer byteBuffer = this.f55345d;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f55348g;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean o() {
        return c(1073741824);
    }

    public void q(int i10) {
        ByteBuffer byteBuffer = this.f55348g;
        if (byteBuffer != null && byteBuffer.capacity() >= i10) {
            this.f55348g.clear();
        } else {
            this.f55348g = ByteBuffer.allocate(i10);
        }
    }

    public DecoderInputBuffer(int i10, int i11) {
        this.f55344c = new c();
        this.f55349h = i10;
        this.f55350i = i11;
    }
}
