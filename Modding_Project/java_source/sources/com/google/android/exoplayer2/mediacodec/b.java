package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import b7.p0;
import com.google.android.exoplayer2.mediacodec.b;
import com.google.android.exoplayer2.mediacodec.j;
import java.io.IOException;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AsynchronousMediaCodecAdapter.java */
@RequiresApi(23)
/* loaded from: classes4.dex */
public final class b implements j {

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f17916a;

    /* renamed from: b  reason: collision with root package name */
    private final e f17917b;

    /* renamed from: c  reason: collision with root package name */
    private final c f17918c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f17919d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f17920e;

    /* renamed from: f  reason: collision with root package name */
    private int f17921f;

    /* compiled from: AsynchronousMediaCodecAdapter.java */
    /* renamed from: com.google.android.exoplayer2.mediacodec.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0289b implements j.b {

        /* renamed from: a  reason: collision with root package name */
        private final h7.n<HandlerThread> f17922a;

        /* renamed from: b  reason: collision with root package name */
        private final h7.n<HandlerThread> f17923b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f17924c;

        public C0289b(final int i10, boolean z10) {
            this(new h7.n() { // from class: f6.a
                @Override // h7.n
                public final Object get() {
                    HandlerThread e10;
                    e10 = b.C0289b.e(i10);
                    return e10;
                }
            }, new h7.n() { // from class: f6.b
                @Override // h7.n
                public final Object get() {
                    HandlerThread f10;
                    f10 = b.C0289b.f(i10);
                    return f10;
                }
            }, z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread e(int i10) {
            return new HandlerThread(b.r(i10));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread f(int i10) {
            return new HandlerThread(b.s(i10));
        }

        @Override // com.google.android.exoplayer2.mediacodec.j.b
        /* renamed from: d */
        public b a(j.a aVar) throws IOException {
            MediaCodec mediaCodec;
            b bVar;
            String str = aVar.f17967a.f17973a;
            b bVar2 = null;
            try {
                p0.a("createCodec:" + str);
                mediaCodec = MediaCodec.createByCodecName(str);
                try {
                    bVar = new b(mediaCodec, this.f17922a.get(), this.f17923b.get(), this.f17924c);
                } catch (Exception e10) {
                    e = e10;
                }
            } catch (Exception e11) {
                e = e11;
                mediaCodec = null;
            }
            try {
                p0.c();
                bVar.u(aVar.f17968b, aVar.f17970d, aVar.f17971e, aVar.f17972f);
                return bVar;
            } catch (Exception e12) {
                e = e12;
                bVar2 = bVar;
                if (bVar2 == null) {
                    if (mediaCodec != null) {
                        mediaCodec.release();
                    }
                } else {
                    bVar2.release();
                }
                throw e;
            }
        }

        @VisibleForTesting
        C0289b(h7.n<HandlerThread> nVar, h7.n<HandlerThread> nVar2, boolean z10) {
            this.f17922a = nVar;
            this.f17923b = nVar2;
            this.f17924c = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String r(int i10) {
        return t(i10, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String s(int i10) {
        return t(i10, "ExoPlayer:MediaCodecQueueingThread:");
    }

    private static String t(int i10, String str) {
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
    public void u(@Nullable MediaFormat mediaFormat, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i10) {
        this.f17917b.h(this.f17916a);
        p0.a("configureCodec");
        this.f17916a.configure(mediaFormat, surface, mediaCrypto, i10);
        p0.c();
        this.f17918c.q();
        p0.a("startCodec");
        this.f17916a.start();
        p0.c();
        this.f17921f = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(j.c cVar, MediaCodec mediaCodec, long j10, long j11) {
        cVar.a(this, j10, j11);
    }

    private void w() {
        if (this.f17919d) {
            try {
                this.f17918c.r();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e10);
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void a(Bundle bundle) {
        w();
        this.f17916a.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void b(int i10, int i11, int i12, long j10, int i13) {
        this.f17918c.m(i10, i11, i12, j10, i13);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public boolean d() {
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void e(int i10, long j10) {
        this.f17916a.releaseOutputBuffer(i10, j10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public int f(MediaCodec.BufferInfo bufferInfo) {
        return this.f17917b.d(bufferInfo);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void flush() {
        this.f17918c.i();
        this.f17916a.flush();
        this.f17917b.e();
        this.f17916a.start();
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void g(int i10, boolean z10) {
        this.f17916a.releaseOutputBuffer(i10, z10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public MediaFormat h() {
        return this.f17917b.g();
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    @Nullable
    public ByteBuffer i(int i10) {
        return this.f17916a.getInputBuffer(i10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void j(Surface surface) {
        w();
        this.f17916a.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public int k() {
        return this.f17917b.c();
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    @Nullable
    public ByteBuffer l(int i10) {
        return this.f17916a.getOutputBuffer(i10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void m(int i10, int i11, r5.c cVar, long j10, int i12) {
        this.f17918c.n(i10, i11, cVar, j10, i12);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void n(final j.c cVar, Handler handler) {
        w();
        this.f17916a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.google.android.exoplayer2.mediacodec.a
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
                b.this.v(cVar, mediaCodec, j10, j11);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void release() {
        try {
            if (this.f17921f == 1) {
                this.f17918c.p();
                this.f17917b.o();
            }
            this.f17921f = 2;
            if (!this.f17920e) {
                this.f17916a.release();
                this.f17920e = true;
            }
        } catch (Throwable th2) {
            if (!this.f17920e) {
                this.f17916a.release();
                this.f17920e = true;
            }
            throw th2;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void setVideoScalingMode(int i10) {
        w();
        this.f17916a.setVideoScalingMode(i10);
    }

    private b(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z10) {
        this.f17916a = mediaCodec;
        this.f17917b = new e(handlerThread);
        this.f17918c = new c(mediaCodec, handlerThread2);
        this.f17919d = z10;
        this.f17921f = 0;
    }
}
