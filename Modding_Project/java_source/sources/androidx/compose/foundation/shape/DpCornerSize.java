package androidx.compose.foundation.shape;

import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CornerSize.kt */
@Metadata
/* loaded from: classes.dex */
final class DpCornerSize implements CornerSize, InspectableValue {
    private final float size;

    public /* synthetic */ DpCornerSize(float f10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10);
    }

    /* renamed from: component1-D9Ej5fM  reason: not valid java name */
    private final float m693component1D9Ej5fM() {
        return this.size;
    }

    /* renamed from: copy-0680j_4$default  reason: not valid java name */
    public static /* synthetic */ DpCornerSize m694copy0680j_4$default(DpCornerSize dpCornerSize, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = dpCornerSize.size;
        }
        return dpCornerSize.m695copy0680j_4(f10);
    }

    @NotNull
    /* renamed from: copy-0680j_4  reason: not valid java name */
    public final DpCornerSize m695copy0680j_4(float f10) {
        return new DpCornerSize(f10, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DpCornerSize) && Dp.m4054equalsimpl0(this.size, ((DpCornerSize) obj).size)) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.platform.InspectableValue
    public /* bridge */ /* synthetic */ Object getValueOverride() {
        return Dp.m4047boximpl(m696getValueOverrideD9Ej5fM());
    }

    /* renamed from: getValueOverride-D9Ej5fM  reason: not valid java name */
    public float m696getValueOverrideD9Ej5fM() {
        return this.size;
    }

    public int hashCode() {
        return Dp.m4055hashCodeimpl(this.size);
    }

    @Override // androidx.compose.foundation.shape.CornerSize
    /* renamed from: toPx-TmRCtEA */
    public float mo688toPxTmRCtEA(long j10, @NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        return density.mo342toPx0680j_4(this.size);
    }

    @NotNull
    public String toString() {
        return "CornerSize(size = " + this.size + ".dp)";
    }

    private DpCornerSize(float f10) {
        this.size = f10;
    }
}
