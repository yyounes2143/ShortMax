package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyLayoutMeasureScope.kt */
@Stable
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public interface LazyLayoutMeasureScope extends MeasureScope {
    @NotNull
    /* renamed from: measure-0kLqBqw  reason: not valid java name */
    Placeable[] mo659measure0kLqBqw(int i10, long j10);

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-GaN1DYA */
    default float mo337toDpGaN1DYA(long j10) {
        if (TextUnitType.m4258equalsimpl0(TextUnit.m4229getTypeUIouoOA(j10), TextUnitType.Companion.m4263getSpUIouoOA())) {
            return Dp.m4049constructorimpl(TextUnit.m4230getValueimpl(j10) * getFontScale());
        }
        throw new IllegalStateException("Only Sp can convert to Px");
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-u2uoSUM */
    default float mo339toDpu2uoSUM(int i10) {
        return Dp.m4049constructorimpl(i10 / getDensity());
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDpSize-k-rfVVM */
    default long mo340toDpSizekrfVVM(long j10) {
        if (j10 != Size.Companion.m1683getUnspecifiedNHjbRc()) {
            return DpKt.m4071DpSizeYgX7TsA(mo338toDpu2uoSUM(Size.m1675getWidthimpl(j10)), mo338toDpu2uoSUM(Size.m1672getHeightimpl(j10)));
        }
        return DpSize.Companion.m4156getUnspecifiedMYxV2XQ();
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSize-XkaWNTQ */
    default long mo343toSizeXkaWNTQ(long j10) {
        if (j10 != DpSize.Companion.m4156getUnspecifiedMYxV2XQ()) {
            return SizeKt.Size(mo342toPx0680j_4(DpSize.m4147getWidthD9Ej5fM(j10)), mo342toPx0680j_4(DpSize.m4145getHeightD9Ej5fM(j10)));
        }
        return Size.Companion.m1683getUnspecifiedNHjbRc();
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-0xMU5do */
    default long mo344toSp0xMU5do(float f10) {
        return TextUnitKt.getSp(f10 / getFontScale());
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-kPz2Gy4 */
    default long mo345toSpkPz2Gy4(float f10) {
        return TextUnitKt.getSp(f10 / (getFontScale() * getDensity()));
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-kPz2Gy4 */
    default long mo346toSpkPz2Gy4(int i10) {
        return TextUnitKt.getSp(i10 / (getFontScale() * getDensity()));
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-u2uoSUM */
    default float mo338toDpu2uoSUM(float f10) {
        return Dp.m4049constructorimpl(f10 / getDensity());
    }
}
