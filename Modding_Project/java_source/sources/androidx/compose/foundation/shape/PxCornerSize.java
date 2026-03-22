package androidx.compose.foundation.shape;

import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CornerSize.kt */
@Metadata
/* loaded from: classes.dex */
final class PxCornerSize implements CornerSize, InspectableValue {
    private final float size;

    public PxCornerSize(float f10) {
        this.size = f10;
    }

    private final float component1() {
        return this.size;
    }

    public static /* synthetic */ PxCornerSize copy$default(PxCornerSize pxCornerSize, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = pxCornerSize.size;
        }
        return pxCornerSize.copy(f10);
    }

    @NotNull
    public final PxCornerSize copy(float f10) {
        return new PxCornerSize(f10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof PxCornerSize) && Intrinsics.areEqual((Object) Float.valueOf(this.size), (Object) Float.valueOf(((PxCornerSize) obj).size))) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Float.hashCode(this.size);
    }

    @Override // androidx.compose.foundation.shape.CornerSize
    /* renamed from: toPx-TmRCtEA */
    public float mo688toPxTmRCtEA(long j10, @NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        return this.size;
    }

    @NotNull
    public String toString() {
        return "CornerSize(size = " + this.size + ".px)";
    }

    @Override // androidx.compose.ui.platform.InspectableValue
    @NotNull
    public String getValueOverride() {
        return this.size + "px";
    }
}
