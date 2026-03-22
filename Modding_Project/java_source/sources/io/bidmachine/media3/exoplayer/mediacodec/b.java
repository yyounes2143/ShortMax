package io.bidmachine.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.i0;
import cn.m0;
import io.bidmachine.media3.exoplayer.mediacodec.b;
import io.bidmachine.media3.exoplayer.mediacodec.h;
import java.io.IOException;
import java.nio.ByteBuffer;
import zm.u;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AsynchronousMediaCodecAdapter.java */
@RequiresApi(23)
/* loaded from: classes8.dex */
public final class b implements h {

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f56520a;

    /* renamed from: b  reason: collision with root package name */
    private final e f56521b;

    /* renamed from: c  reason: collision with root package name */
    private final i f56522c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final pn.c f56523d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f56524e;

    /* renamed from: f  reason: collision with root package name */
    private int f56525f;

    /* compiled from: AsynchronousMediaCodecAdapter.java */
    /* renamed from: io.bidmachine.media3.exoplayer.mediacodec.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0805b implements h.b {

        /* renamed from: b  reason: collision with root package name */
        private final h7.n<HandlerThread> f56526b;

        /* renamed from: c  reason: collision with root package name */
        private final h7.n<HandlerThread> f56527c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f56528d;

        public C0805b(final int i10) {
            this(new h7.n() { // from class: pn.a
                @Override // h7.n
                public final Object get() {
                    HandlerThread g10;
                    g10 = b.C0805b.g(i10);
                    return g10;
                }
            }, new h7.n() { // from class: pn.b
                @Override // h7.n
                public final Object get() {
                    HandlerThread h10;
                    h10 = b.C0805b.h(i10);
                    return h10;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread g(int i10) {
            return new HandlerThread(b.t(i10));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread h(int i10) {
            return new HandlerThread(b.u(i10));
        }

        @ChecksSdkIntAtLeast(api = 34)
        private static boolean i(io.bidmachine.media3.common.a aVar) {
            int i10 = m0.f3614a;
            if (i10 < 34) {
                return false;
            }
            if (i10 < 35 && !u.t(aVar.f55174o)) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.media3.exoplayer.mediacodec.h.b
        /* renamed from: e */
        public b b(h.a aVar) throws IOException {
            MediaCodec mediaCodec;
            i cVar;
            int i10;
            String str = aVar.f56568a.f56575a;
            b bVar = null;
            try {
                i0.a("createCodec:" + str);
                mediaCodec = MediaCodec.createByCodecName(str);
                try {
                    if (this.f56528d && i(aVar.f56570c)) {
                        cVar = new r(mediaCodec);
                        i10 = 4;
                    } else {
                        cVar = new c(mediaCodec, this.f56527c.get());
                        i10 = 0;
                    }
                    i iVar = cVar;
                    int i11 = i10;
                    b bVar2 = new b(mediaCodec, this.f56526b.get(), iVar, aVar.f56573f);
                    try {
                        i0.b();
                        Surface surface = aVar.f56571d;
                        if (surface == null && aVar.f56568a.f56585k && m0.f3614a >= 35) {
                            i11 |= 8;
                        }
                        bVar2.w(aVar.f56569b, surface, aVar.f56572e, i11);
                        return bVar2;
                    } catch (Exception e10) {
                        e = e10;
                        bVar = bVar2;
                        if (bVar == null) {
                            if (mediaCodec != null) {
                                mediaCodec.release();
                            }
                        } else {
                            bVar.release();
                        }
                        throw e;
                    }
                } catch (Exception e11) {
                    e = e11;
                }
            } catch (Exception e12) {
                e = e12;
                mediaCodec = null;
            }
        }

        public void f(boolean z10) {
            this.f56528d = z10;
        }

        public C0805b(h7.n<HandlerThread> nVar, h7.n<HandlerThread> nVar2) {
            this.f56526b = nVar;
            this.f56527c = nVar2;
            this.f56528d = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String t(int i10) {
        return v(i10, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String u(int i10) {
        return v(i10, "ExoPlayer:MediaCodecQueueingThread:");
    }

    private static String v(int i10, String str) {
        StringBuilder sb2 = new StringBuilder(str);
        if (i10 == 1) {
            sb2.append("Audio");
        } else if (i10 == 2) {
            sb2.append("Video");
        } else {
            sb2.append("Unknown(");
            sb2.append(i10);
            sb2.append(")");
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(@Nullable MediaFormat mediaFormat, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i10) {
        pn.c cVar;
        this.f56521b.h(this.f56520a);
        i0.a("configureCodec");
        this.f56520a.configure(mediaFormat, surface, mediaCrypto, i10);
        i0.b();
        this.f56522c.start();
        i0.a("startCodec");
        this.f56520a.start();
        i0.b();
        if (m0.f3614a >= 35 && (cVar = this.f56523d) != null) {
            cVar.b(this.f56520a);
        }
        this.f56525f = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(h.d dVar, MediaCodec mediaCodec, long j10, long j11) {
        dVar.a(this, j10, j11);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void a(Bundle bundle) {
        this.f56522c.a(bundle);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void b(int i10, int i11, int i12, long j10, int i13) {
        this.f56522c.b(i10, i11, i12, j10, i13);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void c(int i10, int i11, fn.c cVar, long j10, int i12) {
        this.f56522c.c(i10, i11, cVar, j10, i12);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public boolean d() {
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void e(int i10, long j10) {
        this.f56520a.releaseOutputBuffer(i10, j10);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public int f(MediaCodec.BufferInfo bufferInfo) {
        this.f56522c.d();
        return this.f56521b.d(bufferInfo);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void flush() {
        this.f56522c.flush();
        this.f56520a.flush();
        this.f56521b.e();
        this.f56520a.start();
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void g(int i10, boolean z10) {
        this.f56520a.releaseOutputBuffer(i10, z10);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public MediaFormat h() {
        return this.f56521b.g();
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    @Nullable
    public ByteBuffer i(int i10) {
        return this.f56520a.getInputBuffer(i10);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void j(Surface surface) {
        this.f56520a.setOutputSurface(surface);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public int k() {
        this.f56522c.d();
        return this.f56521b.c();
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    @Nullable
    public ByteBuffer l(int i10) {
        return this.f56520a.getOutputBuffer(i10);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public boolean m(h.c cVar) {
        this.f56521b.p(cVar);
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    @RequiresApi(35)
    public void n() {
        this.f56520a.detachOutputSurface();
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void o(final h.d dVar, Handler handler) {
        this.f56520a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: io.bidmachine.media3.exoplayer.mediacodec.a
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
                b.this.x(dVar, mediaCodec, j10, j11);
            }
        }, handler);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void release() {
        pn.c cVar;
        pn.c cVar2;
        try {
            if (this.f56525f == 1) {
                this.f56522c.shutdown();
                this.f56521b.q();
            }
            this.f56525f = 2;
            if (!this.f56524e) {
                try {
                    int i10 = m0.f3614a;
                    if (i10 >= 30 && i10 < 33) {
                        this.f56520a.stop();
                    }
                    if (i10 >= 35 && (cVar2 = this.f56523d) != null) {
                        cVar2.d(this.f56520a);
                    }
                    this.f56520a.release();
                    this.f56524e = true;
                } finally {
                }
            }
        } catch (Throwable th2) {
            if (!this.f56524e) {
                try {
                    int i11 = m0.f3614a;
                    if (i11 >= 30 && i11 < 33) {
                        this.f56520a.stop();
                    }
                    if (i11 >= 35 && (cVar = this.f56523d) != null) {
                        cVar.d(this.f56520a);
                    }
                    this.f56520a.release();
                    this.f56524e = true;
                } finally {
                }
            }
            throw th2;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void setVideoScalingMode(int i10) {
        this.f56520a.setVideoScalingMode(i10);
    }

    private b(MediaCodec mediaCodec, HandlerThread handlerThread, i iVar, @Nullable pn.c cVar) {
        this.f56520a = mediaCodec;
        this.f56521b = new e(handlerThread);
        this.f56522c = iVar;
        this.f56523d = cVar;
        this.f56525f = 0;
    }
}
