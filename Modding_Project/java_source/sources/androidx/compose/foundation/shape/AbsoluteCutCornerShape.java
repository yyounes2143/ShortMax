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
/* compiled from: AbsoluteCutCornerShape.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class AbsoluteCutCornerShape extends CornerBasedShape {
    public static final int $stable = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbsoluteCutCornerShape(@NotNull CornerSize topLeft, @NotNull CornerSize topRight, @NotNull CornerSize bottomRight, @NotNull CornerSize bottomLeft) {
        super(topLeft, topRight, bottomRight, bottomLeft);
        Intrinsics.checkNotNullParameter(topLeft, "topLeft");
        Intrinsics.checkNotNullParameter(topRight, "topRight");
        Intrinsics.checkNotNullParameter(bottomRight, "bottomRight");
        Intrinsics.checkNotNullParameter(bottomLeft, "bottomLeft");
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    @NotNull
    /* renamed from: createOutline-LjSzlW0  reason: not valid java name */
    public Outline mo680createOutlineLjSzlW0(long j10, float f10, float f11, float f12, float f13, @NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        if (f10 + f11 + f13 + f12 == 0.0f) {
            return new Outline.Rectangle(SizeKt.m1696toRectuvyYCjk(j10));
        }
        Path Path = AndroidPath_androidKt.Path();
        Path.moveTo(0.0f, f10);
        Path.lineTo(f10, 0.0f);
        Path.lineTo(Size.m1675getWidthimpl(j10) - f11, 0.0f);
        Path.lineTo(Size.m1675getWidthimpl(j10), f11);
        Path.lineTo(Size.m1675getWidthimpl(j10), Size.m1672getHeightimpl(j10) - f12);
        Path.lineTo(Size.m1675getWidthimpl(j10) - f12, Size.m1672getHeightimpl(j10));
        Path.lineTo(f13, Size.m1672getHeightimpl(j10));
        Path.lineTo(0.0f, Size.m1672getHeightimpl(j10) - f13);
        Path.close();
        return new Outline.Generic(Path);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbsoluteCutCornerShape)) {
            return false;
        }
        AbsoluteCutCornerShape absoluteCutCornerShape = (AbsoluteCutCornerShape) obj;
        if (Intrinsics.areEqual(getTopStart(), absoluteCutCornerShape.getTopStart()) && Intrinsics.areEqual(getTopEnd(), absoluteCutCornerShape.getTopEnd()) && Intrinsics.areEqual(getBottomEnd(), absoluteCutCornerShape.getBottomEnd()) && Intrinsics.areEqual(getBottomStart(), absoluteCutCornerShape.getBottomStart())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((getTopStart().hashCode() * 31) + getTopEnd().hashCode()) * 31) + getBottomEnd().hashCode()) * 31) + getBottomStart().hashCode();
    }

    @NotNull
    public String toString() {
        return "AbsoluteCutCornerShape(topLeft = " + getTopStart() + ", topRight = " + getTopEnd() + ", bottomRight = " + getBottomEnd() + ", bottomLeft = " + getBottomStart() + ')';
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    @NotNull
    public AbsoluteCutCornerShape copy(@NotNull CornerSize topStart, @NotNull CornerSize topEnd, @NotNull CornerSize bottomEnd, @NotNull CornerSize bottomStart) {
        Intrinsics.checkNotNullParameter(topStart, "topStart");
        Intrinsics.checkNotNullParameter(topEnd, "topEnd");
        Intrinsics.checkNotNullParameter(bottomEnd, "bottomEnd");
        Intrinsics.checkNotNullParameter(bottomStart, "bottomStart");
        return new AbsoluteCutCornerShape(topStart, topEnd, bottomEnd, bottomStart);
    }
}
