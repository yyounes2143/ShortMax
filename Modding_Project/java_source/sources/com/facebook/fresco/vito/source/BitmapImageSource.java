package com.facebook.fresco.vito.source;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BitmapImageSource.kt */
@Metadata
/* loaded from: classes3.dex */
public final class BitmapImageSource implements ImageSource {
    @NotNull
    private final Bitmap bitmap;

    public BitmapImageSource(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.bitmap = bitmap;
    }

    public static /* synthetic */ BitmapImageSource copy$default(BitmapImageSource bitmapImageSource, Bitmap bitmap, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            bitmap = bitmapImageSource.bitmap;
        }
        return bitmapImageSource.copy(bitmap);
    }

    @NotNull
    public final Bitmap component1() {
        return this.bitmap;
    }

    @NotNull
    public final BitmapImageSource copy(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return new BitmapImageSource(bitmap);
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
        if (!Intrinsics.areEqual(BitmapImageSource.class, cls)) {
            return false;
        }
        Bitmap bitmap = this.bitmap;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.facebook.fresco.vito.source.BitmapImageSource");
        return Intrinsics.areEqual(bitmap, ((BitmapImageSource) obj).bitmap);
    }

    @NotNull
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    public int hashCode() {
        return this.bitmap.hashCode();
    }

    @NotNull
    public String toString() {
        Bitmap bitmap = this.bitmap;
        return "BitmapImageSource(bitmap=" + bitmap + ")";
    }
}
