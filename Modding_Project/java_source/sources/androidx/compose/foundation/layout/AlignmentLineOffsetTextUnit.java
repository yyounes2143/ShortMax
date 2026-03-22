package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AlignmentLine.kt */
@Metadata
/* loaded from: classes.dex */
public final class AlignmentLineOffsetTextUnit extends InspectorValueInfo implements LayoutModifier {
    private final long after;
    @NotNull
    private final AlignmentLine alignmentLine;
    private final long before;

    public /* synthetic */ AlignmentLineOffsetTextUnit(AlignmentLine alignmentLine, long j10, long j11, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(alignmentLine, j10, j11, function1);
    }

    public boolean equals(@Nullable Object obj) {
        AlignmentLineOffsetTextUnit alignmentLineOffsetTextUnit;
        if (this == obj) {
            return true;
        }
        if (obj instanceof AlignmentLineOffsetTextUnit) {
            alignmentLineOffsetTextUnit = (AlignmentLineOffsetTextUnit) obj;
        } else {
            alignmentLineOffsetTextUnit = null;
        }
        if (alignmentLineOffsetTextUnit == null) {
            return false;
        }
        if (Intrinsics.areEqual(this.alignmentLine, alignmentLineOffsetTextUnit.alignmentLine) && TextUnit.m4227equalsimpl0(this.before, alignmentLineOffsetTextUnit.before) && TextUnit.m4227equalsimpl0(this.after, alignmentLineOffsetTextUnit.after)) {
            return true;
        }
        return false;
    }

    /* renamed from: getAfter-XSAIIZE  reason: not valid java name */
    public final long m380getAfterXSAIIZE() {
        return this.after;
    }

    @NotNull
    public final AlignmentLine getAlignmentLine() {
        return this.alignmentLine;
    }

    /* renamed from: getBefore-XSAIIZE  reason: not valid java name */
    public final long m381getBeforeXSAIIZE() {
        return this.before;
    }

    public int hashCode() {
        return (((this.alignmentLine.hashCode() * 31) + TextUnit.m4231hashCodeimpl(this.before)) * 31) + TextUnit.m4231hashCodeimpl(this.after);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        float m4069getUnspecifiedD9Ej5fM;
        float m4069getUnspecifiedD9Ej5fM2;
        MeasureResult m369alignmentLineOffsetMeasuretjqqzMA;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        AlignmentLine alignmentLine = this.alignmentLine;
        if (!TextUnitKt.m4248isUnspecifiedR2X_6o(this.before)) {
            m4069getUnspecifiedD9Ej5fM = measure.mo337toDpGaN1DYA(this.before);
        } else {
            m4069getUnspecifiedD9Ej5fM = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        float f10 = m4069getUnspecifiedD9Ej5fM;
        if (!TextUnitKt.m4248isUnspecifiedR2X_6o(this.after)) {
            m4069getUnspecifiedD9Ej5fM2 = measure.mo337toDpGaN1DYA(this.after);
        } else {
            m4069getUnspecifiedD9Ej5fM2 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        m369alignmentLineOffsetMeasuretjqqzMA = AlignmentLineKt.m369alignmentLineOffsetMeasuretjqqzMA(measure, alignmentLine, f10, m4069getUnspecifiedD9Ej5fM2, measurable, j10);
        return m369alignmentLineOffsetMeasuretjqqzMA;
    }

    @NotNull
    public String toString() {
        return "AlignmentLineOffset(alignmentLine=" + this.alignmentLine + ", before=" + ((Object) TextUnit.m4237toStringimpl(this.before)) + ", after=" + ((Object) TextUnit.m4237toStringimpl(this.after)) + ')';
    }

    private AlignmentLineOffsetTextUnit(AlignmentLine alignmentLine, long j10, long j11, Function1<? super InspectorInfo, Unit> function1) {
        super(function1);
        this.alignmentLine = alignmentLine;
        this.before = j10;
        this.after = j11;
    }
}
