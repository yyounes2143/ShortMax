package androidx.core.graphics.drawable;

import android.annotation.SuppressLint;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import androidx.annotation.ColorInt;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ColorDrawable.kt */
@Metadata
/* loaded from: classes.dex */
public final class ColorDrawableKt {
    @NotNull
    public static final ColorDrawable toDrawable(@ColorInt int i10) {
        return new ColorDrawable(i10);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    @NotNull
    public static final ColorDrawable toDrawable(@NotNull Color color) {
        int argb;
        argb = color.toArgb();
        return new ColorDrawable(argb);
    }
}
