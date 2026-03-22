package com.unity3d.ads.gl;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: OffscreenSurface.kt */
@Metadata
/* loaded from: classes7.dex */
public final class OffscreenSurface extends EglSurfaceBase {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OffscreenSurface(@NotNull EglCore eglCore, int i10, int i11) {
        super(eglCore);
        Intrinsics.checkNotNullParameter(eglCore, "eglCore");
        createOffscreenSurface(i10, i11);
    }

    public final void release() {
        releaseEglSurface();
    }
}
