package io.bidmachine.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.i0;
import cn.m0;
import io.bidmachine.media3.exoplayer.mediacodec.h;
import io.bidmachine.media3.exoplayer.mediacodec.q;
import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: SynchronousMediaCodecAdapter.java */
/* loaded from: classes8.dex */
public final class q implements h {

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f56592a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final pn.c f56593b;

    /* compiled from: SynchronousMediaCodecAdapter.java */
    /* loaded from: classes8.dex */
    public static class b implements h.b {
        /* JADX WARN: Removed duplicated region for block: B:22:0x0045  */
        @Override // io.bidmachine.media3.exoplayer.mediacodec.h.b
        @android.annotation.SuppressLint({"WrongConstant"})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.media3.exoplayer.mediacodec.h b(io.bidmachine.media3.exoplayer.mediacodec.h.a r7) throws java.io.IOException {
            /*
                r6 = this;
                r0 = 0
                android.media.MediaCodec r1 = r6.c(r7)     // Catch: java.lang.RuntimeException -> L40 java.io.IOException -> L42
                java.lang.String r2 = "configureCodec"
                cn.i0.a(r2)     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                android.view.Surface r2 = r7.f56571d     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                if (r2 != 0) goto L22
                io.bidmachine.media3.exoplayer.mediacodec.j r3 = r7.f56568a     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                boolean r3 = r3.f56585k     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                if (r3 == 0) goto L22
                int r3 = cn.m0.f3614a     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                r4 = 35
                if (r3 < r4) goto L22
                r3 = 8
                goto L23
            L1d:
                r7 = move-exception
            L1e:
                r0 = r1
                goto L43
            L20:
                r7 = move-exception
                goto L1e
            L22:
                r3 = 0
            L23:
                android.media.MediaFormat r4 = r7.f56569b     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                android.media.MediaCrypto r5 = r7.f56572e     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                r1.configure(r4, r2, r5, r3)     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                cn.i0.b()     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                java.lang.String r2 = "startCodec"
                cn.i0.a(r2)     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                r1.start()     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                cn.i0.b()     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                io.bidmachine.media3.exoplayer.mediacodec.q r2 = new io.bidmachine.media3.exoplayer.mediacodec.q     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                pn.c r7 = r7.f56573f     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                r2.<init>(r1, r7)     // Catch: java.lang.RuntimeException -> L1d java.io.IOException -> L20
                return r2
            L40:
                r7 = move-exception
                goto L43
            L42:
                r7 = move-exception
            L43:
                if (r0 == 0) goto L48
                r0.release()
            L48:
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.mediacodec.q.b.b(io.bidmachine.media3.exoplayer.mediacodec.h$a):io.bidmachine.media3.exoplayer.mediacodec.h");
        }

        protected MediaCodec c(h.a aVar) throws IOException {
            cn.a.e(aVar.f56568a);
            String str = aVar.f56568a.f56575a;
            i0.a("createCodec:" + str);
            MediaCodec createByCodecName = MediaCodec.createByCodecName(str);
            i0.b();
            return createByCodecName;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(h.d dVar, MediaCodec mediaCodec, long j10, long j11) {
        dVar.a(this, j10, j11);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void a(Bundle bundle) {
        this.f56592a.setParameters(bundle);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void b(int i10, int i11, int i12, long j10, int i13) {
        this.f56592a.queueInputBuffer(i10, i11, i12, j10, i13);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void c(int i10, int i11, fn.c cVar, long j10, int i12) {
        this.f56592a.queueSecureInputBuffer(i10, i11, cVar.a(), j10, i12);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public boolean d() {
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void e(int i10, long j10) {
        this.f56592a.releaseOutputBuffer(i10, j10);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public int f(MediaCodec.BufferInfo bufferInfo) {
        int dequeueOutputBuffer;
        do {
            dequeueOutputBuffer = this.f56592a.dequeueOutputBuffer(bufferInfo, 0L);
        } while (dequeueOutputBuffer == -3);
        return dequeueOutputBuffer;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void flush() {
        this.f56592a.flush();
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void g(int i10, boolean z10) {
        this.f56592a.releaseOutputBuffer(i10, z10);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public MediaFormat h() {
        return this.f56592a.getOutputFormat();
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    @Nullable
    public ByteBuffer i(int i10) {
        return this.f56592a.getInputBuffer(i10);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    @RequiresApi(23)
    public void j(Surface surface) {
        this.f56592a.setOutputSurface(surface);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public int k() {
        return this.f56592a.dequeueInputBuffer(0L);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    @Nullable
    public ByteBuffer l(int i10) {
        return this.f56592a.getOutputBuffer(i10);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    @RequiresApi(35)
    public void n() {
        this.f56592a.detachOutputSurface();
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    @RequiresApi(23)
    public void o(final h.d dVar, Handler handler) {
        this.f56592a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: pn.g
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
                q.this.q(dVar, mediaCodec, j10, j11);
            }
        }, handler);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void release() {
        pn.c cVar;
        pn.c cVar2;
        try {
            int i10 = m0.f3614a;
            if (i10 >= 30 && i10 < 33) {
                this.f56592a.stop();
            }
            if (i10 >= 35 && (cVar2 = this.f56593b) != null) {
                cVar2.d(this.f56592a);
            }
            this.f56592a.release();
        } catch (Throwable th2) {
            if (m0.f3614a >= 35 && (cVar = this.f56593b) != null) {
                cVar.d(this.f56592a);
            }
            this.f56592a.release();
            throw th2;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h
    public void setVideoScalingMode(int i10) {
        this.f56592a.setVideoScalingMode(i10);
    }

    private q(MediaCodec mediaCodec, @Nullable pn.c cVar) {
        this.f56592a = mediaCodec;
        this.f56593b = cVar;
        if (m0.f3614a < 35 || cVar == null) {
            return;
        }
        cVar.b(mediaCodec);
    }
}
