package com.facebook.fresco.animation.drawable;

import android.graphics.drawable.Drawable;
import com.facebook.fresco.animation.drawable.AnimationListener;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BaseAnimationListener.kt */
@Metadata
/* loaded from: classes3.dex */
public class BaseAnimationListener implements AnimationListener {
    @Override // com.facebook.fresco.animation.drawable.AnimationListener
    public void onAnimationFrame(@NotNull Drawable drawable, int i10) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
    }

    @Override // com.facebook.fresco.animation.drawable.AnimationListener
    public void onAnimationLoaded() {
        AnimationListener.DefaultImpls.onAnimationLoaded(this);
    }

    @Override // com.facebook.fresco.animation.drawable.AnimationListener
    public void onAnimationRepeat(@NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
    }

    @Override // com.facebook.fresco.animation.drawable.AnimationListener
    public void onAnimationReset(@NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
    }

    @Override // com.facebook.fresco.animation.drawable.AnimationListener
    public void onAnimationStart(@NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
    }

    @Override // com.facebook.fresco.animation.drawable.AnimationListener
    public void onAnimationStop(@NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
    }
}
