package com.facebook.fresco.vito.renderer;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageDataModel.kt */
@Metadata
/* loaded from: classes3.dex */
public class DrawableImageDataModel extends ImageDataModel {
    @NotNull
    private final Drawable drawable;
    private final int height;
    private final int width;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawableImageDataModel(@NotNull Drawable drawable) {
        super(null);
        int intrinsicWidth;
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        this.drawable = drawable;
        if (drawable instanceof NinePatchDrawable) {
            intrinsicWidth = -1;
        } else {
            intrinsicWidth = drawable.getIntrinsicWidth();
        }
        this.width = intrinsicWidth;
        this.height = drawable instanceof NinePatchDrawable ? -1 : drawable.getIntrinsicHeight();
    }

    @NotNull
    public final Drawable getDrawable() {
        return this.drawable;
    }

    @Override // com.facebook.fresco.vito.renderer.ImageDataModel
    public int getHeight() {
        return this.height;
    }

    @Override // com.facebook.fresco.vito.renderer.ImageDataModel
    public int getWidth() {
        return this.width;
    }

    @Override // com.facebook.fresco.vito.renderer.ImageDataModel
    public void setCallback(@Nullable Drawable.Callback callback) {
        this.drawable.setCallback(callback);
    }
}
