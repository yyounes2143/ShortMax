package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SemanticsProperties.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class ScrollAxisRange {
    public static final int $stable = 0;
    @NotNull
    private final Function0<Float> maxValue;
    private final boolean reverseScrolling;
    @NotNull
    private final Function0<Float> value;

    public ScrollAxisRange(@NotNull Function0<Float> value, @NotNull Function0<Float> maxValue, boolean z10) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(maxValue, "maxValue");
        this.value = value;
        this.maxValue = maxValue;
        this.reverseScrolling = z10;
    }

    @NotNull
    public final Function0<Float> getMaxValue() {
        return this.maxValue;
    }

    public final boolean getReverseScrolling() {
        return this.reverseScrolling;
    }

    @NotNull
    public final Function0<Float> getValue() {
        return this.value;
    }

    @NotNull
    public String toString() {
        return "ScrollAxisRange(value=" + this.value.invoke().floatValue() + ", maxValue=" + this.maxValue.invoke().floatValue() + ", reverseScrolling=" + this.reverseScrolling + ')';
    }

    public /* synthetic */ ScrollAxisRange(Function0 function0, Function0 function02, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, function02, (i10 & 4) != 0 ? false : z10);
    }
}
