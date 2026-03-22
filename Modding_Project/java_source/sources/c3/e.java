package c3;

import android.graphics.drawable.Drawable;
import androidx.core.view.ViewCompat;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DrawableUtils.kt */
@Metadata
/* loaded from: classes3.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f2941a = new e();

    private e() {
    }

    public static final void a(@Nullable Drawable drawable, @Nullable Drawable drawable2) {
        if (drawable2 != null && drawable != null && drawable != drawable2) {
            drawable.setBounds(drawable2.getBounds());
            drawable.setChangingConfigurations(drawable2.getChangingConfigurations());
            drawable.setLevel(drawable2.getLevel());
            drawable.setVisible(drawable2.isVisible(), false);
            drawable.setState(drawable2.getState());
        }
    }

    public static final int b(int i10) {
        int i11 = i10 >>> 24;
        if (i11 != 0) {
            if (i11 != 255) {
                return -3;
            }
            return -1;
        }
        return -2;
    }

    public static final int c(int i10, int i11) {
        if (i11 == 255) {
            return i10;
        }
        if (i11 == 0) {
            return i10 & ViewCompat.MEASURED_SIZE_MASK;
        }
        int i12 = i11 + (i11 >> 7);
        return (i10 & ViewCompat.MEASURED_SIZE_MASK) | ((((i10 >>> 24) * i12) >> 8) << 24);
    }

    public static final void d(@Nullable Drawable drawable, @Nullable Drawable.Callback callback, @Nullable e0 e0Var) {
        d0 d0Var;
        if (drawable == null) {
            return;
        }
        drawable.setCallback(callback);
        if (drawable instanceof d0) {
            d0Var = (d0) drawable;
        } else {
            d0Var = null;
        }
        if (d0Var != null) {
            d0Var.m(e0Var);
        }
    }

    public static final void e(@Nullable Drawable drawable, @Nullable d dVar) {
        if (drawable != null && dVar != null) {
            dVar.a(drawable);
        }
    }
}
