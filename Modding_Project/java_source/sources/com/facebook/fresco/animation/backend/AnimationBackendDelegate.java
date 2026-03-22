package com.facebook.fresco.animation.backend;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import androidx.collection.ScatterMapKt;
import com.facebook.fresco.animation.backend.AnimationBackend;
import com.mbridge.msdk.foundation.download.Command;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimationBackendDelegate.kt */
@Metadata
/* loaded from: classes3.dex */
public class AnimationBackendDelegate<T extends AnimationBackend> implements AnimationBackend {
    private static final int ALPHA_UNSET = -1;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private T _animationBackend;
    @IntRange(from = -1, to = ScatterMapKt.Sentinel)
    private int alpha = -1;
    @Nullable
    private Rect bounds;
    @Nullable
    private ColorFilter colorFilter;

    /* compiled from: AnimationBackendDelegate.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AnimationBackendDelegate(@Nullable T t10) {
        this._animationBackend = t10;
    }

    @SuppressLint({Command.HTTP_HEADER_RANGE})
    private final void applyBackendProperties(AnimationBackend animationBackend) {
        Rect rect = this.bounds;
        if (rect != null) {
            animationBackend.setBounds(rect);
        }
        int i10 = this.alpha;
        if (i10 >= 0 && i10 <= 255) {
            animationBackend.setAlpha(i10);
        }
        ColorFilter colorFilter = this.colorFilter;
        if (colorFilter != null) {
            animationBackend.setColorFilter(colorFilter);
        }
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void clear() {
        T t10 = this._animationBackend;
        if (t10 != null) {
            t10.clear();
        }
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public boolean drawFrame(@NotNull Drawable parent, @NotNull Canvas canvas, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        T t10 = this._animationBackend;
        if (t10 == null || !t10.drawFrame(parent, canvas, i10)) {
            return false;
        }
        return true;
    }

    @Nullable
    public final T getAnimationBackend() {
        return this._animationBackend;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getFrameCount() {
        T t10 = this._animationBackend;
        if (t10 == null) {
            return 0;
        }
        Intrinsics.checkNotNull(t10);
        return t10.getFrameCount();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getFrameDurationMs(int i10) {
        T t10 = this._animationBackend;
        if (t10 == null) {
            return 0;
        }
        Intrinsics.checkNotNull(t10);
        return t10.getFrameDurationMs(i10);
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public int getIntrinsicHeight() {
        T t10 = this._animationBackend;
        if (t10 == null) {
            return -1;
        }
        Intrinsics.checkNotNull(t10);
        return t10.getIntrinsicHeight();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public int getIntrinsicWidth() {
        T t10 = this._animationBackend;
        if (t10 == null) {
            return -1;
        }
        Intrinsics.checkNotNull(t10);
        return t10.getIntrinsicWidth();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getLoopCount() {
        T t10 = this._animationBackend;
        if (t10 == null) {
            return 0;
        }
        Intrinsics.checkNotNull(t10);
        return t10.getLoopCount();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getLoopDurationMs() {
        T t10 = this._animationBackend;
        if (t10 == null) {
            return 0;
        }
        Intrinsics.checkNotNull(t10);
        return t10.getLoopDurationMs();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public int getSizeInBytes() {
        T t10 = this._animationBackend;
        if (t10 == null) {
            return 0;
        }
        Intrinsics.checkNotNull(t10);
        return t10.getSizeInBytes();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int height() {
        T t10 = this._animationBackend;
        if (t10 == null) {
            return 0;
        }
        Intrinsics.checkNotNull(t10);
        return t10.height();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void preloadAnimation() {
        T t10 = this._animationBackend;
        if (t10 != null) {
            t10.preloadAnimation();
        }
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void setAlpha(@IntRange(from = 0, to = 255) int i10) {
        T t10 = this._animationBackend;
        if (t10 != null) {
            t10.setAlpha(i10);
        }
        this.alpha = i10;
    }

    public final void setAnimationBackend(@Nullable T t10) {
        this._animationBackend = t10;
        if (t10 != null) {
            Intrinsics.checkNotNull(t10);
            applyBackendProperties(t10);
        }
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void setAnimationListener(@Nullable AnimationBackend.Listener listener) {
        T t10 = this._animationBackend;
        if (t10 != null) {
            t10.setAnimationListener(listener);
        }
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void setBounds(@NotNull Rect bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        T t10 = this._animationBackend;
        if (t10 != null) {
            t10.setBounds(bounds);
        }
        this.bounds = bounds;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        T t10 = this._animationBackend;
        if (t10 != null) {
            t10.setColorFilter(colorFilter);
        }
        this.colorFilter = colorFilter;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int width() {
        T t10 = this._animationBackend;
        if (t10 == null) {
            return 0;
        }
        Intrinsics.checkNotNull(t10);
        return t10.width();
    }
}
