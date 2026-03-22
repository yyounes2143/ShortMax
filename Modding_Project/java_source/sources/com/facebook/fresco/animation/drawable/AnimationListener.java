package com.facebook.fresco.animation.drawable;

import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimationListener.kt */
@Metadata
/* loaded from: classes3.dex */
public interface AnimationListener {
    void onAnimationFrame(@NotNull Drawable drawable, int i10);

    void onAnimationLoaded();

    void onAnimationRepeat(@NotNull Drawable drawable);

    void onAnimationReset(@NotNull Drawable drawable);

    void onAnimationStart(@NotNull Drawable drawable);

    void onAnimationStop(@NotNull Drawable drawable);

    /* compiled from: AnimationListener.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static void onAnimationLoaded(@NotNull AnimationListener animationListener) {
        }
    }
}
