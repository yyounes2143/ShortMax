package androidx.compose.ui.graphics;

import android.graphics.Path;
import android.graphics.RectF;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.PathOperation;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidPath.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidPath implements Path {
    @NotNull
    private final android.graphics.Path internalPath;
    @NotNull
    private final android.graphics.Matrix mMatrix;
    @NotNull
    private final float[] radii;
    @NotNull
    private final RectF rectF;

    public AndroidPath() {
        this(null, 1, null);
    }

    private final boolean _rectIsValid(Rect rect) {
        if (!Float.isNaN(rect.getLeft())) {
            if (!Float.isNaN(rect.getTop())) {
                if (!Float.isNaN(rect.getRight())) {
                    if (!Float.isNaN(rect.getBottom())) {
                        return true;
                    }
                    throw new IllegalStateException("Rect.bottom is NaN");
                }
                throw new IllegalStateException("Rect.right is NaN");
            }
            throw new IllegalStateException("Rect.top is NaN");
        }
        throw new IllegalStateException("Rect.left is NaN");
    }

    @Override // androidx.compose.ui.graphics.Path
    public void addArc(@NotNull Rect oval, float f10, float f11) {
        Intrinsics.checkNotNullParameter(oval, "oval");
        if (_rectIsValid(oval)) {
            this.rectF.set(RectHelper_androidKt.toAndroidRect(oval));
            this.internalPath.addArc(this.rectF, f10, f11);
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    @Override // androidx.compose.ui.graphics.Path
    public void addArcRad(@NotNull Rect oval, float f10, float f11) {
        Intrinsics.checkNotNullParameter(oval, "oval");
        addArc(oval, DegreesKt.degrees(f10), DegreesKt.degrees(f11));
    }

    @Override // androidx.compose.ui.graphics.Path
    public void addOval(@NotNull Rect oval) {
        Intrinsics.checkNotNullParameter(oval, "oval");
        this.rectF.set(RectHelper_androidKt.toAndroidRect(oval));
        this.internalPath.addOval(this.rectF, Path.Direction.CCW);
    }

    @Override // androidx.compose.ui.graphics.Path
    /* renamed from: addPath-Uv8p0NA  reason: not valid java name */
    public void mo1737addPathUv8p0NA(@NotNull Path path, long j10) {
        Intrinsics.checkNotNullParameter(path, "path");
        android.graphics.Path path2 = this.internalPath;
        if (path instanceof AndroidPath) {
            path2.addPath(((AndroidPath) path).getInternalPath(), Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10));
            return;
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    @Override // androidx.compose.ui.graphics.Path
    public void addRect(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        if (_rectIsValid(rect)) {
            this.rectF.set(RectHelper_androidKt.toAndroidRectF(rect));
            this.internalPath.addRect(this.rectF, Path.Direction.CCW);
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    @Override // androidx.compose.ui.graphics.Path
    public void addRoundRect(@NotNull RoundRect roundRect) {
        Intrinsics.checkNotNullParameter(roundRect, "roundRect");
        this.rectF.set(roundRect.getLeft(), roundRect.getTop(), roundRect.getRight(), roundRect.getBottom());
        this.radii[0] = CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs());
        this.radii[1] = CornerRadius.m1582getYimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs());
        this.radii[2] = CornerRadius.m1581getXimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs());
        this.radii[3] = CornerRadius.m1582getYimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs());
        this.radii[4] = CornerRadius.m1581getXimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs());
        this.radii[5] = CornerRadius.m1582getYimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs());
        this.radii[6] = CornerRadius.m1581getXimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs());
        this.radii[7] = CornerRadius.m1582getYimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs());
        this.internalPath.addRoundRect(this.rectF, this.radii, Path.Direction.CCW);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void arcTo(@NotNull Rect rect, float f10, float f11, boolean z10) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.rectF.set(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom());
        this.internalPath.arcTo(this.rectF, f10, f11, z10);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void close() {
        this.internalPath.close();
    }

    @Override // androidx.compose.ui.graphics.Path
    public void cubicTo(float f10, float f11, float f12, float f13, float f14, float f15) {
        this.internalPath.cubicTo(f10, f11, f12, f13, f14, f15);
    }

    @Override // androidx.compose.ui.graphics.Path
    @NotNull
    public Rect getBounds() {
        this.internalPath.computeBounds(this.rectF, true);
        RectF rectF = this.rectF;
        return new Rect(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    @Override // androidx.compose.ui.graphics.Path
    /* renamed from: getFillType-Rg-k1Os  reason: not valid java name */
    public int mo1738getFillTypeRgk1Os() {
        if (this.internalPath.getFillType() == Path.FillType.EVEN_ODD) {
            return PathFillType.Companion.m2085getEvenOddRgk1Os();
        }
        return PathFillType.Companion.m2086getNonZeroRgk1Os();
    }

    @NotNull
    public final android.graphics.Path getInternalPath() {
        return this.internalPath;
    }

    @Override // androidx.compose.ui.graphics.Path
    public boolean isConvex() {
        return this.internalPath.isConvex();
    }

    @Override // androidx.compose.ui.graphics.Path
    public boolean isEmpty() {
        return this.internalPath.isEmpty();
    }

    @Override // androidx.compose.ui.graphics.Path
    public void lineTo(float f10, float f11) {
        this.internalPath.lineTo(f10, f11);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void moveTo(float f10, float f11) {
        this.internalPath.moveTo(f10, f11);
    }

    @Override // androidx.compose.ui.graphics.Path
    /* renamed from: op-N5in7k0  reason: not valid java name */
    public boolean mo1739opN5in7k0(@NotNull Path path1, @NotNull Path path2, int i10) {
        Path.Op op2;
        Intrinsics.checkNotNullParameter(path1, "path1");
        Intrinsics.checkNotNullParameter(path2, "path2");
        PathOperation.Companion companion = PathOperation.Companion;
        if (PathOperation.m2090equalsimpl0(i10, companion.m2094getDifferenceb3I0S0c())) {
            op2 = Path.Op.DIFFERENCE;
        } else if (PathOperation.m2090equalsimpl0(i10, companion.m2095getIntersectb3I0S0c())) {
            op2 = Path.Op.INTERSECT;
        } else if (PathOperation.m2090equalsimpl0(i10, companion.m2096getReverseDifferenceb3I0S0c())) {
            op2 = Path.Op.REVERSE_DIFFERENCE;
        } else if (PathOperation.m2090equalsimpl0(i10, companion.m2097getUnionb3I0S0c())) {
            op2 = Path.Op.UNION;
        } else {
            op2 = Path.Op.XOR;
        }
        android.graphics.Path path = this.internalPath;
        if (path1 instanceof AndroidPath) {
            android.graphics.Path internalPath = ((AndroidPath) path1).getInternalPath();
            if (path2 instanceof AndroidPath) {
                return path.op(internalPath, ((AndroidPath) path2).getInternalPath(), op2);
            }
            throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    @Override // androidx.compose.ui.graphics.Path
    public void quadraticBezierTo(float f10, float f11, float f12, float f13) {
        this.internalPath.quadTo(f10, f11, f12, f13);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void relativeCubicTo(float f10, float f11, float f12, float f13, float f14, float f15) {
        this.internalPath.rCubicTo(f10, f11, f12, f13, f14, f15);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void relativeLineTo(float f10, float f11) {
        this.internalPath.rLineTo(f10, f11);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void relativeMoveTo(float f10, float f11) {
        this.internalPath.rMoveTo(f10, f11);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void relativeQuadraticBezierTo(float f10, float f11, float f12, float f13) {
        this.internalPath.rQuadTo(f10, f11, f12, f13);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void reset() {
        this.internalPath.reset();
    }

    @Override // androidx.compose.ui.graphics.Path
    /* renamed from: setFillType-oQ8Xj4U  reason: not valid java name */
    public void mo1740setFillTypeoQ8Xj4U(int i10) {
        Path.FillType fillType;
        android.graphics.Path path = this.internalPath;
        if (PathFillType.m2081equalsimpl0(i10, PathFillType.Companion.m2085getEvenOddRgk1Os())) {
            fillType = Path.FillType.EVEN_ODD;
        } else {
            fillType = Path.FillType.WINDING;
        }
        path.setFillType(fillType);
    }

    @Override // androidx.compose.ui.graphics.Path
    /* renamed from: translate-k-4lQ0M  reason: not valid java name */
    public void mo1741translatek4lQ0M(long j10) {
        this.mMatrix.reset();
        this.mMatrix.setTranslate(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10));
        this.internalPath.transform(this.mMatrix);
    }

    public AndroidPath(@NotNull android.graphics.Path internalPath) {
        Intrinsics.checkNotNullParameter(internalPath, "internalPath");
        this.internalPath = internalPath;
        this.rectF = new RectF();
        this.radii = new float[8];
        this.mMatrix = new android.graphics.Matrix();
    }

    public /* synthetic */ AndroidPath(android.graphics.Path path, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new android.graphics.Path() : path);
    }

    public static /* synthetic */ void isConvex$annotations() {
    }
}
