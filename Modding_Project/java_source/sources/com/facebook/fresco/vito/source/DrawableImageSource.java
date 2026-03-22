package com.facebook.fresco.vito.source;

import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DrawableImageSource.kt */
@Metadata
/* loaded from: classes3.dex */
public final class DrawableImageSource implements ImageSource {
    @NotNull
    private final Drawable drawable;

    public DrawableImageSource(@NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        this.drawable = drawable;
    }

    public static /* synthetic */ DrawableImageSource copy$default(DrawableImageSource drawableImageSource, Drawable drawable, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            drawable = drawableImageSource.drawable;
        }
        return drawableImageSource.copy(drawable);
    }

    @NotNull
    public final Drawable component1() {
        return this.drawable;
    }

    @NotNull
    public final DrawableImageSource copy(@NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        return new DrawableImageSource(drawable);
    }

    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(DrawableImageSource.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.facebook.fresco.vito.source.DrawableImageSource");
        return Intrinsics.areEqual(this.drawable, ((DrawableImageSource) obj).drawable);
    }

    @NotNull
    public final Drawable getDrawable() {
        return this.drawable;
    }

    public int hashCode() {
        return this.drawable.hashCode();
    }

    @NotNull
    public String toString() {
        Drawable drawable = this.drawable;
        return "DrawableImageSource(drawable=" + drawable + ")";
    }
}
