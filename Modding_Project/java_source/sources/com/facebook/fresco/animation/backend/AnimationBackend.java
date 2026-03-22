package com.facebook.fresco.animation.backend;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
/* loaded from: classes3.dex */
public interface AnimationBackend extends AnimationInformation {
    public static final int INTRINSIC_DIMENSION_UNSET = -1;

    /* loaded from: classes3.dex */
    public interface Listener {
        void onAnimationLoaded();
    }

    void clear();

    boolean drawFrame(Drawable drawable, Canvas canvas, int i10);

    int getIntrinsicHeight();

    int getIntrinsicWidth();

    int getSizeInBytes();

    void preloadAnimation();

    void setAlpha(@IntRange(from = 0, to = 255) int i10);

    void setAnimationListener(Listener listener);

    void setBounds(Rect rect);

    void setColorFilter(ColorFilter colorFilter);
}
