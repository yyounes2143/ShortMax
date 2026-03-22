package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import dt.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SemanticsProperties.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class ProgressBarRangeInfo {
    public static final int $stable = 0;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ProgressBarRangeInfo Indeterminate = new ProgressBarRangeInfo(0.0f, e.b(0.0f, 0.0f), 0, 4, null);
    private final float current;
    @NotNull
    private final b<Float> range;
    private final int steps;

    /* compiled from: SemanticsProperties.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ProgressBarRangeInfo getIndeterminate() {
            return ProgressBarRangeInfo.Indeterminate;
        }

        private Companion() {
        }
    }

    public ProgressBarRangeInfo(float f10, @NotNull b<Float> range, int i10) {
        Intrinsics.checkNotNullParameter(range, "range");
        this.current = f10;
        this.range = range;
        this.steps = i10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProgressBarRangeInfo)) {
            return false;
        }
        ProgressBarRangeInfo progressBarRangeInfo = (ProgressBarRangeInfo) obj;
        if (this.current == progressBarRangeInfo.current && Intrinsics.areEqual(this.range, progressBarRangeInfo.range) && this.steps == progressBarRangeInfo.steps) {
            return true;
        }
        return false;
    }

    public final float getCurrent() {
        return this.current;
    }

    @NotNull
    public final b<Float> getRange() {
        return this.range;
    }

    public final int getSteps() {
        return this.steps;
    }

    public int hashCode() {
        return (((Float.hashCode(this.current) * 31) + this.range.hashCode()) * 31) + this.steps;
    }

    @NotNull
    public String toString() {
        return "ProgressBarRangeInfo(current=" + this.current + ", range=" + this.range + ", steps=" + this.steps + ')';
    }

    public /* synthetic */ ProgressBarRangeInfo(float f10, b bVar, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, bVar, (i11 & 4) != 0 ? 0 : i10);
    }
}
