package androidx.compose.foundation.shape;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CornerSize.kt */
@Metadata
/* loaded from: classes.dex */
final class PercentCornerSize implements CornerSize, InspectableValue {
    private final float percent;

    public PercentCornerSize(float f10) {
        this.percent = f10;
        if (f10 >= 0.0f && f10 <= 100.0f) {
            return;
        }
        throw new IllegalArgumentException("The percent should be in the range of [0, 100]");
    }

    private final float component1() {
        return this.percent;
    }

    public static /* synthetic */ PercentCornerSize copy$default(PercentCornerSize percentCornerSize, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = percentCornerSize.percent;
        }
        return percentCornerSize.copy(f10);
    }

    @NotNull
    public final PercentCornerSize copy(float f10) {
        return new PercentCornerSize(f10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof PercentCornerSize) && Intrinsics.areEqual((Object) Float.valueOf(this.percent), (Object) Float.valueOf(((PercentCornerSize) obj).percent))) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Float.hashCode(this.percent);
    }

    @Override // androidx.compose.foundation.shape.CornerSize
    /* renamed from: toPx-TmRCtEA */
    public float mo688toPxTmRCtEA(long j10, @NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        return Size.m1674getMinDimensionimpl(j10) * (this.percent / 100.0f);
    }

    @NotNull
    public String toString() {
        return "CornerSize(size = " + this.percent + "%)";
    }

    @Override // androidx.compose.ui.platform.InspectableValue
    @NotNull
    public String getValueOverride() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.percent);
        sb2.append('%');
        return sb2.toString();
    }
}
