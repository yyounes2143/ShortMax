package io.bidmachine.media3.exoplayer.video;

import android.view.Surface;
import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.mediacodec.MediaCodecDecoderException;
/* loaded from: classes8.dex */
public class MediaCodecVideoDecoderException extends MediaCodecDecoderException {

    /* renamed from: d  reason: collision with root package name */
    public final int f57138d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f57139e;

    public MediaCodecVideoDecoderException(Throwable th2, @Nullable io.bidmachine.media3.exoplayer.mediacodec.j jVar, @Nullable Surface surface) {
        super(th2, jVar);
        boolean z10;
        this.f57138d = System.identityHashCode(surface);
        if (surface != null && !surface.isValid()) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.f57139e = z10;
    }
}
