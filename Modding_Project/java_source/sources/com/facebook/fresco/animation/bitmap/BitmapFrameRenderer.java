package com.facebook.fresco.animation.bitmap;

import android.graphics.Bitmap;
import android.graphics.Rect;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BitmapFrameRenderer.kt */
@Metadata
/* loaded from: classes3.dex */
public interface BitmapFrameRenderer {
    int getIntrinsicHeight();

    int getIntrinsicWidth();

    boolean renderFrame(int i10, @NotNull Bitmap bitmap);

    void setBounds(@Nullable Rect rect);
}
