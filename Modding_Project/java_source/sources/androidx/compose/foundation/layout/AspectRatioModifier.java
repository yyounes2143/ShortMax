package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AspectRatio.kt */
@Metadata
/* loaded from: classes.dex */
final class AspectRatioModifier extends InspectorValueInfo implements LayoutModifier {
    private final float aspectRatio;
    private final boolean matchHeightConstraintsFirst;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AspectRatioModifier(float f10, boolean z10, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.aspectRatio = f10;
        this.matchHeightConstraintsFirst = z10;
        if (f10 > 0.0f) {
            return;
        }
        throw new IllegalArgumentException(("aspectRatio " + f10 + " must be > 0").toString());
    }

    /* renamed from: findSize-ToXhtMw  reason: not valid java name */
    private final long m409findSizeToXhtMw(long j10) {
        if (!this.matchHeightConstraintsFirst) {
            long m413tryMaxWidthJN0ABg$default = m413tryMaxWidthJN0ABg$default(this, j10, false, 1, null);
            IntSize.Companion companion = IntSize.Companion;
            if (!IntSize.m4207equalsimpl0(m413tryMaxWidthJN0ABg$default, companion.m4214getZeroYbymL2g())) {
                return m413tryMaxWidthJN0ABg$default;
            }
            long m411tryMaxHeightJN0ABg$default = m411tryMaxHeightJN0ABg$default(this, j10, false, 1, null);
            if (!IntSize.m4207equalsimpl0(m411tryMaxHeightJN0ABg$default, companion.m4214getZeroYbymL2g())) {
                return m411tryMaxHeightJN0ABg$default;
            }
            long m417tryMinWidthJN0ABg$default = m417tryMinWidthJN0ABg$default(this, j10, false, 1, null);
            if (!IntSize.m4207equalsimpl0(m417tryMinWidthJN0ABg$default, companion.m4214getZeroYbymL2g())) {
                return m417tryMinWidthJN0ABg$default;
            }
            long m415tryMinHeightJN0ABg$default = m415tryMinHeightJN0ABg$default(this, j10, false, 1, null);
            if (!IntSize.m4207equalsimpl0(m415tryMinHeightJN0ABg$default, companion.m4214getZeroYbymL2g())) {
                return m415tryMinHeightJN0ABg$default;
            }
            long m412tryMaxWidthJN0ABg = m412tryMaxWidthJN0ABg(j10, false);
            if (!IntSize.m4207equalsimpl0(m412tryMaxWidthJN0ABg, companion.m4214getZeroYbymL2g())) {
                return m412tryMaxWidthJN0ABg;
            }
            long m410tryMaxHeightJN0ABg = m410tryMaxHeightJN0ABg(j10, false);
            if (!IntSize.m4207equalsimpl0(m410tryMaxHeightJN0ABg, companion.m4214getZeroYbymL2g())) {
                return m410tryMaxHeightJN0ABg;
            }
            long m416tryMinWidthJN0ABg = m416tryMinWidthJN0ABg(j10, false);
            if (!IntSize.m4207equalsimpl0(m416tryMinWidthJN0ABg, companion.m4214getZeroYbymL2g())) {
                return m416tryMinWidthJN0ABg;
            }
            long m414tryMinHeightJN0ABg = m414tryMinHeightJN0ABg(j10, false);
            if (!IntSize.m4207equalsimpl0(m414tryMinHeightJN0ABg, companion.m4214getZeroYbymL2g())) {
                return m414tryMinHeightJN0ABg;
            }
        } else {
            long m411tryMaxHeightJN0ABg$default2 = m411tryMaxHeightJN0ABg$default(this, j10, false, 1, null);
            IntSize.Companion companion2 = IntSize.Companion;
            if (!IntSize.m4207equalsimpl0(m411tryMaxHeightJN0ABg$default2, companion2.m4214getZeroYbymL2g())) {
                return m411tryMaxHeightJN0ABg$default2;
            }
            long m413tryMaxWidthJN0ABg$default2 = m413tryMaxWidthJN0ABg$default(this, j10, false, 1, null);
            if (!IntSize.m4207equalsimpl0(m413tryMaxWidthJN0ABg$default2, companion2.m4214getZeroYbymL2g())) {
                return m413tryMaxWidthJN0ABg$default2;
            }
            long m415tryMinHeightJN0ABg$default2 = m415tryMinHeightJN0ABg$default(this, j10, false, 1, null);
            if (!IntSize.m4207equalsimpl0(m415tryMinHeightJN0ABg$default2, companion2.m4214getZeroYbymL2g())) {
                return m415tryMinHeightJN0ABg$default2;
            }
            long m417tryMinWidthJN0ABg$default2 = m417tryMinWidthJN0ABg$default(this, j10, false, 1, null);
            if (!IntSize.m4207equalsimpl0(m417tryMinWidthJN0ABg$default2, companion2.m4214getZeroYbymL2g())) {
                return m417tryMinWidthJN0ABg$default2;
            }
            long m410tryMaxHeightJN0ABg2 = m410tryMaxHeightJN0ABg(j10, false);
            if (!IntSize.m4207equalsimpl0(m410tryMaxHeightJN0ABg2, companion2.m4214getZeroYbymL2g())) {
                return m410tryMaxHeightJN0ABg2;
            }
            long m412tryMaxWidthJN0ABg2 = m412tryMaxWidthJN0ABg(j10, false);
            if (!IntSize.m4207equalsimpl0(m412tryMaxWidthJN0ABg2, companion2.m4214getZeroYbymL2g())) {
                return m412tryMaxWidthJN0ABg2;
            }
            long m414tryMinHeightJN0ABg2 = m414tryMinHeightJN0ABg(j10, false);
            if (!IntSize.m4207equalsimpl0(m414tryMinHeightJN0ABg2, companion2.m4214getZeroYbymL2g())) {
                return m414tryMinHeightJN0ABg2;
            }
            long m416tryMinWidthJN0ABg2 = m416tryMinWidthJN0ABg(j10, false);
            if (!IntSize.m4207equalsimpl0(m416tryMinWidthJN0ABg2, companion2.m4214getZeroYbymL2g())) {
                return m416tryMinWidthJN0ABg2;
            }
        }
        return IntSize.Companion.m4214getZeroYbymL2g();
    }

    /* renamed from: tryMaxHeight-JN-0ABg  reason: not valid java name */
    private final long m410tryMaxHeightJN0ABg(long j10, boolean z10) {
        int c10;
        int m4004getMaxHeightimpl = Constraints.m4004getMaxHeightimpl(j10);
        if (m4004getMaxHeightimpl != Integer.MAX_VALUE && (c10 = bt.a.c(m4004getMaxHeightimpl * this.aspectRatio)) > 0) {
            long IntSize = IntSizeKt.IntSize(c10, m4004getMaxHeightimpl);
            if (!z10 || ConstraintsKt.m4020isSatisfiedBy4WqzIAM(j10, IntSize)) {
                return IntSize;
            }
        }
        return IntSize.Companion.m4214getZeroYbymL2g();
    }

    /* renamed from: tryMaxHeight-JN-0ABg$default  reason: not valid java name */
    static /* synthetic */ long m411tryMaxHeightJN0ABg$default(AspectRatioModifier aspectRatioModifier, long j10, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        return aspectRatioModifier.m410tryMaxHeightJN0ABg(j10, z10);
    }

    /* renamed from: tryMaxWidth-JN-0ABg  reason: not valid java name */
    private final long m412tryMaxWidthJN0ABg(long j10, boolean z10) {
        int c10;
        int m4005getMaxWidthimpl = Constraints.m4005getMaxWidthimpl(j10);
        if (m4005getMaxWidthimpl != Integer.MAX_VALUE && (c10 = bt.a.c(m4005getMaxWidthimpl / this.aspectRatio)) > 0) {
            long IntSize = IntSizeKt.IntSize(m4005getMaxWidthimpl, c10);
            if (!z10 || ConstraintsKt.m4020isSatisfiedBy4WqzIAM(j10, IntSize)) {
                return IntSize;
            }
        }
        return IntSize.Companion.m4214getZeroYbymL2g();
    }

    /* renamed from: tryMaxWidth-JN-0ABg$default  reason: not valid java name */
    static /* synthetic */ long m413tryMaxWidthJN0ABg$default(AspectRatioModifier aspectRatioModifier, long j10, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        return aspectRatioModifier.m412tryMaxWidthJN0ABg(j10, z10);
    }

    /* renamed from: tryMinHeight-JN-0ABg  reason: not valid java name */
    private final long m414tryMinHeightJN0ABg(long j10, boolean z10) {
        int m4006getMinHeightimpl = Constraints.m4006getMinHeightimpl(j10);
        int c10 = bt.a.c(m4006getMinHeightimpl * this.aspectRatio);
        if (c10 > 0) {
            long IntSize = IntSizeKt.IntSize(c10, m4006getMinHeightimpl);
            if (!z10 || ConstraintsKt.m4020isSatisfiedBy4WqzIAM(j10, IntSize)) {
                return IntSize;
            }
        }
        return IntSize.Companion.m4214getZeroYbymL2g();
    }

    /* renamed from: tryMinHeight-JN-0ABg$default  reason: not valid java name */
    static /* synthetic */ long m415tryMinHeightJN0ABg$default(AspectRatioModifier aspectRatioModifier, long j10, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        return aspectRatioModifier.m414tryMinHeightJN0ABg(j10, z10);
    }

    /* renamed from: tryMinWidth-JN-0ABg  reason: not valid java name */
    private final long m416tryMinWidthJN0ABg(long j10, boolean z10) {
        int m4007getMinWidthimpl = Constraints.m4007getMinWidthimpl(j10);
        int c10 = bt.a.c(m4007getMinWidthimpl / this.aspectRatio);
        if (c10 > 0) {
            long IntSize = IntSizeKt.IntSize(m4007getMinWidthimpl, c10);
            if (!z10 || ConstraintsKt.m4020isSatisfiedBy4WqzIAM(j10, IntSize)) {
                return IntSize;
            }
        }
        return IntSize.Companion.m4214getZeroYbymL2g();
    }

    /* renamed from: tryMinWidth-JN-0ABg$default  reason: not valid java name */
    static /* synthetic */ long m417tryMinWidthJN0ABg$default(AspectRatioModifier aspectRatioModifier, long j10, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        return aspectRatioModifier.m416tryMinWidthJN0ABg(j10, z10);
    }

    public boolean equals(@Nullable Object obj) {
        AspectRatioModifier aspectRatioModifier;
        if (this == obj) {
            return true;
        }
        if (obj instanceof AspectRatioModifier) {
            aspectRatioModifier = (AspectRatioModifier) obj;
        } else {
            aspectRatioModifier = null;
        }
        if (aspectRatioModifier == null) {
            return false;
        }
        if (this.aspectRatio == aspectRatioModifier.aspectRatio && this.matchHeightConstraintsFirst == ((AspectRatioModifier) obj).matchHeightConstraintsFirst) {
            return true;
        }
        return false;
    }

    public final float getAspectRatio() {
        return this.aspectRatio;
    }

    public final boolean getMatchHeightConstraintsFirst() {
        return this.matchHeightConstraintsFirst;
    }

    public int hashCode() {
        return (Float.hashCode(this.aspectRatio) * 31) + Boolean.hashCode(this.matchHeightConstraintsFirst);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (i10 != Integer.MAX_VALUE) {
            return bt.a.c(i10 / this.aspectRatio);
        }
        return measurable.maxIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (i10 != Integer.MAX_VALUE) {
            return bt.a.c(i10 * this.aspectRatio);
        }
        return measurable.maxIntrinsicWidth(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        long m409findSizeToXhtMw = m409findSizeToXhtMw(j10);
        if (!IntSize.m4207equalsimpl0(m409findSizeToXhtMw, IntSize.Companion.m4214getZeroYbymL2g())) {
            j10 = Constraints.Companion.m4013fixedJhjzzOo(IntSize.m4209getWidthimpl(m409findSizeToXhtMw), IntSize.m4208getHeightimpl(m409findSizeToXhtMw));
        }
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
        return MeasureScope.layout$default(measure, mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.AspectRatioModifier$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (i10 != Integer.MAX_VALUE) {
            return bt.a.c(i10 / this.aspectRatio);
        }
        return measurable.minIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (i10 != Integer.MAX_VALUE) {
            return bt.a.c(i10 * this.aspectRatio);
        }
        return measurable.minIntrinsicWidth(i10);
    }

    @NotNull
    public String toString() {
        return "AspectRatioModifier(aspectRatio=" + this.aspectRatio + ')';
    }
}
