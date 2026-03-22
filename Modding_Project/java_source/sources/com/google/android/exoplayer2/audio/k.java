package com.google.android.exoplayer2.audio;

import b7.s0;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
/* compiled from: SilenceSkippingAudioProcessor.java */
/* loaded from: classes4.dex */
public final class k extends e {

    /* renamed from: i  reason: collision with root package name */
    private final long f17368i;

    /* renamed from: j  reason: collision with root package name */
    private final long f17369j;

    /* renamed from: k  reason: collision with root package name */
    private final short f17370k;

    /* renamed from: l  reason: collision with root package name */
    private int f17371l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f17372m;

    /* renamed from: n  reason: collision with root package name */
    private byte[] f17373n;

    /* renamed from: o  reason: collision with root package name */
    private byte[] f17374o;

    /* renamed from: p  reason: collision with root package name */
    private int f17375p;

    /* renamed from: q  reason: collision with root package name */
    private int f17376q;

    /* renamed from: r  reason: collision with root package name */
    private int f17377r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f17378s;

    /* renamed from: t  reason: collision with root package name */
    private long f17379t;

    public k() {
        this(150000L, 20000L, (short) 1024);
    }

    private int h(long j10) {
        return (int) ((j10 * this.f17345b.f17211a) / 1000000);
    }

    private int i(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        while (true) {
            limit -= 2;
            if (limit >= byteBuffer.position()) {
                if (Math.abs((int) byteBuffer.getShort(limit)) > this.f17370k) {
                    int i10 = this.f17371l;
                    return ((limit / i10) * i10) + i10;
                }
            } else {
                return byteBuffer.position();
            }
        }
    }

    private int j(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position(); position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.getShort(position)) > this.f17370k) {
                int i10 = this.f17371l;
                return i10 * (position / i10);
            }
        }
        return byteBuffer.limit();
    }

    private void l(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        g(remaining).put(byteBuffer).flip();
        if (remaining > 0) {
            this.f17378s = true;
        }
    }

    private void m(byte[] bArr, int i10) {
        g(i10).put(bArr, 0, i10).flip();
        if (i10 > 0) {
            this.f17378s = true;
        }
    }

    private void n(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int j10 = j(byteBuffer);
        int position = j10 - byteBuffer.position();
        byte[] bArr = this.f17373n;
        int length = bArr.length;
        int i10 = this.f17376q;
        int i11 = length - i10;
        if (j10 < limit && position < i11) {
            m(bArr, i10);
            this.f17376q = 0;
            this.f17375p = 0;
            return;
        }
        int min = Math.min(position, i11);
        byteBuffer.limit(byteBuffer.position() + min);
        byteBuffer.get(this.f17373n, this.f17376q, min);
        int i12 = this.f17376q + min;
        this.f17376q = i12;
        byte[] bArr2 = this.f17373n;
        if (i12 == bArr2.length) {
            if (this.f17378s) {
                m(bArr2, this.f17377r);
                this.f17379t += (this.f17376q - (this.f17377r * 2)) / this.f17371l;
            } else {
                this.f17379t += (i12 - this.f17377r) / this.f17371l;
            }
            r(byteBuffer, this.f17373n, this.f17376q);
            this.f17376q = 0;
            this.f17375p = 2;
        }
        byteBuffer.limit(limit);
    }

    private void o(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f17373n.length));
        int i10 = i(byteBuffer);
        if (i10 == byteBuffer.position()) {
            this.f17375p = 1;
        } else {
            byteBuffer.limit(i10);
            l(byteBuffer);
        }
        byteBuffer.limit(limit);
    }

    private void p(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int j10 = j(byteBuffer);
        byteBuffer.limit(j10);
        this.f17379t += byteBuffer.remaining() / this.f17371l;
        r(byteBuffer, this.f17374o, this.f17377r);
        if (j10 < limit) {
            m(this.f17374o, this.f17377r);
            this.f17375p = 0;
            byteBuffer.limit(limit);
        }
    }

    private void r(ByteBuffer byteBuffer, byte[] bArr, int i10) {
        int min = Math.min(byteBuffer.remaining(), this.f17377r);
        int i11 = this.f17377r - min;
        System.arraycopy(bArr, i10 - i11, this.f17374o, 0, i11);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f17374o, i11, min);
    }

    @Override // com.google.android.exoplayer2.audio.e
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f17213c == 2) {
            if (!this.f17372m) {
                return AudioProcessor.a.f17210e;
            }
            return aVar;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.e
    protected void d() {
        if (this.f17372m) {
            this.f17371l = this.f17345b.f17214d;
            int h10 = h(this.f17368i) * this.f17371l;
            if (this.f17373n.length != h10) {
                this.f17373n = new byte[h10];
            }
            int h11 = h(this.f17369j) * this.f17371l;
            this.f17377r = h11;
            if (this.f17374o.length != h11) {
                this.f17374o = new byte[h11];
            }
        }
        this.f17375p = 0;
        this.f17379t = 0L;
        this.f17376q = 0;
        this.f17378s = false;
    }

    @Override // com.google.android.exoplayer2.audio.e
    protected void e() {
        int i10 = this.f17376q;
        if (i10 > 0) {
            m(this.f17373n, i10);
        }
        if (!this.f17378s) {
            this.f17379t += this.f17377r / this.f17371l;
        }
    }

    @Override // com.google.android.exoplayer2.audio.e
    protected void f() {
        this.f17372m = false;
        this.f17377r = 0;
        byte[] bArr = s0.f2511f;
        this.f17373n = bArr;
        this.f17374o = bArr;
    }

    @Override // com.google.android.exoplayer2.audio.e, com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.f17372m;
    }

    public long k() {
        return this.f17379t;
    }

    public void q(boolean z10) {
        this.f17372m = z10;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !b()) {
            int i10 = this.f17375p;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        p(byteBuffer);
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    n(byteBuffer);
                }
            } else {
                o(byteBuffer);
            }
        }
    }

    public k(long j10, long j11, short s10) {
        b7.a.a(j11 <= j10);
        this.f17368i = j10;
        this.f17369j = j11;
        this.f17370k = s10;
        byte[] bArr = s0.f2511f;
        this.f17373n = bArr;
        this.f17374o = bArr;
    }
}
