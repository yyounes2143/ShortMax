package androidx.compose.ui.graphics.colorspace;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: Xyz.kt */
@Metadata
/* loaded from: classes.dex */
public final class Xyz extends ColorSpace {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Xyz(@NotNull String name, int i10) {
        super(name, ColorModel.Companion.m2208getXyzxdoWZVw(), i10, null);
        Intrinsics.checkNotNullParameter(name, "name");
    }

    private final float clamp(float f10) {
        return e.m(f10, -2.0f, 2.0f);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    @NotNull
    public float[] fromXyz(@NotNull float[] v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        v10[0] = clamp(v10[0]);
        v10[1] = clamp(v10[1]);
        v10[2] = clamp(v10[2]);
        return v10;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float getMaxValue(int i10) {
        return 2.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float getMinValue(int i10) {
        return -2.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public boolean isWideGamut() {
        return true;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    @NotNull
    public float[] toXyz(@NotNull float[] v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        v10[0] = clamp(v10[0]);
        v10[1] = clamp(v10[1]);
        v10[2] = clamp(v10[2]);
        return v10;
    }
}
