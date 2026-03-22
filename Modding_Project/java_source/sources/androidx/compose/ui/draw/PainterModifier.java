package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.ScaleFactorKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import bt.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PainterModifier.kt */
@Metadata
/* loaded from: classes.dex */
final class PainterModifier extends InspectorValueInfo implements LayoutModifier, DrawModifier {
    @NotNull
    private final Alignment alignment;
    private final float alpha;
    @Nullable
    private final ColorFilter colorFilter;
    @NotNull
    private final ContentScale contentScale;
    @NotNull
    private final Painter painter;
    private final boolean sizeToIntrinsics;

    public /* synthetic */ PainterModifier(Painter painter, boolean z10, Alignment alignment, ContentScale contentScale, float f10, ColorFilter colorFilter, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(painter, z10, (i10 & 4) != 0 ? Alignment.Companion.getCenter() : alignment, (i10 & 8) != 0 ? ContentScale.Companion.getInside() : contentScale, (i10 & 16) != 0 ? 1.0f : f10, (i10 & 32) != 0 ? null : colorFilter, function1);
    }

    /* renamed from: calculateScaledSize-E7KxVPU  reason: not valid java name */
    private final long m1530calculateScaledSizeE7KxVPU(long j10) {
        float m1675getWidthimpl;
        float m1672getHeightimpl;
        if (getUseIntrinsicSize()) {
            if (!m1532hasSpecifiedAndFiniteWidthuvyYCjk(this.painter.mo2405getIntrinsicSizeNHjbRc())) {
                m1675getWidthimpl = Size.m1675getWidthimpl(j10);
            } else {
                m1675getWidthimpl = Size.m1675getWidthimpl(this.painter.mo2405getIntrinsicSizeNHjbRc());
            }
            if (!m1531hasSpecifiedAndFiniteHeightuvyYCjk(this.painter.mo2405getIntrinsicSizeNHjbRc())) {
                m1672getHeightimpl = Size.m1672getHeightimpl(j10);
            } else {
                m1672getHeightimpl = Size.m1672getHeightimpl(this.painter.mo2405getIntrinsicSizeNHjbRc());
            }
            long Size = SizeKt.Size(m1675getWidthimpl, m1672getHeightimpl);
            if (Size.m1675getWidthimpl(j10) == 0.0f || Size.m1672getHeightimpl(j10) == 0.0f) {
                return Size.Companion.m1684getZeroNHjbRc();
            }
            return ScaleFactorKt.m3411timesUQTWf7w(Size, this.contentScale.mo3326computeScaleFactorH7hwNQA(Size, j10));
        }
        return j10;
    }

    private final boolean getUseIntrinsicSize() {
        if (this.sizeToIntrinsics && this.painter.mo2405getIntrinsicSizeNHjbRc() != Size.Companion.m1683getUnspecifiedNHjbRc()) {
            return true;
        }
        return false;
    }

    /* renamed from: hasSpecifiedAndFiniteHeight-uvyYCjk  reason: not valid java name */
    private final boolean m1531hasSpecifiedAndFiniteHeightuvyYCjk(long j10) {
        if (!Size.m1671equalsimpl0(j10, Size.Companion.m1683getUnspecifiedNHjbRc())) {
            float m1672getHeightimpl = Size.m1672getHeightimpl(j10);
            if (!Float.isInfinite(m1672getHeightimpl) && !Float.isNaN(m1672getHeightimpl)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: hasSpecifiedAndFiniteWidth-uvyYCjk  reason: not valid java name */
    private final boolean m1532hasSpecifiedAndFiniteWidthuvyYCjk(long j10) {
        if (!Size.m1671equalsimpl0(j10, Size.Companion.m1683getUnspecifiedNHjbRc())) {
            float m1675getWidthimpl = Size.m1675getWidthimpl(j10);
            if (!Float.isInfinite(m1675getWidthimpl) && !Float.isNaN(m1675getWidthimpl)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: modifyConstraints-ZezNO4M  reason: not valid java name */
    private final long m1533modifyConstraintsZezNO4M(long j10) {
        boolean z10;
        int m4007getMinWidthimpl;
        int m4006getMinHeightimpl;
        boolean z11 = false;
        if (Constraints.m4001getHasBoundedWidthimpl(j10) && Constraints.m4000getHasBoundedHeightimpl(j10)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (Constraints.m4003getHasFixedWidthimpl(j10) && Constraints.m4002getHasFixedHeightimpl(j10)) {
            z11 = true;
        }
        if ((!getUseIntrinsicSize() && z10) || z11) {
            return Constraints.m3996copyZbe2FdA$default(j10, Constraints.m4005getMaxWidthimpl(j10), 0, Constraints.m4004getMaxHeightimpl(j10), 0, 10, null);
        }
        long mo2405getIntrinsicSizeNHjbRc = this.painter.mo2405getIntrinsicSizeNHjbRc();
        if (m1532hasSpecifiedAndFiniteWidthuvyYCjk(mo2405getIntrinsicSizeNHjbRc)) {
            m4007getMinWidthimpl = a.c(Size.m1675getWidthimpl(mo2405getIntrinsicSizeNHjbRc));
        } else {
            m4007getMinWidthimpl = Constraints.m4007getMinWidthimpl(j10);
        }
        if (m1531hasSpecifiedAndFiniteHeightuvyYCjk(mo2405getIntrinsicSizeNHjbRc)) {
            m4006getMinHeightimpl = a.c(Size.m1672getHeightimpl(mo2405getIntrinsicSizeNHjbRc));
        } else {
            m4006getMinHeightimpl = Constraints.m4006getMinHeightimpl(j10);
        }
        long m1530calculateScaledSizeE7KxVPU = m1530calculateScaledSizeE7KxVPU(SizeKt.Size(ConstraintsKt.m4019constrainWidthK40F9xA(j10, m4007getMinWidthimpl), ConstraintsKt.m4018constrainHeightK40F9xA(j10, m4006getMinHeightimpl)));
        return Constraints.m3996copyZbe2FdA$default(j10, ConstraintsKt.m4019constrainWidthK40F9xA(j10, a.c(Size.m1675getWidthimpl(m1530calculateScaledSizeE7KxVPU))), 0, ConstraintsKt.m4018constrainHeightK40F9xA(j10, a.c(Size.m1672getHeightimpl(m1530calculateScaledSizeE7KxVPU))), 0, 10, null);
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public void draw(@NotNull ContentDrawScope contentDrawScope) {
        float m1675getWidthimpl;
        float m1672getHeightimpl;
        long m1684getZeroNHjbRc;
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        long mo2405getIntrinsicSizeNHjbRc = this.painter.mo2405getIntrinsicSizeNHjbRc();
        if (m1532hasSpecifiedAndFiniteWidthuvyYCjk(mo2405getIntrinsicSizeNHjbRc)) {
            m1675getWidthimpl = Size.m1675getWidthimpl(mo2405getIntrinsicSizeNHjbRc);
        } else {
            m1675getWidthimpl = Size.m1675getWidthimpl(contentDrawScope.mo2336getSizeNHjbRc());
        }
        if (m1531hasSpecifiedAndFiniteHeightuvyYCjk(mo2405getIntrinsicSizeNHjbRc)) {
            m1672getHeightimpl = Size.m1672getHeightimpl(mo2405getIntrinsicSizeNHjbRc);
        } else {
            m1672getHeightimpl = Size.m1672getHeightimpl(contentDrawScope.mo2336getSizeNHjbRc());
        }
        long Size = SizeKt.Size(m1675getWidthimpl, m1672getHeightimpl);
        if (Size.m1675getWidthimpl(contentDrawScope.mo2336getSizeNHjbRc()) == 0.0f || Size.m1672getHeightimpl(contentDrawScope.mo2336getSizeNHjbRc()) == 0.0f) {
            m1684getZeroNHjbRc = Size.Companion.m1684getZeroNHjbRc();
        } else {
            m1684getZeroNHjbRc = ScaleFactorKt.m3411timesUQTWf7w(Size, this.contentScale.mo3326computeScaleFactorH7hwNQA(Size, contentDrawScope.mo2336getSizeNHjbRc()));
        }
        long j10 = m1684getZeroNHjbRc;
        long mo1514alignKFBX0sM = this.alignment.mo1514alignKFBX0sM(IntSizeKt.IntSize(a.c(Size.m1675getWidthimpl(j10)), a.c(Size.m1672getHeightimpl(j10))), IntSizeKt.IntSize(a.c(Size.m1675getWidthimpl(contentDrawScope.mo2336getSizeNHjbRc())), a.c(Size.m1672getHeightimpl(contentDrawScope.mo2336getSizeNHjbRc()))), contentDrawScope.getLayoutDirection());
        float m4167getXimpl = IntOffset.m4167getXimpl(mo1514alignKFBX0sM);
        float m4168getYimpl = IntOffset.m4168getYimpl(mo1514alignKFBX0sM);
        contentDrawScope.getDrawContext().getTransform().translate(m4167getXimpl, m4168getYimpl);
        this.painter.m2411drawx_KDEd0(contentDrawScope, j10, this.alpha, this.colorFilter);
        contentDrawScope.getDrawContext().getTransform().translate(-m4167getXimpl, -m4168getYimpl);
        contentDrawScope.drawContent();
    }

    public boolean equals(@Nullable Object obj) {
        PainterModifier painterModifier;
        if (obj instanceof PainterModifier) {
            painterModifier = (PainterModifier) obj;
        } else {
            painterModifier = null;
        }
        if (painterModifier == null || !Intrinsics.areEqual(this.painter, painterModifier.painter) || this.sizeToIntrinsics != painterModifier.sizeToIntrinsics || !Intrinsics.areEqual(this.alignment, painterModifier.alignment) || !Intrinsics.areEqual(this.contentScale, painterModifier.contentScale) || this.alpha != painterModifier.alpha || !Intrinsics.areEqual(this.colorFilter, painterModifier.colorFilter)) {
            return false;
        }
        return true;
    }

    @NotNull
    public final Alignment getAlignment() {
        return this.alignment;
    }

    public final float getAlpha() {
        return this.alpha;
    }

    @Nullable
    public final ColorFilter getColorFilter() {
        return this.colorFilter;
    }

    @NotNull
    public final ContentScale getContentScale() {
        return this.contentScale;
    }

    @NotNull
    public final Painter getPainter() {
        return this.painter;
    }

    public final boolean getSizeToIntrinsics() {
        return this.sizeToIntrinsics;
    }

    public int hashCode() {
        int i10;
        int hashCode = ((((((((this.painter.hashCode() * 31) + Boolean.hashCode(this.sizeToIntrinsics)) * 31) + this.alignment.hashCode()) * 31) + this.contentScale.hashCode()) * 31) + Float.hashCode(this.alpha)) * 31;
        ColorFilter colorFilter = this.colorFilter;
        if (colorFilter != null) {
            i10 = colorFilter.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (getUseIntrinsicSize()) {
            long m1533modifyConstraintsZezNO4M = m1533modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i10, 0, 0, 13, null));
            return Math.max(Constraints.m4006getMinHeightimpl(m1533modifyConstraintsZezNO4M), measurable.maxIntrinsicHeight(i10));
        }
        return measurable.maxIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (getUseIntrinsicSize()) {
            long m1533modifyConstraintsZezNO4M = m1533modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i10, 7, null));
            return Math.max(Constraints.m4007getMinWidthimpl(m1533modifyConstraintsZezNO4M), measurable.maxIntrinsicWidth(i10));
        }
        return measurable.maxIntrinsicWidth(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(m1533modifyConstraintsZezNO4M(j10));
        return MeasureScope.layout$default(measure, mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.draw.PainterModifier$measure$1
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
        if (getUseIntrinsicSize()) {
            long m1533modifyConstraintsZezNO4M = m1533modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i10, 0, 0, 13, null));
            return Math.max(Constraints.m4006getMinHeightimpl(m1533modifyConstraintsZezNO4M), measurable.minIntrinsicHeight(i10));
        }
        return measurable.minIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (getUseIntrinsicSize()) {
            long m1533modifyConstraintsZezNO4M = m1533modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i10, 7, null));
            return Math.max(Constraints.m4007getMinWidthimpl(m1533modifyConstraintsZezNO4M), measurable.minIntrinsicWidth(i10));
        }
        return measurable.minIntrinsicWidth(i10);
    }

    @NotNull
    public String toString() {
        return "PainterModifier(painter=" + this.painter + ", sizeToIntrinsics=" + this.sizeToIntrinsics + ", alignment=" + this.alignment + ", alpha=" + this.alpha + ", colorFilter=" + this.colorFilter + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PainterModifier(@NotNull Painter painter, boolean z10, @NotNull Alignment alignment, @NotNull ContentScale contentScale, float f10, @Nullable ColorFilter colorFilter, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(painter, "painter");
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        Intrinsics.checkNotNullParameter(contentScale, "contentScale");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.painter = painter;
        this.sizeToIntrinsics = z10;
        this.alignment = alignment;
        this.contentScale = contentScale;
        this.alpha = f10;
        this.colorFilter = colorFilter;
    }
}
