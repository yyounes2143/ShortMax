package io.bidmachine.rendering.internal.view.privacy;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.Button;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public final class a extends Button {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        setAllCaps(false);
        setMinHeight(s.j(context, 40.0f));
        setMinWidth(0);
        setGravity(8388627);
        setIncludeFontPadding(false);
        setElevation(0.0f);
        setStateListAnimator(null);
        int j10 = s.j(context, 24.0f);
        int j11 = s.j(context, 10.0f);
        int j12 = s.j(context, 8.0f);
        setPadding(j10, j11, j10, j11);
        setCompoundDrawablePadding(j12);
        setBackgroundResource(pp.b.f64970a);
        setTextColor(s.o(context, pp.a.f64969b));
    }

    private final Drawable a(Drawable drawable) {
        if (!(drawable instanceof BitmapDrawable)) {
            return drawable;
        }
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        int j10 = s.j(context, 24.0f);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width == j10 && height == j10) {
            return drawable;
        }
        float f10 = j10;
        float f11 = width;
        float f12 = height;
        float min = Math.min(f10 / f11, f10 / f12);
        return new BitmapDrawable(getContext().getResources(), Bitmap.createScaledBitmap(bitmap, (int) (f11 * min), (int) (f12 * min), true));
    }

    public final void setActionIcon(@Nullable Drawable drawable) {
        Drawable drawable2;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        int o10 = s.o(context, pp.a.f64968a);
        if (drawable != null) {
            drawable2 = a(drawable).mutate();
            drawable2.setTint(o10);
        } else {
            drawable2 = null;
        }
        setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable2, (Drawable) null);
    }
}
