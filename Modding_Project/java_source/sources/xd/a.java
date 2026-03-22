package xd;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import androidx.annotation.ColorRes;
import androidx.core.content.ContextCompat;
import jk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DrawableEx.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a {
    @NotNull
    public static final GradientDrawable a(@NotNull Context context, float f10, @ColorRes int i10) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(g.a(f10));
        gradientDrawable.setColor(ContextCompat.getColor(context, i10));
        return gradientDrawable;
    }
}
