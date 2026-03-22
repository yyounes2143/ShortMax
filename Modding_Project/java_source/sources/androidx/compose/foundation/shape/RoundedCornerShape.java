package androidx.compose.foundation.shape;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoundedCornerShape.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class RoundedCornerShape extends CornerBasedShape {
    public static final int $stable = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoundedCornerShape(@NotNull CornerSize topStart, @NotNull CornerSize topEnd, @NotNull CornerSize bottomEnd, @NotNull CornerSize bottomStart) {
        super(topStart, topEnd, bottomEnd, bottomStart);
        Intrinsics.checkNotNullParameter(topStart, "topStart");
        Intrinsics.checkNotNullParameter(topEnd, "topEnd");
        Intrinsics.checkNotNullParameter(bottomEnd, "bottomEnd");
        Intrinsics.checkNotNullParameter(bottomStart, "bottomStart");
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    @NotNull
    /* renamed from: createOutline-LjSzlW0 */
    public Outline mo680createOutlineLjSzlW0(long j10, float f10, float f11, float f12, float f13, @NotNull LayoutDirection layoutDirection) {
        float f14;
        float f15;
        float f16;
        float f17;
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        if (f10 + f11 + f12 + f13 == 0.0f) {
            return new Outline.Rectangle(SizeKt.m1696toRectuvyYCjk(j10));
        }
        Rect m1696toRectuvyYCjk = SizeKt.m1696toRectuvyYCjk(j10);
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        if (layoutDirection == layoutDirection2) {
            f14 = f10;
        } else {
            f14 = f11;
        }
        long CornerRadius$default = CornerRadiusKt.CornerRadius$default(f14, 0.0f, 2, null);
        if (layoutDirection == layoutDirection2) {
            f15 = f11;
        } else {
            f15 = f10;
        }
        long CornerRadius$default2 = CornerRadiusKt.CornerRadius$default(f15, 0.0f, 2, null);
        if (layoutDirection == layoutDirection2) {
            f16 = f12;
        } else {
            f16 = f13;
        }
        long CornerRadius$default3 = CornerRadiusKt.CornerRadius$default(f16, 0.0f, 2, null);
        if (layoutDirection == layoutDirection2) {
            f17 = f13;
        } else {
            f17 = f12;
        }
        return new Outline.Rounded(RoundRectKt.m1658RoundRectZAM2FJo(m1696toRectuvyYCjk, CornerRadius$default, CornerRadius$default2, CornerRadius$default3, CornerRadiusKt.CornerRadius$default(f17, 0.0f, 2, null)));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoundedCornerShape)) {
            return false;
        }
        RoundedCornerShape roundedCornerShape = (RoundedCornerShape) obj;
        if (Intrinsics.areEqual(getTopStart(), roundedCornerShape.getTopStart()) && Intrinsics.areEqual(getTopEnd(), roundedCornerShape.getTopEnd()) && Intrinsics.areEqual(getBottomEnd(), roundedCornerShape.getBottomEnd()) && Intrinsics.areEqual(getBottomStart(), roundedCornerShape.getBottomStart())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((getTopStart().hashCode() * 31) + getTopEnd().hashCode()) * 31) + getBottomEnd().hashCode()) * 31) + getBottomStart().hashCode();
    }

    @NotNull
    public String toString() {
        return "RoundedCornerShape(topStart = " + getTopStart() + ", topEnd = " + getTopEnd() + ", bottomEnd = " + getBottomEnd() + ", bottomStart = " + getBottomStart() + ')';
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    @NotNull
    public RoundedCornerShape copy(@NotNull CornerSize topStart, @NotNull CornerSize topEnd, @NotNull CornerSize bottomEnd, @NotNull CornerSize bottomStart) {
        Intrinsics.checkNotNullParameter(topStart, "topStart");
        Intrinsics.checkNotNullParameter(topEnd, "topEnd");
        Intrinsics.checkNotNullParameter(bottomEnd, "bottomEnd");
        Intrinsics.checkNotNullParameter(bottomStart, "bottomStart");
        return new RoundedCornerShape(topStart, topEnd, bottomEnd, bottomStart);
    }
}
