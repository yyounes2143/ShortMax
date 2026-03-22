package androidx.compose.ui.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Layout.kt */
@Metadata
/* loaded from: classes.dex */
public final class IntrinsicsMeasureScope implements MeasureScope, Density {
    private final /* synthetic */ Density $$delegate_0;
    @NotNull
    private final LayoutDirection layoutDirection;

    public IntrinsicsMeasureScope(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        this.layoutDirection = layoutDirection;
        this.$$delegate_0 = density;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.$$delegate_0.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.$$delegate_0.getFontScale();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    @NotNull
    public LayoutDirection getLayoutDirection() {
        return this.layoutDirection;
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: roundToPx--R2X_6o */
    public int mo335roundToPxR2X_6o(long j10) {
        return this.$$delegate_0.mo335roundToPxR2X_6o(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: roundToPx-0680j_4 */
    public int mo336roundToPx0680j_4(float f10) {
        return this.$$delegate_0.mo336roundToPx0680j_4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-GaN1DYA */
    public float mo337toDpGaN1DYA(long j10) {
        return this.$$delegate_0.mo337toDpGaN1DYA(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-u2uoSUM */
    public float mo338toDpu2uoSUM(float f10) {
        return this.$$delegate_0.mo338toDpu2uoSUM(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDpSize-k-rfVVM */
    public long mo340toDpSizekrfVVM(long j10) {
        return this.$$delegate_0.mo340toDpSizekrfVVM(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toPx--R2X_6o */
    public float mo341toPxR2X_6o(long j10) {
        return this.$$delegate_0.mo341toPxR2X_6o(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toPx-0680j_4 */
    public float mo342toPx0680j_4(float f10) {
        return this.$$delegate_0.mo342toPx0680j_4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    @NotNull
    public Rect toRect(@NotNull DpRect dpRect) {
        Intrinsics.checkNotNullParameter(dpRect, "<this>");
        return this.$$delegate_0.toRect(dpRect);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSize-XkaWNTQ */
    public long mo343toSizeXkaWNTQ(long j10) {
        return this.$$delegate_0.mo343toSizeXkaWNTQ(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-0xMU5do */
    public long mo344toSp0xMU5do(float f10) {
        return this.$$delegate_0.mo344toSp0xMU5do(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-kPz2Gy4 */
    public long mo345toSpkPz2Gy4(float f10) {
        return this.$$delegate_0.mo345toSpkPz2Gy4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-u2uoSUM */
    public float mo339toDpu2uoSUM(int i10) {
        return this.$$delegate_0.mo339toDpu2uoSUM(i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-kPz2Gy4 */
    public long mo346toSpkPz2Gy4(int i10) {
        return this.$$delegate_0.mo346toSpkPz2Gy4(i10);
    }
}
