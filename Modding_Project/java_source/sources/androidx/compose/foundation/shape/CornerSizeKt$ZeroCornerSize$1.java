package androidx.compose.foundation.shape;

import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CornerSize.kt */
@Metadata
/* loaded from: classes.dex */
public final class CornerSizeKt$ZeroCornerSize$1 implements CornerSize, InspectableValue {
    @Override // androidx.compose.foundation.shape.CornerSize
    /* renamed from: toPx-TmRCtEA */
    public float mo688toPxTmRCtEA(long j10, @NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        return 0.0f;
    }

    @NotNull
    public String toString() {
        return "ZeroCornerSize";
    }

    @Override // androidx.compose.ui.platform.InspectableValue
    @NotNull
    public String getValueOverride() {
        return "ZeroCornerSize";
    }
}
