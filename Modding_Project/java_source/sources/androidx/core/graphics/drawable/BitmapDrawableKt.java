package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BitmapDrawable.kt */
@Metadata
/* loaded from: classes.dex */
public final class BitmapDrawableKt {
    @NotNull
    public static final BitmapDrawable toDrawable(@NotNull Bitmap bitmap, @NotNull Resources resources) {
        return new BitmapDrawable(resources, bitmap);
    }
}
