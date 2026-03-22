package com.facebook.fresco.animation.bitmap.preparation;

import com.facebook.fresco.animation.backend.AnimationBackend;
import com.facebook.fresco.animation.bitmap.BitmapFrameCache;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BitmapFramePreparer.kt */
@Metadata
/* loaded from: classes3.dex */
public interface BitmapFramePreparer {
    boolean prepareFrame(@NotNull BitmapFrameCache bitmapFrameCache, @NotNull AnimationBackend animationBackend, int i10);
}
