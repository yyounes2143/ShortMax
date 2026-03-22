package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import b7.s0;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: AsynchronousMediaCodecBufferEnqueuer.java */
@RequiresApi(23)
/* loaded from: classes4.dex */
class c {
    @GuardedBy("MESSAGE_PARAMS_INSTANCE_POOL")

    /* renamed from: g  reason: collision with root package name */
    private static final ArrayDeque<b> f17925g = new ArrayDeque<>();

    /* renamed from: h  reason: collision with root package name */
    private static final Object f17926h = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f17927a;

    /* renamed from: b  reason: collision with root package name */
    private final HandlerThread f17928b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f17929c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference<RuntimeException> f17930d;

    /* renamed from: e  reason: collision with root package name */
    private final b7.g f17931e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f17932f;

    /* compiled from: AsynchronousMediaCodecBufferEnqueuer.java */
    /* loaded from: classes4.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            c.this.f(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AsynchronousMediaCodecBufferEnqueuer.java */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f17934a;

        /* renamed from: b  reason: collision with root package name */
        public int f17935b;

        /* renamed from: c  reason: collision with root package name */
        public int f17936c;

        /* renamed from: d  reason: collision with root package name */
        public final MediaCodec.CryptoInfo f17937d = new MediaCodec.CryptoInfo();

        /* renamed from: e  reason: collision with root package name */
        public long f17938e;

        /* renamed from: f  reason: collision with root package name */
        public int f17939f;

        b() {
        }

        public void a(int i10, int i11, int i12, long j10, int i13) {
            this.f17934a = i10;
            this.f17935b = i11;
            this.f17936c = i12;
            this.f17938e = j10;
            this.f17939f = i13;
        }
    }

    public c(MediaCodec mediaCodec, HandlerThread handlerThread) {
        this(mediaCodec, handlerThread, new b7.g());
    }

    private void b() throws InterruptedException {
        this.f17931e.c();
        ((Handler) b7.a.e(this.f17929c)).obtainMessage(2).sendToTarget();
        this.f17931e.a();
    }

    private static void c(r5.c cVar, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = cVar.f65566f;
        cryptoInfo.numBytesOfClearData = e(cVar.f65564d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = e(cVar.f65565e, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) b7.a.e(d(cVar.f65562b, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) b7.a.e(d(cVar.f65561a, cryptoInfo.iv));
        cryptoInfo.mode = cVar.f65563c;
        if (s0.f2506a >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(cVar.f65567g, cVar.f65568h));
        }
    }

    @Nullable
    private static byte[] d(@Nullable byte[] bArr, @Nullable byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 != null && bArr2.length >= bArr.length) {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    @Nullable
    private static int[] e(@Nullable int[] iArr, @Nullable int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 != null && iArr2.length >= iArr.length) {
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            return iArr2;
        }
        return Arrays.copyOf(iArr, iArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Message message) {
        b bVar;
        int i10 = message.what;
        if (i10 != 0) {
            if (i10 != 1) {
                bVar = null;
                if (i10 != 2) {
                    androidx.compose.animation.core.a.a(this.f17930d, null, new IllegalStateException(String.valueOf(message.what)));
                } else {
                    this.f17931e.e();
                }
            } else {
                bVar = (b) message.obj;
                h(bVar.f17934a, bVar.f17935b, bVar.f17937d, bVar.f17938e, bVar.f17939f);
            }
        } else {
            bVar = (b) message.obj;
            g(bVar.f17934a, bVar.f17935b, bVar.f17936c, bVar.f17938e, bVar.f17939f);
        }
        if (bVar != null) {
            o(bVar);
        }
    }

    private void g(int i10, int i11, int i12, long j10, int i13) {
        try {
            this.f17927a.queueInputBuffer(i10, i11, i12, j10, i13);
        } catch (RuntimeException e10) {
            androidx.compose.animation.core.a.a(this.f17930d, null, e10);
        }
    }

    private void h(int i10, int i11, MediaCodec.CryptoInfo cryptoInfo, long j10, int i12) {
        try {
            synchronized (f17926h) {
                this.f17927a.queueSecureInputBuffer(i10, i11, cryptoInfo, j10, i12);
            }
        } catch (RuntimeException e10) {
            androidx.compose.animation.core.a.a(this.f17930d, null, e10);
        }
    }

    private void j() throws InterruptedException {
        ((Handler) b7.a.e(this.f17929c)).removeCallbacksAndMessages(null);
        b();
    }

    private static b k() {
        ArrayDeque<b> arrayDeque = f17925g;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new b();
                }
                return arrayDeque.removeFirst();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void l() {
        RuntimeException andSet = this.f17930d.getAndSet(null);
        if (andSet == null) {
            return;
        }
        throw andSet;
    }

    private static void o(b bVar) {
        ArrayDeque<b> arrayDeque = f17925g;
        synchronized (arrayDeque) {
            arrayDeque.add(bVar);
        }
    }

    public void i() {
        if (this.f17932f) {
            try {
                j();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e10);
            }
        }
    }

    public void m(int i10, int i11, int i12, long j10, int i13) {
        l();
        b k10 = k();
        k10.a(i10, i11, i12, j10, i13);
        ((Handler) s0.j(this.f17929c)).obtainMessage(0, k10).sendToTarget();
    }

    public void n(int i10, int i11, r5.c cVar, long j10, int i12) {
        l();
        b k10 = k();
        k10.a(i10, i11, 0, j10, i12);
        c(cVar, k10.f17937d);
        ((Handler) s0.j(this.f17929c)).obtainMessage(1, k10).sendToTarget();
    }

    public void p() {
        if (this.f17932f) {
            i();
            this.f17928b.quit();
        }
        this.f17932f = false;
    }

    public void q() {
        if (!this.f17932f) {
            this.f17928b.start();
            this.f17929c = new a(this.f17928b.getLooper());
            this.f17932f = true;
        }
    }

    public void r() throws InterruptedException {
        b();
    }

    @VisibleForTesting
    c(MediaCodec mediaCodec, HandlerThread handlerThread, b7.g gVar) {
        this.f17927a = mediaCodec;
        this.f17928b = handlerThread;
        this.f17931e = gVar;
        this.f17930d = new AtomicReference<>();
    }
}
