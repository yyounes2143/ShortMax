package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.s0;
import java.util.ArrayDeque;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AsynchronousMediaCodecCallback.java */
@RequiresApi(23)
/* loaded from: classes4.dex */
public final class e extends MediaCodec.Callback {

    /* renamed from: b  reason: collision with root package name */
    private final HandlerThread f17942b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f17943c;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: h  reason: collision with root package name */
    private MediaFormat f17948h;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: i  reason: collision with root package name */
    private MediaFormat f17949i;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: j  reason: collision with root package name */
    private MediaCodec.CodecException f17950j;
    @GuardedBy("lock")

    /* renamed from: k  reason: collision with root package name */
    private long f17951k;
    @GuardedBy("lock")

    /* renamed from: l  reason: collision with root package name */
    private boolean f17952l;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: m  reason: collision with root package name */
    private IllegalStateException f17953m;

    /* renamed from: a  reason: collision with root package name */
    private final Object f17941a = new Object();
    @GuardedBy("lock")

    /* renamed from: d  reason: collision with root package name */
    private final i f17944d = new i();
    @GuardedBy("lock")

    /* renamed from: e  reason: collision with root package name */
    private final i f17945e = new i();
    @GuardedBy("lock")

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque<MediaCodec.BufferInfo> f17946f = new ArrayDeque<>();
    @GuardedBy("lock")

    /* renamed from: g  reason: collision with root package name */
    private final ArrayDeque<MediaFormat> f17947g = new ArrayDeque<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(HandlerThread handlerThread) {
        this.f17942b = handlerThread;
    }

    @GuardedBy("lock")
    private void b(MediaFormat mediaFormat) {
        this.f17945e.a(-2);
        this.f17947g.add(mediaFormat);
    }

    @GuardedBy("lock")
    private void f() {
        if (!this.f17947g.isEmpty()) {
            this.f17949i = this.f17947g.getLast();
        }
        this.f17944d.b();
        this.f17945e.b();
        this.f17946f.clear();
        this.f17947g.clear();
        this.f17950j = null;
    }

    @GuardedBy("lock")
    private boolean i() {
        if (this.f17951k <= 0 && !this.f17952l) {
            return false;
        }
        return true;
    }

    @GuardedBy("lock")
    private void j() {
        k();
        l();
    }

    @GuardedBy("lock")
    private void k() {
        IllegalStateException illegalStateException = this.f17953m;
        if (illegalStateException == null) {
            return;
        }
        this.f17953m = null;
        throw illegalStateException;
    }

    @GuardedBy("lock")
    private void l() {
        MediaCodec.CodecException codecException = this.f17950j;
        if (codecException == null) {
            return;
        }
        this.f17950j = null;
        throw codecException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        synchronized (this.f17941a) {
            try {
                if (this.f17952l) {
                    return;
                }
                long j10 = this.f17951k - 1;
                this.f17951k = j10;
                if (j10 > 0) {
                    return;
                }
                if (j10 < 0) {
                    n(new IllegalStateException());
                } else {
                    f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void n(IllegalStateException illegalStateException) {
        synchronized (this.f17941a) {
            this.f17953m = illegalStateException;
        }
    }

    public int c() {
        synchronized (this.f17941a) {
            try {
                int i10 = -1;
                if (i()) {
                    return -1;
                }
                j();
                if (!this.f17944d.d()) {
                    i10 = this.f17944d.e();
                }
                return i10;
            } finally {
            }
        }
    }

    public int d(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f17941a) {
            try {
                if (i()) {
                    return -1;
                }
                j();
                if (this.f17945e.d()) {
                    return -1;
                }
                int e10 = this.f17945e.e();
                if (e10 >= 0) {
                    b7.a.i(this.f17948h);
                    MediaCodec.BufferInfo remove = this.f17946f.remove();
                    bufferInfo.set(remove.offset, remove.size, remove.presentationTimeUs, remove.flags);
                } else if (e10 == -2) {
                    this.f17948h = this.f17947g.remove();
                }
                return e10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e() {
        synchronized (this.f17941a) {
            this.f17951k++;
            ((Handler) s0.j(this.f17943c)).post(new Runnable() { // from class: com.google.android.exoplayer2.mediacodec.d
                @Override // java.lang.Runnable
                public final void run() {
                    e.this.m();
                }
            });
        }
    }

    public MediaFormat g() {
        MediaFormat mediaFormat;
        synchronized (this.f17941a) {
            try {
                mediaFormat = this.f17948h;
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
        if (this.f17943c == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        this.f17942b.start();
        Handler handler = new Handler(this.f17942b.getLooper());
        mediaCodec.setCallback(this, handler);
        this.f17943c = handler;
    }

    public void o() {
        synchronized (this.f17941a) {
            this.f17952l = true;
            this.f17942b.quit();
            f();
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f17941a) {
            this.f17950j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onInputBufferAvailable(MediaCodec mediaCodec, int i10) {
        synchronized (this.f17941a) {
            this.f17944d.a(i10);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputBufferAvailable(MediaCodec mediaCodec, int i10, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f17941a) {
            try {
                MediaFormat mediaFormat = this.f17949i;
                if (mediaFormat != null) {
                    b(mediaFormat);
                    this.f17949i = null;
                }
                this.f17945e.a(i10);
                this.f17946f.add(bufferInfo);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f17941a) {
            b(mediaFormat);
            this.f17949i = null;
        }
    }
}
