package io.bidmachine.media3.common.audio;

import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import cn.m0;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import io.bidmachine.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* compiled from: SonicAudioProcessor.java */
/* loaded from: classes8.dex */
public final class d implements AudioProcessor {

    /* renamed from: b  reason: collision with root package name */
    private final boolean f55255b;

    /* renamed from: c  reason: collision with root package name */
    private int f55256c;

    /* renamed from: d  reason: collision with root package name */
    private float f55257d;

    /* renamed from: e  reason: collision with root package name */
    private float f55258e;

    /* renamed from: f  reason: collision with root package name */
    private AudioProcessor.a f55259f;

    /* renamed from: g  reason: collision with root package name */
    private AudioProcessor.a f55260g;

    /* renamed from: h  reason: collision with root package name */
    private AudioProcessor.a f55261h;

    /* renamed from: i  reason: collision with root package name */
    private AudioProcessor.a f55262i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f55263j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private c f55264k;

    /* renamed from: l  reason: collision with root package name */
    private ByteBuffer f55265l;

    /* renamed from: m  reason: collision with root package name */
    private ShortBuffer f55266m;

    /* renamed from: n  reason: collision with root package name */
    private ByteBuffer f55267n;

    /* renamed from: o  reason: collision with root package name */
    private long f55268o;

    /* renamed from: p  reason: collision with root package name */
    private long f55269p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f55270q;

    public d() {
        this(false);
    }

    private boolean b() {
        if (Math.abs(this.f55257d - 1.0f) < 1.0E-4f && Math.abs(this.f55258e - 1.0f) < 1.0E-4f && this.f55260g.f55215a == this.f55259f.f55215a) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f55217c == 2) {
            int i10 = this.f55256c;
            if (i10 == -1) {
                i10 = aVar.f55215a;
            }
            this.f55259f = aVar;
            AudioProcessor.a aVar2 = new AudioProcessor.a(i10, aVar.f55216b, 2);
            this.f55260g = aVar2;
            this.f55263j = true;
            return aVar2;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    public long c(long j10) {
        if (this.f55269p >= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            long l10 = this.f55268o - ((c) cn.a.e(this.f55264k)).l();
            int i10 = this.f55262i.f55215a;
            int i11 = this.f55261h.f55215a;
            if (i10 == i11) {
                return m0.f1(j10, l10, this.f55269p);
            }
            return m0.f1(j10, l10 * i10, this.f55269p * i11);
        }
        return (long) (this.f55257d * j10);
    }

    public void d(@FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        boolean z10;
        if (f10 > 0.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        if (this.f55258e != f10) {
            this.f55258e = f10;
            this.f55263j = true;
        }
    }

    public void e(@FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        boolean z10;
        if (f10 > 0.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        if (this.f55257d != f10) {
            this.f55257d = f10;
            this.f55263j = true;
        }
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public void flush() {
        if (isActive()) {
            AudioProcessor.a aVar = this.f55259f;
            this.f55261h = aVar;
            AudioProcessor.a aVar2 = this.f55260g;
            this.f55262i = aVar2;
            if (this.f55263j) {
                this.f55264k = new c(aVar.f55215a, aVar.f55216b, this.f55257d, this.f55258e, aVar2.f55215a);
            } else {
                c cVar = this.f55264k;
                if (cVar != null) {
                    cVar.i();
                }
            }
        }
        this.f55267n = AudioProcessor.f55212a;
        this.f55268o = 0L;
        this.f55269p = 0L;
        this.f55270q = false;
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public ByteBuffer getOutput() {
        int k10;
        c cVar = this.f55264k;
        if (cVar != null && (k10 = cVar.k()) > 0) {
            if (this.f55265l.capacity() < k10) {
                ByteBuffer order = ByteBuffer.allocateDirect(k10).order(ByteOrder.nativeOrder());
                this.f55265l = order;
                this.f55266m = order.asShortBuffer();
            } else {
                this.f55265l.clear();
                this.f55266m.clear();
            }
            cVar.j(this.f55266m);
            this.f55269p += k10;
            this.f55265l.limit(k10);
            this.f55267n = this.f55265l;
        }
        ByteBuffer byteBuffer = this.f55267n;
        this.f55267n = AudioProcessor.f55212a;
        return byteBuffer;
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public boolean isActive() {
        if (this.f55260g.f55215a != -1 && (this.f55255b || !b())) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public boolean isEnded() {
        c cVar;
        if (this.f55270q && ((cVar = this.f55264k) == null || cVar.k() == 0)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public void queueEndOfStream() {
        c cVar = this.f55264k;
        if (cVar != null) {
            cVar.s();
        }
        this.f55270q = true;
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
        int remaining = byteBuffer.remaining();
        this.f55268o += remaining;
        ((c) cn.a.e(this.f55264k)).t(asShortBuffer);
        byteBuffer.position(byteBuffer.position() + remaining);
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public void reset() {
        this.f55257d = 1.0f;
        this.f55258e = 1.0f;
        AudioProcessor.a aVar = AudioProcessor.a.f55214e;
        this.f55259f = aVar;
        this.f55260g = aVar;
        this.f55261h = aVar;
        this.f55262i = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f55212a;
        this.f55265l = byteBuffer;
        this.f55266m = byteBuffer.asShortBuffer();
        this.f55267n = byteBuffer;
        this.f55256c = -1;
        this.f55263j = false;
        this.f55264k = null;
        this.f55268o = 0L;
        this.f55269p = 0L;
        this.f55270q = false;
    }

    d(boolean z10) {
        this.f55257d = 1.0f;
        this.f55258e = 1.0f;
        AudioProcessor.a aVar = AudioProcessor.a.f55214e;
        this.f55259f = aVar;
        this.f55260g = aVar;
        this.f55261h = aVar;
        this.f55262i = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f55212a;
        this.f55265l = byteBuffer;
        this.f55266m = byteBuffer.asShortBuffer();
        this.f55267n = byteBuffer;
        this.f55256c = -1;
        this.f55255b = z10;
    }
}
