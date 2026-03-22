package androidx.compose.ui.layout;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Constraints;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LayoutModifier.kt */
@Metadata
/* loaded from: classes.dex */
final class LayoutModifierImpl extends InspectorValueInfo implements LayoutModifier {
    @NotNull
    private final n<MeasureScope, Measurable, Constraints, MeasureResult> measureBlock;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LayoutModifierImpl(@NotNull n<? super MeasureScope, ? super Measurable, ? super Constraints, ? extends MeasureResult> measureBlock, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(measureBlock, "measureBlock");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.measureBlock = measureBlock;
    }

    public boolean equals(@Nullable Object obj) {
        LayoutModifierImpl layoutModifierImpl;
        if (this == obj) {
            return true;
        }
        if (obj instanceof LayoutModifierImpl) {
            layoutModifierImpl = (LayoutModifierImpl) obj;
        } else {
            layoutModifierImpl = null;
        }
        if (layoutModifierImpl == null) {
            return false;
        }
        return Intrinsics.areEqual(this.measureBlock, layoutModifierImpl.measureBlock);
    }

    @NotNull
    public final n<MeasureScope, Measurable, Constraints, MeasureResult> getMeasureBlock() {
        return this.measureBlock;
    }

    public int hashCode() {
        return this.measureBlock.hashCode();
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return this.measureBlock.invoke(measure, measurable, Constraints.m3993boximpl(j10));
    }

    @NotNull
    public String toString() {
        return "LayoutModifierImpl(measureBlock=" + this.measureBlock + ')';
    }
}
