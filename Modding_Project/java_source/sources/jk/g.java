package jk;

import android.util.TypedValue;
import kotlin.Metadata;
/* compiled from: DensityExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class g {
    public static final int a(float f10) {
        return bt.a.c(TypedValue.applyDimension(1, f10, fk.u.f51776a.c().getDisplayMetrics()));
    }

    public static final float b(float f10) {
        return TypedValue.applyDimension(1, f10, fk.u.f51776a.c().getDisplayMetrics());
    }
}
