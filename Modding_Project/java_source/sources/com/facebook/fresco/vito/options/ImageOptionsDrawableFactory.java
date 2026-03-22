package com.facebook.fresco.vito.options;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.e;
/* compiled from: ImageOptionsDrawableFactory.kt */
@Metadata
/* loaded from: classes3.dex */
public interface ImageOptionsDrawableFactory {
    @Nullable
    Drawable createDrawable(@NotNull Resources resources, @NotNull e eVar, @NotNull ImageOptions imageOptions);
}
