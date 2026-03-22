package io.bidmachine.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.CircularIntArray;
import cn.m0;
import io.bidmachine.media3.exoplayer.mediacodec.h;
import java.util.ArrayDeque;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AsynchronousMediaCodecCallback.java */
@RequiresApi(23)
/* loaded from: classes8.dex */
public final class e extends MediaCodec.Callback {

    /* renamed from: b  reason: collision with root package name */
    private final HandlerThread f56546b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f56547c;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: h  reason: collision with root package name */
    private MediaFormat f56552h;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: i  reason: collision with root package name */
    private MediaFormat f56553i;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: j  reason: collision with root package name */
    private MediaCodec.CodecException f56554j;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: k  reason: collision with root package name */
    private MediaCodec.CryptoException f56555k;
    @GuardedBy("lock")

    /* renamed from: l  reason: collision with root package name */
    private long f56556l;
    @GuardedBy("lock")

    /* renamed from: m  reason: collision with root package name */
    private boolean f56557m;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: n  reason: collision with root package name */
    private IllegalStateException f56558n;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: o  reason: collision with root package name */
    private h.c f56559o;

    /* renamed from: a  reason: collision with root package name */
    private final Object f56545a = new Object();
    @GuardedBy("lock")

    /* renamed from: d  reason: collision with root package name */
    private final CircularIntArray f56548d = new CircularIntArray();
    @GuardedBy("lock")

    /* renamed from: e  reason: collision with root package name */
    private final CircularIntArray f56549e = new CircularIntArray();
    @GuardedBy("lock")

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque<MediaCodec.BufferInfo> f56550f = new ArrayDeque<>();
    @GuardedBy("lock")

    /* renamed from: g  reason: collision with root package name */
    private final ArrayDeque<MediaFormat> f56551g = new ArrayDeque<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(HandlerThread handlerThread) {
        this.f56546b = handlerThread;
    }

    @GuardedBy("lock")
    private void b(MediaFormat mediaFormat) {
        this.f56549e.addLast(-2);
        this.f56551g.add(mediaFormat);
    }

    @GuardedBy("lock")
    private void f() {
        if (!this.f56551g.isEmpty()) {
            this.f56553i = this.f56551g.getLast();
        }
        this.f56548d.clear();
        this.f56549e.clear();
        this.f56550f.clear();
        this.f56551g.clear();
    }

    @GuardedBy("lock")
    private boolean i() {
        if (this.f56556l <= 0 && !this.f56557m) {
            return false;
        }
        return true;
    }

    @GuardedBy("lock")
    private void j() {
        k();
        m();
        l();
    }

    @GuardedBy("lock")
    private void k() {
        IllegalStateException illegalStateException = this.f56558n;
        if (illegalStateException == null) {
            return;
        }
        this.f56558n = null;
        throw illegalStateException;
    }

    @GuardedBy("lock")
    private void l() {
        MediaCodec.CryptoException cryptoException = this.f56555k;
        if (cryptoException == null) {
            return;
        }
        this.f56555k = null;
        throw cryptoException;
    }

    @GuardedBy("lock")
    private void m() {
        MediaCodec.CodecException codecException = this.f56554j;
        if (codecException == null) {
            return;
        }
        this.f56554j = null;
        throw codecException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        synchronized (this.f56545a) {
            try {
                if (this.f56557m) {
                    return;
                }
                long j10 = this.f56556l - 1;
                this.f56556l = j10;
                if (j10 > 0) {
                    return;
                }
                if (j10 < 0) {
                    o(new IllegalStateException());
                } else {
                    f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void o(IllegalStateException illegalStateException) {
        synchronized (this.f56545a) {
            this.f56558n = illegalStateException;
        }
    }

    public int c() {
        synchronized (this.f56545a) {
            try {
                j();
                int i10 = -1;
                if (i()) {
                    return -1;
                }
                if (!this.f56548d.isEmpty()) {
                    i10 = this.f56548d.popFirst();
                }
                return i10;
            } finally {
            }
        }
    }

    public int d(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f56545a) {
            try {
                j();
                if (i()) {
                    return -1;
                }
                if (this.f56549e.isEmpty()) {
                    return -1;
                }
                int popFirst = this.f56549e.popFirst();
                if (popFirst >= 0) {
                    cn.a.i(this.f56552h);
                    MediaCodec.BufferInfo remove = this.f56550f.remove();
                    bufferInfo.set(remove.offset, remove.size, remove.presentationTimeUs, remove.flags);
                } else if (popFirst == -2) {
                    this.f56552h = this.f56551g.remove();
                }
                return popFirst;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e() {
        synchronized (this.f56545a) {
            this.f56556l++;
            ((Handler) m0.i(this.f56547c)).post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.mediacodec.d
                @Override // java.lang.Runnable
                public final void run() {
                    e.this.n();
                }
            });
        }
    }

    public MediaFormat g() {
        MediaFormat mediaFormat;
        synchronized (this.f56545a) {
            try {
                mediaFormat = this.f56552h;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return mediaFormat;
    }

    public void h(MediaCodec mediaCodec) {
        boolean z10;
        if (this.f56547c == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        this.f56546b.start();
        Handler handler = new Handler(this.f56546b.getLooper());
        mediaCodec.setCallback(this, handler);
        this.f56547c = handler;
    }

    public void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.f56545a) {
            this.f56555k = cryptoException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f56545a) {
            this.f56554j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onInputBufferAvailable(MediaCodec mediaCodec, int i10) {
        synchronized (this.f56545a) {
            try {
                this.f56548d.addLast(i10);
                h.c cVar = this.f56559o;
                if (cVar != null) {
                    cVar.a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputBufferAvailable(MediaCodec mediaCodec, int i10, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f56545a) {
            try {
                MediaFormat mediaFormat = this.f56553i;
                if (mediaFormat != null) {
                    b(mediaFormat);
                    this.f56553i = null;
                }
                this.f56549e.addLast(i10);
                this.f56550f.add(bufferInfo);
                h.c cVar = this.f56559o;
                if (cVar != null) {
                    cVar.b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f56545a) {
            b(mediaFormat);
            this.f56553i = null;
        }
    }

    public void p(h.c cVar) {
        synchronized (this.f56545a) {
            this.f56559o = cVar;
        }
    }

    public void q() {
        synchronized (this.f56545a) {
            this.f56557m = true;
            this.f56546b.quit();
            f();
        }
    }
}
