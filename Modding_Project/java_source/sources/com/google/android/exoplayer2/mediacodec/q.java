package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.p0;
import b7.s0;
import com.google.android.exoplayer2.mediacodec.j;
import com.google.android.exoplayer2.mediacodec.q;
import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: SynchronousMediaCodecAdapter.java */
/* loaded from: classes4.dex */
public final class q implements j {

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f17987a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer[] f17988b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ByteBuffer[] f17989c;

    /* compiled from: SynchronousMediaCodecAdapter.java */
    /* loaded from: classes4.dex */
    public static class b implements j.b {
        @Override // com.google.android.exoplayer2.mediacodec.j.b
        public j a(j.a aVar) throws IOException {
            MediaCodec b10;
            MediaCodec mediaCodec = null;
            try {
                b10 = b(aVar);
            } catch (IOException e10) {
                e = e10;
            } catch (RuntimeException e11) {
                e = e11;
            }
            try {
                p0.a("configureCodec");
                b10.configure(aVar.f17968b, aVar.f17970d, aVar.f17971e, aVar.f17972f);
                p0.c();
                p0.a("startCodec");
                b10.start();
                p0.c();
                return new q(b10);
            } catch (IOException | RuntimeException e12) {
                e = e12;
                mediaCodec = b10;
                if (mediaCodec != null) {
                    mediaCodec.release();
                }
                throw e;
            }
        }

        protected MediaCodec b(j.a aVar) throws IOException {
            b7.a.e(aVar.f17967a);
            String str = aVar.f17967a.f17973a;
            p0.a("createCodec:" + str);
            MediaCodec createByCodecName = MediaCodec.createByCodecName(str);
            p0.c();
            return createByCodecName;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(j.c cVar, MediaCodec mediaCodec, long j10, long j11) {
        cVar.a(this, j10, j11);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    @RequiresApi(19)
    public void a(Bundle bundle) {
        this.f17987a.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void b(int i10, int i11, int i12, long j10, int i13) {
        this.f17987a.queueInputBuffer(i10, i11, i12, j10, i13);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public boolean d() {
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    @RequiresApi(21)
    public void e(int i10, long j10) {
        this.f17987a.releaseOutputBuffer(i10, j10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public int f(MediaCodec.BufferInfo bufferInfo) {
        int dequeueOutputBuffer;
        do {
            dequeueOutputBuffer = this.f17987a.dequeueOutputBuffer(bufferInfo, 0L);
            if (dequeueOutputBuffer == -3 && s0.f2506a < 21) {
                this.f17989c = this.f17987a.getOutputBuffers();
                continue;
            }
        } while (dequeueOutputBuffer == -3);
        return dequeueOutputBuffer;
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void flush() {
        this.f17987a.flush();
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void g(int i10, boolean z10) {
        this.f17987a.releaseOutputBuffer(i10, z10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public MediaFormat h() {
        return this.f17987a.getOutputFormat();
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    @Nullable
    public ByteBuffer i(int i10) {
        if (s0.f2506a >= 21) {
            return this.f17987a.getInputBuffer(i10);
        }
        return ((ByteBuffer[]) s0.j(this.f17988b))[i10];
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    @RequiresApi(23)
    public void j(Surface surface) {
        this.f17987a.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public int k() {
        return this.f17987a.dequeueInputBuffer(0L);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    @Nullable
    public ByteBuffer l(int i10) {
        if (s0.f2506a >= 21) {
            return this.f17987a.getOutputBuffer(i10);
        }
        return ((ByteBuffer[]) s0.j(this.f17989c))[i10];
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void m(int i10, int i11, r5.c cVar, long j10, int i12) {
        this.f17987a.queueSecureInputBuffer(i10, i11, cVar.a(), j10, i12);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    @RequiresApi(23)
    public void n(final j.c cVar, Handler handler) {
        this.f17987a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: f6.l
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
                q.this.o(cVar, mediaCodec, j10, j11);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void release() {
        this.f17988b = null;
        this.f17989c = null;
        this.f17987a.release();
    }

    @Override // com.google.android.exoplayer2.mediacodec.j
    public void setVideoScalingMode(int i10) {
        this.f17987a.setVideoScalingMode(i10);
    }

    private q(MediaCodec mediaCodec) {
        this.f17987a = mediaCodec;
        if (s0.f2506a < 21) {
            this.f17988b = mediaCodec.getInputBuffers();
            this.f17989c = mediaCodec.getOutputBuffers();
        }
    }
}
