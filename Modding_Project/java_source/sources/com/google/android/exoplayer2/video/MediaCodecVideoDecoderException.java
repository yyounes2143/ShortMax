package com.google.android.exoplayer2.video;

import android.view.Surface;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.k;
/* loaded from: classes4.dex */
public class MediaCodecVideoDecoderException extends MediaCodecDecoderException {

    /* renamed from: c  reason: collision with root package name */
    public final int f19207c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f19208d;

    public MediaCodecVideoDecoderException(Throwable th2, @Nullable k kVar, @Nullable Surface surface) {
        super(th2, kVar);
        boolean z10;
        this.f19207c = System.identityHashCode(surface);
        if (surface != null && !surface.isValid()) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.f19208d = z10;
    }
}
