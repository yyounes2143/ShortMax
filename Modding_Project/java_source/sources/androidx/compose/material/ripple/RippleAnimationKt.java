package androidx.compose.material.ripple;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RippleAnimation.kt */
@Metadata
/* loaded from: classes.dex */
public final class RippleAnimationKt {
    private static final float BoundedRippleExtraRadius = Dp.m4049constructorimpl(10);
    private static final int FadeInDuration = 75;
    private static final int FadeOutDuration = 150;
    private static final int RadiusDuration = 225;

    /* renamed from: getRippleEndRadius-cSwnlzA  reason: not valid java name */
    public static final float m1283getRippleEndRadiuscSwnlzA(@NotNull Density getRippleEndRadius, boolean z10, long j10) {
        Intrinsics.checkNotNullParameter(getRippleEndRadius, "$this$getRippleEndRadius");
        float m1604getDistanceimpl = Offset.m1604getDistanceimpl(OffsetKt.Offset(Size.m1675getWidthimpl(j10), Size.m1672getHeightimpl(j10))) / 2.0f;
        if (z10) {
            return m1604getDistanceimpl + getRippleEndRadius.mo342toPx0680j_4(BoundedRippleExtraRadius);
        }
        return m1604getDistanceimpl;
    }

    /* renamed from: getRippleStartRadius-uvyYCjk  reason: not valid java name */
    public static final float m1284getRippleStartRadiusuvyYCjk(long j10) {
        return Math.max(Size.m1675getWidthimpl(j10), Size.m1672getHeightimpl(j10)) * 0.3f;
    }
}
