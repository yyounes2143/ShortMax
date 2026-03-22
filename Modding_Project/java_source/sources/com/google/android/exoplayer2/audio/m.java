package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import b7.s0;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* compiled from: SonicAudioProcessor.java */
/* loaded from: classes4.dex */
public final class m implements AudioProcessor {

    /* renamed from: b  reason: collision with root package name */
    private int f17402b;

    /* renamed from: c  reason: collision with root package name */
    private float f17403c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    private float f17404d = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private AudioProcessor.a f17405e;

    /* renamed from: f  reason: collision with root package name */
    private AudioProcessor.a f17406f;

    /* renamed from: g  reason: collision with root package name */
    private AudioProcessor.a f17407g;

    /* renamed from: h  reason: collision with root package name */
    private AudioProcessor.a f17408h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f17409i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private l f17410j;

    /* renamed from: k  reason: collision with root package name */
    private ByteBuffer f17411k;

    /* renamed from: l  reason: collision with root package name */
    private ShortBuffer f17412l;

    /* renamed from: m  reason: collision with root package name */
    private ByteBuffer f17413m;

    /* renamed from: n  reason: collision with root package name */
    private long f17414n;

    /* renamed from: o  reason: collision with root package name */
    private long f17415o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f17416p;

    public m() {
        AudioProcessor.a aVar = AudioProcessor.a.f17210e;
        this.f17405e = aVar;
        this.f17406f = aVar;
        this.f17407g = aVar;
        this.f17408h = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f17209a;
        this.f17411k = byteBuffer;
        this.f17412l = byteBuffer.asShortBuffer();
        this.f17413m = byteBuffer;
        this.f17402b = -1;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f17213c == 2) {
            int i10 = this.f17402b;
            if (i10 == -1) {
                i10 = aVar.f17211a;
            }
            this.f17405e = aVar;
            AudioProcessor.a aVar2 = new AudioProcessor.a(i10, aVar.f17212b, 2);
            this.f17406f = aVar2;
            this.f17409i = true;
            return aVar2;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    public long b(long j10) {
        if (this.f17415o >= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            long l10 = this.f17414n - ((l) b7.a.e(this.f17410j)).l();
            int i10 = this.f17408h.f17211a;
            int i11 = this.f17407g.f17211a;
            if (i10 == i11) {
                return s0.F0(j10, l10, this.f17415o);
            }
            return s0.F0(j10, l10 * i10, this.f17415o * i11);
        }
        return (long) (this.f17403c * j10);
    }

    public void c(float f10) {
        if (this.f17404d != f10) {
            this.f17404d = f10;
            this.f17409i = true;
        }
    }

    public void d(float f10) {
        if (this.f17403c != f10) {
            this.f17403c = f10;
            this.f17409i = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void flush() {
        if (isActive()) {
            AudioProcessor.a aVar = this.f17405e;
            this.f17407g = aVar;
            AudioProcessor.a aVar2 = this.f17406f;
            this.f17408h = aVar2;
            if (this.f17409i) {
                this.f17410j = new l(aVar.f17211a, aVar.f17212b, this.f17403c, this.f17404d, aVar2.f17211a);
            } else {
                l lVar = this.f17410j;
                if (lVar != null) {
                    lVar.i();
                }
            }
        }
        this.f17413m = AudioProcessor.f17209a;
        this.f17414n = 0L;
        this.f17415o = 0L;
        this.f17416p = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer getOutput() {
        int k10;
        l lVar = this.f17410j;
        if (lVar != null && (k10 = lVar.k()) > 0) {
            if (this.f17411k.capacity() < k10) {
                ByteBuffer order = ByteBuffer.allocateDirect(k10).order(ByteOrder.nativeOrder());
                this.f17411k = order;
                this.f17412l = order.asShortBuffer();
            } else {
                this.f17411k.clear();
                this.f17412l.clear();
            }
            lVar.j(this.f17412l);
            this.f17415o += k10;
            this.f17411k.limit(k10);
            this.f17413m = this.f17411k;
        }
        ByteBuffer byteBuffer = this.f17413m;
        this.f17413m = AudioProcessor.f17209a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        if (this.f17406f.f17211a != -1 && (Math.abs(this.f17403c - 1.0f) >= 1.0E-4f || Math.abs(this.f17404d - 1.0f) >= 1.0E-4f || this.f17406f.f17211a != this.f17405e.f17211a)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isEnded() {
        l lVar;
        if (this.f17416p && ((lVar = this.f17410j) == null || lVar.k() == 0)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueEndOfStream() {
        l lVar = this.f17410j;
        if (lVar != null) {
            lVar.s();
        }
        this.f17416p = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
        int remaining = byteBuffer.remaining();
        this.f17414n += remaining;
        ((l) b7.a.e(this.f17410j)).t(asShortBuffer);
        byteBuffer.position(byteBuffer.position() + remaining);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void reset() {
        this.f17403c = 1.0f;
        this.f17404d = 1.0f;
        AudioProcessor.a aVar = AudioProcessor.a.f17210e;
        this.f17405e = aVar;
        this.f17406f = aVar;
        this.f17407g = aVar;
        this.f17408h = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f17209a;
        this.f17411k = byteBuffer;
        this.f17412l = byteBuffer.asShortBuffer();
        this.f17413m = byteBuffer;
        this.f17402b = -1;
        this.f17409i = false;
        this.f17410j = null;
        this.f17414n = 0L;
        this.f17415o = 0L;
        this.f17416p = false;
    }
}
