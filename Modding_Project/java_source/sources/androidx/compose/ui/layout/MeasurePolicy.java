package androidx.compose.ui.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MeasurePolicy.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface MeasurePolicy {

    /* compiled from: MeasurePolicy.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static int maxIntrinsicHeight(@NotNull MeasurePolicy measurePolicy, @NotNull IntrinsicMeasureScope receiver, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return MeasurePolicy.super.maxIntrinsicHeight(receiver, measurables, i10);
        }

        @Deprecated
        public static int maxIntrinsicWidth(@NotNull MeasurePolicy measurePolicy, @NotNull IntrinsicMeasureScope receiver, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return MeasurePolicy.super.maxIntrinsicWidth(receiver, measurables, i10);
        }

        @Deprecated
        public static int minIntrinsicHeight(@NotNull MeasurePolicy measurePolicy, @NotNull IntrinsicMeasureScope receiver, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return MeasurePolicy.super.minIntrinsicHeight(receiver, measurables, i10);
        }

        @Deprecated
        public static int minIntrinsicWidth(@NotNull MeasurePolicy measurePolicy, @NotNull IntrinsicMeasureScope receiver, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return MeasurePolicy.super.minIntrinsicWidth(receiver, measurables, i10);
        }
    }

    default int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        ArrayList arrayList = new ArrayList(measurables.size());
        int size = measurables.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(new DefaultIntrinsicMeasurable(measurables.get(i11), IntrinsicMinMax.Max, IntrinsicWidthHeight.Height));
        }
        return mo42measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(0, i10, 0, 0, 13, null)).getHeight();
    }

    default int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        ArrayList arrayList = new ArrayList(measurables.size());
        int size = measurables.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(new DefaultIntrinsicMeasurable(measurables.get(i11), IntrinsicMinMax.Max, IntrinsicWidthHeight.Width));
        }
        return mo42measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(0, 0, 0, i10, 7, null)).getWidth();
    }

    @NotNull
    /* renamed from: measure-3p2s80s */
    MeasureResult mo42measure3p2s80s(@NotNull MeasureScope measureScope, @NotNull List<? extends Measurable> list, long j10);

    default int minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        ArrayList arrayList = new ArrayList(measurables.size());
        int size = measurables.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(new DefaultIntrinsicMeasurable(measurables.get(i11), IntrinsicMinMax.Min, IntrinsicWidthHeight.Height));
        }
        return mo42measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(0, i10, 0, 0, 13, null)).getHeight();
    }

    default int minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        ArrayList arrayList = new ArrayList(measurables.size());
        int size = measurables.size();
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(new DefaultIntrinsicMeasurable(measurables.get(i11), IntrinsicMinMax.Min, IntrinsicWidthHeight.Width));
        }
        return mo42measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(0, 0, 0, i10, 7, null)).getWidth();
    }
}
