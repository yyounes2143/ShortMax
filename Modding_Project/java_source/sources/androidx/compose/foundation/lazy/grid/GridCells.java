package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.Stable;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyGridDsl.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface GridCells {

    /* compiled from: LazyGridDsl.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Adaptive implements GridCells {
        public static final int $stable = 0;
        private final float minSize;

        public /* synthetic */ Adaptive(float f10, DefaultConstructorMarker defaultConstructorMarker) {
            this(f10);
        }

        @Override // androidx.compose.foundation.lazy.grid.GridCells
        @NotNull
        public List<Integer> calculateCrossAxisCellSizes(@NotNull Density density, int i10, int i11) {
            List<Integer> calculateCellsCrossAxisSizeImpl;
            Intrinsics.checkNotNullParameter(density, "<this>");
            calculateCellsCrossAxisSizeImpl = LazyGridDslKt.calculateCellsCrossAxisSizeImpl(i10, Math.max((i10 + i11) / (density.mo336roundToPx0680j_4(this.minSize) + i11), 1), i11);
            return calculateCellsCrossAxisSizeImpl;
        }

        public boolean equals(@Nullable Object obj) {
            if ((obj instanceof Adaptive) && Dp.m4054equalsimpl0(this.minSize, ((Adaptive) obj).minSize)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Dp.m4055hashCodeimpl(this.minSize);
        }

        private Adaptive(float f10) {
            this.minSize = f10;
            if (Dp.m4048compareTo0680j_4(f10, Dp.m4049constructorimpl(0)) <= 0) {
                throw new IllegalArgumentException("Failed requirement.");
            }
        }
    }

    /* compiled from: LazyGridDsl.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Fixed implements GridCells {
        public static final int $stable = 0;
        private final int count;

        public Fixed(int i10) {
            this.count = i10;
            if (i10 > 0) {
                return;
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        @Override // androidx.compose.foundation.lazy.grid.GridCells
        @NotNull
        public List<Integer> calculateCrossAxisCellSizes(@NotNull Density density, int i10, int i11) {
            List<Integer> calculateCellsCrossAxisSizeImpl;
            Intrinsics.checkNotNullParameter(density, "<this>");
            calculateCellsCrossAxisSizeImpl = LazyGridDslKt.calculateCellsCrossAxisSizeImpl(i10, this.count, i11);
            return calculateCellsCrossAxisSizeImpl;
        }

        public boolean equals(@Nullable Object obj) {
            if ((obj instanceof Fixed) && this.count == ((Fixed) obj).count) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -this.count;
        }
    }

    @NotNull
    List<Integer> calculateCrossAxisCellSizes(@NotNull Density density, int i10, int i11);
}
