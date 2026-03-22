package androidx.compose.material;

import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.OutlineKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppBar.kt */
@Metadata
/* loaded from: classes.dex */
public final class BottomAppBarCutoutShape implements Shape {
    @NotNull
    private final Shape cutoutShape;
    @NotNull
    private final FabPlacement fabPlacement;

    public BottomAppBarCutoutShape(@NotNull Shape cutoutShape, @NotNull FabPlacement fabPlacement) {
        Intrinsics.checkNotNullParameter(cutoutShape, "cutoutShape");
        Intrinsics.checkNotNullParameter(fabPlacement, "fabPlacement");
        this.cutoutShape = cutoutShape;
        this.fabPlacement = fabPlacement;
    }

    private final void addCutoutShape(Path path, LayoutDirection layoutDirection, Density density) {
        float f10;
        float f11;
        f10 = AppBarKt.BottomAppBarCutoutOffset;
        float mo342toPx0680j_4 = density.mo342toPx0680j_4(f10);
        float f12 = 2 * mo342toPx0680j_4;
        long Size = SizeKt.Size(this.fabPlacement.getWidth() + f12, this.fabPlacement.getHeight() + f12);
        float left = this.fabPlacement.getLeft() - mo342toPx0680j_4;
        float m1675getWidthimpl = left + Size.m1675getWidthimpl(Size);
        float m1672getHeightimpl = Size.m1672getHeightimpl(Size) / 2.0f;
        OutlineKt.addOutline(path, this.cutoutShape.mo235createOutlinePq9zytI(Size, layoutDirection, density));
        path.mo1741translatek4lQ0M(OffsetKt.Offset(left, -m1672getHeightimpl));
        if (Intrinsics.areEqual(this.cutoutShape, RoundedCornerShapeKt.getCircleShape())) {
            f11 = AppBarKt.BottomAppBarRoundedEdgeRadius;
            addRoundedEdges(path, left, m1675getWidthimpl, m1672getHeightimpl, density.mo342toPx0680j_4(f11), 0.0f);
        }
    }

    private final void addRoundedEdges(Path path, float f10, float f11, float f12, float f13, float f14) {
        float f15 = -((float) Math.sqrt((f12 * f12) - (f14 * f14)));
        float f16 = f12 + f15;
        float f17 = f10 + f16;
        float f18 = f11 - f16;
        Pair<Float, Float> calculateRoundedEdgeIntercept = AppBarKt.calculateRoundedEdgeIntercept(f15 - 1.0f, f14, f12);
        float floatValue = calculateRoundedEdgeIntercept.b().floatValue() + f12;
        float floatValue2 = calculateRoundedEdgeIntercept.d().floatValue() - f14;
        float f19 = f17 - f13;
        path.moveTo(f19, 0.0f);
        path.quadraticBezierTo(f17 - 1.0f, 0.0f, f10 + floatValue, floatValue2);
        path.lineTo(f11 - floatValue, floatValue2);
        path.quadraticBezierTo(f18 + 1.0f, 0.0f, f13 + f18, 0.0f);
        path.close();
    }

    public static /* synthetic */ BottomAppBarCutoutShape copy$default(BottomAppBarCutoutShape bottomAppBarCutoutShape, Shape shape, FabPlacement fabPlacement, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            shape = bottomAppBarCutoutShape.cutoutShape;
        }
        if ((i10 & 2) != 0) {
            fabPlacement = bottomAppBarCutoutShape.fabPlacement;
        }
        return bottomAppBarCutoutShape.copy(shape, fabPlacement);
    }

    @NotNull
    public final Shape component1() {
        return this.cutoutShape;
    }

    @NotNull
    public final FabPlacement component2() {
        return this.fabPlacement;
    }

    @NotNull
    public final BottomAppBarCutoutShape copy(@NotNull Shape cutoutShape, @NotNull FabPlacement fabPlacement) {
        Intrinsics.checkNotNullParameter(cutoutShape, "cutoutShape");
        Intrinsics.checkNotNullParameter(fabPlacement, "fabPlacement");
        return new BottomAppBarCutoutShape(cutoutShape, fabPlacement);
    }

    @Override // androidx.compose.ui.graphics.Shape
    @NotNull
    /* renamed from: createOutline-Pq9zytI */
    public Outline mo235createOutlinePq9zytI(long j10, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(density, "density");
        Path Path = AndroidPath_androidKt.Path();
        Path.addRect(new Rect(0.0f, 0.0f, Size.m1675getWidthimpl(j10), Size.m1672getHeightimpl(j10)));
        Path Path2 = AndroidPath_androidKt.Path();
        addCutoutShape(Path2, layoutDirection, density);
        Path2.mo1739opN5in7k0(Path, Path2, PathOperation.Companion.m2094getDifferenceb3I0S0c());
        return new Outline.Generic(Path2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BottomAppBarCutoutShape)) {
            return false;
        }
        BottomAppBarCutoutShape bottomAppBarCutoutShape = (BottomAppBarCutoutShape) obj;
        if (Intrinsics.areEqual(this.cutoutShape, bottomAppBarCutoutShape.cutoutShape) && Intrinsics.areEqual(this.fabPlacement, bottomAppBarCutoutShape.fabPlacement)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Shape getCutoutShape() {
        return this.cutoutShape;
    }

    @NotNull
    public final FabPlacement getFabPlacement() {
        return this.fabPlacement;
    }

    public int hashCode() {
        return (this.cutoutShape.hashCode() * 31) + this.fabPlacement.hashCode();
    }

    @NotNull
    public String toString() {
        return "BottomAppBarCutoutShape(cutoutShape=" + this.cutoutShape + ", fabPlacement=" + this.fabPlacement + ')';
    }
}
