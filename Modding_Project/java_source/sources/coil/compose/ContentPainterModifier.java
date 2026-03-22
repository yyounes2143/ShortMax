package coil.compose;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.draw.DrawModifier;
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
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import bt.a;
import c0.c;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContentPainterModifier.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ContentPainterModifier extends InspectorValueInfo implements LayoutModifier, DrawModifier {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Painter f3850a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Alignment f3851b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ContentScale f3852c;

    /* renamed from: d  reason: collision with root package name */
    private final float f3853d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final ColorFilter f3854e;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ContentPainterModifier(@org.jetbrains.annotations.NotNull final androidx.compose.ui.graphics.painter.Painter r8, @org.jetbrains.annotations.NotNull final androidx.compose.ui.Alignment r9, @org.jetbrains.annotations.NotNull final androidx.compose.ui.layout.ContentScale r10, final float r11, @org.jetbrains.annotations.Nullable final androidx.compose.ui.graphics.ColorFilter r12) {
        /*
            r7 = this;
            boolean r0 = androidx.compose.ui.platform.InspectableValueKt.isDebugInspectorInfoEnabled()
            if (r0 == 0) goto L12
            coil.compose.ContentPainterModifier$special$$inlined$debugInspectorInfo$1 r0 = new coil.compose.ContentPainterModifier$special$$inlined$debugInspectorInfo$1
            r1 = r0
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = r11
            r6 = r12
            r1.<init>()
            goto L16
        L12:
            kotlin.jvm.functions.Function1 r0 = androidx.compose.ui.platform.InspectableValueKt.getNoInspectorInfo()
        L16:
            r7.<init>(r0)
            r7.f3850a = r8
            r7.f3851b = r9
            r7.f3852c = r10
            r7.f3853d = r11
            r7.f3854e = r12
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.compose.ContentPainterModifier.<init>(androidx.compose.ui.graphics.painter.Painter, androidx.compose.ui.Alignment, androidx.compose.ui.layout.ContentScale, float, androidx.compose.ui.graphics.ColorFilter):void");
    }

    /* renamed from: calculateScaledSize-E7KxVPU  reason: not valid java name */
    private final long m4466calculateScaledSizeE7KxVPU(long j10) {
        if (Size.m1677isEmptyimpl(j10)) {
            return Size.Companion.m1684getZeroNHjbRc();
        }
        long mo2405getIntrinsicSizeNHjbRc = this.f3850a.mo2405getIntrinsicSizeNHjbRc();
        if (mo2405getIntrinsicSizeNHjbRc == Size.Companion.m1683getUnspecifiedNHjbRc()) {
            return j10;
        }
        float m1675getWidthimpl = Size.m1675getWidthimpl(mo2405getIntrinsicSizeNHjbRc);
        if (Float.isInfinite(m1675getWidthimpl) || Float.isNaN(m1675getWidthimpl)) {
            m1675getWidthimpl = Size.m1675getWidthimpl(j10);
        }
        float m1672getHeightimpl = Size.m1672getHeightimpl(mo2405getIntrinsicSizeNHjbRc);
        if (Float.isInfinite(m1672getHeightimpl) || Float.isNaN(m1672getHeightimpl)) {
            m1672getHeightimpl = Size.m1672getHeightimpl(j10);
        }
        long Size = SizeKt.Size(m1675getWidthimpl, m1672getHeightimpl);
        return ScaleFactorKt.m3411timesUQTWf7w(Size, this.f3852c.mo3326computeScaleFactorH7hwNQA(Size, j10));
    }

    /* renamed from: modifyConstraints-ZezNO4M  reason: not valid java name */
    private final long m4467modifyConstraintsZezNO4M(long j10) {
        boolean z10;
        float m4007getMinWidthimpl;
        int m4006getMinHeightimpl;
        float a10;
        boolean m4003getHasFixedWidthimpl = Constraints.m4003getHasFixedWidthimpl(j10);
        boolean m4002getHasFixedHeightimpl = Constraints.m4002getHasFixedHeightimpl(j10);
        if (m4003getHasFixedWidthimpl && m4002getHasFixedHeightimpl) {
            return j10;
        }
        if (Constraints.m4001getHasBoundedWidthimpl(j10) && Constraints.m4000getHasBoundedHeightimpl(j10)) {
            z10 = true;
        } else {
            z10 = false;
        }
        long mo2405getIntrinsicSizeNHjbRc = this.f3850a.mo2405getIntrinsicSizeNHjbRc();
        if (mo2405getIntrinsicSizeNHjbRc == Size.Companion.m1683getUnspecifiedNHjbRc()) {
            if (z10) {
                return Constraints.m3996copyZbe2FdA$default(j10, Constraints.m4005getMaxWidthimpl(j10), 0, Constraints.m4004getMaxHeightimpl(j10), 0, 10, null);
            }
            return j10;
        }
        if (z10 && (m4003getHasFixedWidthimpl || m4002getHasFixedHeightimpl)) {
            m4007getMinWidthimpl = Constraints.m4005getMaxWidthimpl(j10);
            m4006getMinHeightimpl = Constraints.m4004getMaxHeightimpl(j10);
        } else {
            float m1675getWidthimpl = Size.m1675getWidthimpl(mo2405getIntrinsicSizeNHjbRc);
            float m1672getHeightimpl = Size.m1672getHeightimpl(mo2405getIntrinsicSizeNHjbRc);
            if (!Float.isInfinite(m1675getWidthimpl) && !Float.isNaN(m1675getWidthimpl)) {
                m4007getMinWidthimpl = c.b(j10, m1675getWidthimpl);
            } else {
                m4007getMinWidthimpl = Constraints.m4007getMinWidthimpl(j10);
            }
            if (!Float.isInfinite(m1672getHeightimpl) && !Float.isNaN(m1672getHeightimpl)) {
                a10 = c.a(j10, m1672getHeightimpl);
                long m4466calculateScaledSizeE7KxVPU = m4466calculateScaledSizeE7KxVPU(SizeKt.Size(m4007getMinWidthimpl, a10));
                return Constraints.m3996copyZbe2FdA$default(j10, ConstraintsKt.m4019constrainWidthK40F9xA(j10, a.c(Size.m1675getWidthimpl(m4466calculateScaledSizeE7KxVPU))), 0, ConstraintsKt.m4018constrainHeightK40F9xA(j10, a.c(Size.m1672getHeightimpl(m4466calculateScaledSizeE7KxVPU))), 0, 10, null);
            }
            m4006getMinHeightimpl = Constraints.m4006getMinHeightimpl(j10);
        }
        a10 = m4006getMinHeightimpl;
        long m4466calculateScaledSizeE7KxVPU2 = m4466calculateScaledSizeE7KxVPU(SizeKt.Size(m4007getMinWidthimpl, a10));
        return Constraints.m3996copyZbe2FdA$default(j10, ConstraintsKt.m4019constrainWidthK40F9xA(j10, a.c(Size.m1675getWidthimpl(m4466calculateScaledSizeE7KxVPU2))), 0, ConstraintsKt.m4018constrainHeightK40F9xA(j10, a.c(Size.m1672getHeightimpl(m4466calculateScaledSizeE7KxVPU2))), 0, 10, null);
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public void draw(@NotNull ContentDrawScope contentDrawScope) {
        long m4466calculateScaledSizeE7KxVPU = m4466calculateScaledSizeE7KxVPU(contentDrawScope.mo2336getSizeNHjbRc());
        long mo1514alignKFBX0sM = this.f3851b.mo1514alignKFBX0sM(c.e(m4466calculateScaledSizeE7KxVPU), c.e(contentDrawScope.mo2336getSizeNHjbRc()), contentDrawScope.getLayoutDirection());
        float m4159component1impl = IntOffset.m4159component1impl(mo1514alignKFBX0sM);
        float m4160component2impl = IntOffset.m4160component2impl(mo1514alignKFBX0sM);
        contentDrawScope.getDrawContext().getTransform().translate(m4159component1impl, m4160component2impl);
        this.f3850a.m2411drawx_KDEd0(contentDrawScope, m4466calculateScaledSizeE7KxVPU, this.f3853d, this.f3854e);
        contentDrawScope.getDrawContext().getTransform().translate(-m4159component1impl, -m4160component2impl);
        contentDrawScope.drawContent();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContentPainterModifier)) {
            return false;
        }
        ContentPainterModifier contentPainterModifier = (ContentPainterModifier) obj;
        if (Intrinsics.areEqual(this.f3850a, contentPainterModifier.f3850a) && Intrinsics.areEqual(this.f3851b, contentPainterModifier.f3851b) && Intrinsics.areEqual(this.f3852c, contentPainterModifier.f3852c) && Intrinsics.areEqual((Object) Float.valueOf(this.f3853d), (Object) Float.valueOf(contentPainterModifier.f3853d)) && Intrinsics.areEqual(this.f3854e, contentPainterModifier.f3854e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((((((this.f3850a.hashCode() * 31) + this.f3851b.hashCode()) * 31) + this.f3852c.hashCode()) * 31) + Float.hashCode(this.f3853d)) * 31;
        ColorFilter colorFilter = this.f3854e;
        if (colorFilter == null) {
            hashCode = 0;
        } else {
            hashCode = colorFilter.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        if (this.f3850a.mo2405getIntrinsicSizeNHjbRc() != Size.Companion.m1683getUnspecifiedNHjbRc()) {
            int maxIntrinsicHeight = intrinsicMeasurable.maxIntrinsicHeight(Constraints.m4005getMaxWidthimpl(m4467modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i10, 0, 0, 13, null))));
            return Math.max(a.c(Size.m1672getHeightimpl(m4466calculateScaledSizeE7KxVPU(SizeKt.Size(i10, maxIntrinsicHeight)))), maxIntrinsicHeight);
        }
        return intrinsicMeasurable.maxIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        if (this.f3850a.mo2405getIntrinsicSizeNHjbRc() != Size.Companion.m1683getUnspecifiedNHjbRc()) {
            int maxIntrinsicWidth = intrinsicMeasurable.maxIntrinsicWidth(Constraints.m4004getMaxHeightimpl(m4467modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i10, 7, null))));
            return Math.max(a.c(Size.m1675getWidthimpl(m4466calculateScaledSizeE7KxVPU(SizeKt.Size(maxIntrinsicWidth, i10)))), maxIntrinsicWidth);
        }
        return intrinsicMeasurable.maxIntrinsicWidth(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measureScope, @NotNull Measurable measurable, long j10) {
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(m4467modifyConstraintsZezNO4M(j10));
        return MeasureScope.layout$default(measureScope, mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: coil.compose.ContentPainterModifier$measure$1
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
            public final void invoke2(@NotNull Placeable.PlacementScope placementScope) {
                Placeable.PlacementScope.placeRelative$default(placementScope, Placeable.this, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        if (this.f3850a.mo2405getIntrinsicSizeNHjbRc() != Size.Companion.m1683getUnspecifiedNHjbRc()) {
            int minIntrinsicHeight = intrinsicMeasurable.minIntrinsicHeight(Constraints.m4005getMaxWidthimpl(m4467modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i10, 0, 0, 13, null))));
            return Math.max(a.c(Size.m1672getHeightimpl(m4466calculateScaledSizeE7KxVPU(SizeKt.Size(i10, minIntrinsicHeight)))), minIntrinsicHeight);
        }
        return intrinsicMeasurable.minIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        if (this.f3850a.mo2405getIntrinsicSizeNHjbRc() != Size.Companion.m1683getUnspecifiedNHjbRc()) {
            int minIntrinsicWidth = intrinsicMeasurable.minIntrinsicWidth(Constraints.m4004getMaxHeightimpl(m4467modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i10, 7, null))));
            return Math.max(a.c(Size.m1675getWidthimpl(m4466calculateScaledSizeE7KxVPU(SizeKt.Size(minIntrinsicWidth, i10)))), minIntrinsicWidth);
        }
        return intrinsicMeasurable.minIntrinsicWidth(i10);
    }

    @NotNull
    public String toString() {
        return "ContentPainterModifier(painter=" + this.f3850a + ", alignment=" + this.f3851b + ", contentScale=" + this.f3852c + ", alpha=" + this.f3853d + ", colorFilter=" + this.f3854e + ')';
    }
}
