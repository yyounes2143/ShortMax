package com.facebook.fresco.animation.bitmap.wrapper;

import com.facebook.fresco.animation.backend.AnimationInformation;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import l3.a;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimatedDrawableBackendAnimationInformation.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AnimatedDrawableBackendAnimationInformation implements AnimationInformation {
    @NotNull
    private final a animatedDrawableBackend;

    public AnimatedDrawableBackendAnimationInformation(@NotNull a animatedDrawableBackend) {
        Intrinsics.checkNotNullParameter(animatedDrawableBackend, "animatedDrawableBackend");
        this.animatedDrawableBackend = animatedDrawableBackend;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getFrameCount() {
        return this.animatedDrawableBackend.getFrameCount();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getFrameDurationMs(int i10) {
        return this.animatedDrawableBackend.b(i10);
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getLoopCount() {
        return this.animatedDrawableBackend.getLoopCount();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getLoopDurationMs() {
        return this.animatedDrawableBackend.e();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int height() {
        return this.animatedDrawableBackend.getHeight();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int width() {
        return this.animatedDrawableBackend.getWidth();
    }
}
