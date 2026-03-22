package c4;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.Rect;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.k;
/* compiled from: PlatformDecoder.kt */
@Metadata
/* loaded from: classes3.dex */
public interface d {
    @Nullable
    o2.a<Bitmap> a(@NotNull k kVar, @NotNull Bitmap.Config config, @Nullable Rect rect, @Nullable ColorSpace colorSpace);

    @Nullable
    o2.a<Bitmap> b(@NotNull k kVar, @NotNull Bitmap.Config config, @Nullable Rect rect, int i10, @Nullable ColorSpace colorSpace);
}
