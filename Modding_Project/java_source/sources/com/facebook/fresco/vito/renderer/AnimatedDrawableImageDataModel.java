package com.facebook.fresco.vito.renderer;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImageDataModel.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AnimatedDrawableImageDataModel extends DrawableImageDataModel {
    @NotNull
    private final Animatable animatable;
    private final boolean isAutoPlay;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedDrawableImageDataModel(@NotNull Drawable drawable, @NotNull Animatable animatable, boolean z10) {
        super(drawable);
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        Intrinsics.checkNotNullParameter(animatable, "animatable");
        this.animatable = animatable;
        this.isAutoPlay = z10;
    }

    @NotNull
    public final Animatable getAnimatable() {
        return this.animatable;
    }

    public final boolean isAutoPlay() {
        return this.isAutoPlay;
    }

    @Override // com.facebook.fresco.vito.renderer.ImageDataModel
    public void onAttach() {
        if (this.isAutoPlay) {
            this.animatable.start();
        }
    }

    @Override // com.facebook.fresco.vito.renderer.ImageDataModel
    public void onDetach() {
        if (this.isAutoPlay) {
            this.animatable.stop();
        }
    }
}
