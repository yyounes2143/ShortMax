package io.bidmachine.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.os.Bundle;
import androidx.annotation.RequiresApi;
/* compiled from: SynchronousMediaCodecBufferEnqueuer.java */
@RequiresApi(23)
/* loaded from: classes8.dex */
class r implements i {

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f56594a;

    public r(MediaCodec mediaCodec) {
        this.f56594a = mediaCodec;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.i
    public void a(Bundle bundle) {
        this.f56594a.setParameters(bundle);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.i
    public void b(int i10, int i11, int i12, long j10, int i13) {
        this.f56594a.queueInputBuffer(i10, i11, i12, j10, i13);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.i
    public void c(int i10, int i11, fn.c cVar, long j10, int i12) {
        this.f56594a.queueSecureInputBuffer(i10, i11, cVar.a(), j10, i12);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.i
    public void d() {
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.i
    public void flush() {
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.i
    public void shutdown() {
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.i
    public void start() {
    }
}
