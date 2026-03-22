package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AlignmentLine.kt */
@Metadata
/* loaded from: classes.dex */
final class AlignmentLineOffsetDp extends InspectorValueInfo implements LayoutModifier {
    private final float after;
    @NotNull
    private final AlignmentLine alignmentLine;
    private final float before;

    public /* synthetic */ AlignmentLineOffsetDp(AlignmentLine alignmentLine, float f10, float f11, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(alignmentLine, f10, f11, function1);
    }

    public boolean equals(@Nullable Object obj) {
        AlignmentLineOffsetDp alignmentLineOffsetDp;
        if (this == obj) {
            return true;
        }
        if (obj instanceof AlignmentLineOffsetDp) {
            alignmentLineOffsetDp = (AlignmentLineOffsetDp) obj;
        } else {
            alignmentLineOffsetDp = null;
        }
        if (alignmentLineOffsetDp == null) {
            return false;
        }
        if (Intrinsics.areEqual(this.alignmentLine, alignmentLineOffsetDp.alignmentLine) && Dp.m4054equalsimpl0(this.before, alignmentLineOffsetDp.before) && Dp.m4054equalsimpl0(this.after, alignmentLineOffsetDp.after)) {
            return true;
        }
        return false;
    }

    /* renamed from: getAfter-D9Ej5fM  reason: not valid java name */
    public final float m378getAfterD9Ej5fM() {
        return this.after;
    }

    @NotNull
    public final AlignmentLine getAlignmentLine() {
        return this.alignmentLine;
    }

    /* renamed from: getBefore-D9Ej5fM  reason: not valid java name */
    public final float m379getBeforeD9Ej5fM() {
        return this.before;
    }

    public int hashCode() {
        return (((this.alignmentLine.hashCode() * 31) + Dp.m4055hashCodeimpl(this.before)) * 31) + Dp.m4055hashCodeimpl(this.after);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return AlignmentLineKt.m368access$alignmentLineOffsetMeasuretjqqzMA(measure, this.alignmentLine, this.before, this.after, measurable, j10);
    }

    @NotNull
    public String toString() {
        return "AlignmentLineOffset(alignmentLine=" + this.alignmentLine + ", before=" + ((Object) Dp.m4060toStringimpl(this.before)) + ", after=" + ((Object) Dp.m4060toStringimpl(this.after)) + ')';
    }

    private AlignmentLineOffsetDp(AlignmentLine alignmentLine, float f10, float f11, Function1<? super InspectorInfo, Unit> function1) {
        super(function1);
        this.alignmentLine = alignmentLine;
        this.before = f10;
        this.after = f11;
        if ((f10 < 0.0f && !Dp.m4054equalsimpl0(f10, Dp.Companion.m4069getUnspecifiedD9Ej5fM())) || (f11 < 0.0f && !Dp.m4054equalsimpl0(f11, Dp.Companion.m4069getUnspecifiedD9Ej5fM()))) {
            throw new IllegalArgumentException("Padding from alignment line must be a non-negative number");
        }
    }
}
