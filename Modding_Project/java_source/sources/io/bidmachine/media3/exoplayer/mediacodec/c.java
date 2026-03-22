package io.bidmachine.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import cn.m0;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: AsynchronousMediaCodecBufferEnqueuer.java */
@RequiresApi(23)
/* loaded from: classes8.dex */
class c implements i {
    @GuardedBy("MESSAGE_PARAMS_INSTANCE_POOL")

    /* renamed from: g  reason: collision with root package name */
    private static final ArrayDeque<b> f56529g = new ArrayDeque<>();

    /* renamed from: h  reason: collision with root package name */
    private static final Object f56530h = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f56531a;

    /* renamed from: b  reason: collision with root package name */
    private final HandlerThread f56532b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f56533c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference<RuntimeException> f56534d;

    /* renamed from: e  reason: collision with root package name */
    private final cn.k f56535e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f56536f;

    /* compiled from: AsynchronousMediaCodecBufferEnqueuer.java */
    /* loaded from: classes8.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            c.this.j(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AsynchronousMediaCodecBufferEnqueuer.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f56538a;

        /* renamed from: b  reason: collision with root package name */
        public int f56539b;

        /* renamed from: c  reason: collision with root package name */
        public int f56540c;

        /* renamed from: d  reason: collision with root package name */
        public final MediaCodec.CryptoInfo f56541d = new MediaCodec.CryptoInfo();

        /* renamed from: e  reason: collision with root package name */
        public long f56542e;

        /* renamed from: f  reason: collision with root package name */
        public int f56543f;

        b() {
        }

        public void a(int i10, int i11, int i12, long j10, int i13) {
            this.f56538a = i10;
            this.f56539b = i11;
            this.f56540c = i12;
            this.f56542e = j10;
            this.f56543f = i13;
        }
    }

    public c(MediaCodec mediaCodec, HandlerThread handlerThread) {
        this(mediaCodec, handlerThread, new cn.k());
    }

    private void f() throws InterruptedException {
        this.f56535e.c();
        ((Handler) cn.a.e(this.f56533c)).obtainMessage(3).sendToTarget();
        this.f56535e.a();
    }

    private static void g(fn.c cVar, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = cVar.f51834f;
        cryptoInfo.numBytesOfClearData = i(cVar.f51832d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = i(cVar.f51833e, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) cn.a.e(h(cVar.f51830b, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) cn.a.e(h(cVar.f51829a, cryptoInfo.iv));
        cryptoInfo.mode = cVar.f51831c;
        if (m0.f3614a >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(cVar.f51835g, cVar.f51836h));
        }
    }

    @Nullable
    private static byte[] h(@Nullable byte[] bArr, @Nullable byte[] bArr2) {
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
    private static int[] i(@Nullable int[] iArr, @Nullable int[] iArr2) {
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
    public void j(Message message) {
        b bVar;
        int i10 = message.what;
        if (i10 != 1) {
            if (i10 != 2) {
                bVar = null;
                if (i10 != 3) {
                    if (i10 != 4) {
                        androidx.compose.animation.core.a.a(this.f56534d, null, new IllegalStateException(String.valueOf(message.what)));
                    } else {
                        m((Bundle) message.obj);
                    }
                } else {
                    this.f56535e.e();
                }
            } else {
                bVar = (b) message.obj;
                l(bVar.f56538a, bVar.f56539b, bVar.f56541d, bVar.f56542e, bVar.f56543f);
            }
        } else {
            bVar = (b) message.obj;
            k(bVar.f56538a, bVar.f56539b, bVar.f56540c, bVar.f56542e, bVar.f56543f);
        }
        if (bVar != null) {
            p(bVar);
        }
    }

    private void k(int i10, int i11, int i12, long j10, int i13) {
        try {
            this.f56531a.queueInputBuffer(i10, i11, i12, j10, i13);
        } catch (RuntimeException e10) {
            androidx.compose.animation.core.a.a(this.f56534d, null, e10);
        }
    }

    private void l(int i10, int i11, MediaCodec.CryptoInfo cryptoInfo, long j10, int i12) {
        try {
            synchronized (f56530h) {
                this.f56531a.queueSecureInputBuffer(i10, i11, cryptoInfo, j10, i12);
            }
        } catch (RuntimeException e10) {
            androidx.compose.animation.core.a.a(this.f56534d, null, e10);
        }
    }

    private void m(Bundle bundle) {
        try {
            this.f56531a.setParameters(bundle);
        } catch (RuntimeException e10) {
            androidx.compose.animation.core.a.a(this.f56534d, null, e10);
        }
    }

    private void n() throws InterruptedException {
        ((Handler) cn.a.e(this.f56533c)).removeCallbacksAndMessages(null);
        f();
    }

    private static b o() {
        ArrayDeque<b> arrayDeque = f56529g;
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

    private static void p(b bVar) {
        ArrayDeque<b> arrayDeque = f56529g;
        synchronized (arrayDeque) {
            arrayDeque.add(bVar);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.i
    public void a(Bundle bundle) {
        d();
        ((Handler) m0.i(this.f56533c)).obtainMessage(4, bundle).sendToTarget();
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.i
    public void b(int i10, int i11, int i12, long j10, int i13) {
        d();
        b o10 = o();
        o10.a(i10, i11, i12, j10, i13);
        ((Handler) m0.i(this.f56533c)).obtainMessage(1, o10).sendToTarget();
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.i
    public void c(int i10, int i11, fn.c cVar, long j10, int i12) {
        d();
        b o10 = o();
        o10.a(i10, i11, 0, j10, i12);
        g(cVar, o10.f56541d);
        ((Handler) m0.i(this.f56533c)).obtainMessage(2, o10).sendToTarget();
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.i
    public void d() {
        RuntimeException andSet = this.f56534d.getAndSet(null);
        if (andSet == null) {
            return;
        }
        throw andSet;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.i
    public void flush() {
        if (this.f56536f) {
            try {
                n();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e10);
            }
        }
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.i
    public void shutdown() {
        if (this.f56536f) {
            flush();
            this.f56532b.quit();
        }
        this.f56536f = false;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.i
    public void start() {
        if (!this.f56536f) {
            this.f56532b.start();
            this.f56533c = new a(this.f56532b.getLooper());
            this.f56536f = true;
        }
    }

    @VisibleForTesting
    c(MediaCodec mediaCodec, HandlerThread handlerThread, cn.k kVar) {
        this.f56531a = mediaCodec;
        this.f56532b = handlerThread;
        this.f56535e = kVar;
        this.f56534d = new AtomicReference<>();
    }
}
