package com.facebook.fresco.vito.renderer;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImageDataModel.kt */
@Metadata
/* loaded from: classes3.dex */
public final class BitmapImageDataModel extends ImageDataModel {
    @NotNull
    private final Bitmap bitmap;
    private final int defaultPaintFlags;
    private final int height;
    private final boolean isBitmapCircular;
    private final int width;

    public /* synthetic */ BitmapImageDataModel(Bitmap bitmap, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(bitmap, (i10 & 2) != 0 ? false : z10);
    }

    @NotNull
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @Override // com.facebook.fresco.vito.renderer.ImageDataModel
    public int getDefaultPaintFlags() {
        return this.defaultPaintFlags;
    }

    @Override // com.facebook.fresco.vito.renderer.ImageDataModel
    public int getHeight() {
        return this.height;
    }

    @Override // com.facebook.fresco.vito.renderer.ImageDataModel
    public int getWidth() {
        return this.width;
    }

    public final boolean isBitmapCircular() {
        return this.isBitmapCircular;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BitmapImageDataModel(@NotNull Bitmap bitmap, boolean z10) {
        super(null);
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.bitmap = bitmap;
        this.isBitmapCircular = z10;
        this.width = bitmap.getWidth();
        this.height = bitmap.getHeight();
        this.defaultPaintFlags = 6;
    }
}
