package androidx.compose.foundation.shape;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CutCornerShape.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class CutCornerShape extends CornerBasedShape {
    public static final int $stable = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CutCornerShape(@NotNull CornerSize topStart, @NotNull CornerSize topEnd, @NotNull CornerSize bottomEnd, @NotNull CornerSize bottomStart) {
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
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        if (f10 + f11 + f13 + f12 == 0.0f) {
            return new Outline.Rectangle(SizeKt.m1696toRectuvyYCjk(j10));
        }
        Path Path = AndroidPath_androidKt.Path();
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        if (layoutDirection == layoutDirection2) {
            f14 = f10;
        } else {
            f14 = f11;
        }
        Path.moveTo(0.0f, f14);
        Path.lineTo(f14, 0.0f);
        if (layoutDirection == layoutDirection2) {
            f10 = f11;
        }
        Path.lineTo(Size.m1675getWidthimpl(j10) - f10, 0.0f);
        Path.lineTo(Size.m1675getWidthimpl(j10), f10);
        if (layoutDirection == layoutDirection2) {
            f15 = f12;
        } else {
            f15 = f13;
        }
        Path.lineTo(Size.m1675getWidthimpl(j10), Size.m1672getHeightimpl(j10) - f15);
        Path.lineTo(Size.m1675getWidthimpl(j10) - f15, Size.m1672getHeightimpl(j10));
        if (layoutDirection == layoutDirection2) {
            f12 = f13;
        }
        Path.lineTo(f12, Size.m1672getHeightimpl(j10));
        Path.lineTo(0.0f, Size.m1672getHeightimpl(j10) - f12);
        Path.close();
        return new Outline.Generic(Path);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CutCornerShape)) {
            return false;
        }
        CutCornerShape cutCornerShape = (CutCornerShape) obj;
        if (Intrinsics.areEqual(getTopStart(), cutCornerShape.getTopStart()) && Intrinsics.areEqual(getTopEnd(), cutCornerShape.getTopEnd()) && Intrinsics.areEqual(getBottomEnd(), cutCornerShape.getBottomEnd()) && Intrinsics.areEqual(getBottomStart(), cutCornerShape.getBottomStart())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((getTopStart().hashCode() * 31) + getTopEnd().hashCode()) * 31) + getBottomEnd().hashCode()) * 31) + getBottomStart().hashCode();
    }

    @NotNull
    public String toString() {
        return "CutCornerShape(topStart = " + getTopStart() + ", topEnd = " + getTopEnd() + ", bottomEnd = " + getBottomEnd() + ", bottomStart = " + getBottomStart() + ')';
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    @NotNull
    public CutCornerShape copy(@NotNull CornerSize topStart, @NotNull CornerSize topEnd, @NotNull CornerSize bottomEnd, @NotNull CornerSize bottomStart) {
        Intrinsics.checkNotNullParameter(topStart, "topStart");
        Intrinsics.checkNotNullParameter(topEnd, "topEnd");
        Intrinsics.checkNotNullParameter(bottomEnd, "bottomEnd");
        Intrinsics.checkNotNullParameter(bottomStart, "bottomStart");
        return new CutCornerShape(topStart, topEnd, bottomEnd, bottomStart);
    }
}
