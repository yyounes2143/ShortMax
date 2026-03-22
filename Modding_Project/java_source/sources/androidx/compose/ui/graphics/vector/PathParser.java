package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.vector.PathNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PathParser.kt */
@Metadata
/* loaded from: classes.dex */
public final class PathParser {
    @NotNull
    private final List<PathNode> nodes = new ArrayList();
    @NotNull
    private final PathPoint currentPoint = new PathPoint(0.0f, 0.0f, 3, null);
    @NotNull
    private final PathPoint ctrlPoint = new PathPoint(0.0f, 0.0f, 3, null);
    @NotNull
    private final PathPoint segmentPoint = new PathPoint(0.0f, 0.0f, 3, null);
    @NotNull
    private final PathPoint reflectiveCtrlPoint = new PathPoint(0.0f, 0.0f, 3, null);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PathParser.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class ExtractFloatResult {
        private int endPosition;
        private boolean endWithNegativeOrDot;

        public ExtractFloatResult() {
            this(0, false, 3, null);
        }

        public static /* synthetic */ ExtractFloatResult copy$default(ExtractFloatResult extractFloatResult, int i10, boolean z10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i10 = extractFloatResult.endPosition;
            }
            if ((i11 & 2) != 0) {
                z10 = extractFloatResult.endWithNegativeOrDot;
            }
            return extractFloatResult.copy(i10, z10);
        }

        public final int component1() {
            return this.endPosition;
        }

        public final boolean component2() {
            return this.endWithNegativeOrDot;
        }

        @NotNull
        public final ExtractFloatResult copy(int i10, boolean z10) {
            return new ExtractFloatResult(i10, z10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ExtractFloatResult)) {
                return false;
            }
            ExtractFloatResult extractFloatResult = (ExtractFloatResult) obj;
            if (this.endPosition == extractFloatResult.endPosition && this.endWithNegativeOrDot == extractFloatResult.endWithNegativeOrDot) {
                return true;
            }
            return false;
        }

        public final int getEndPosition() {
            return this.endPosition;
        }

        public final boolean getEndWithNegativeOrDot() {
            return this.endWithNegativeOrDot;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = Integer.hashCode(this.endPosition) * 31;
            boolean z10 = this.endWithNegativeOrDot;
            int i10 = z10;
            if (z10 != 0) {
                i10 = 1;
            }
            return hashCode + i10;
        }

        public final void setEndPosition(int i10) {
            this.endPosition = i10;
        }

        public final void setEndWithNegativeOrDot(boolean z10) {
            this.endWithNegativeOrDot = z10;
        }

        @NotNull
        public String toString() {
            return "ExtractFloatResult(endPosition=" + this.endPosition + ", endWithNegativeOrDot=" + this.endWithNegativeOrDot + ')';
        }

        public ExtractFloatResult(int i10, boolean z10) {
            this.endPosition = i10;
            this.endWithNegativeOrDot = z10;
        }

        public /* synthetic */ ExtractFloatResult(int i10, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 0 : i10, (i11 & 2) != 0 ? false : z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PathParser.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class PathPoint {

        /* renamed from: x  reason: collision with root package name */
        private float f1273x;

        /* renamed from: y  reason: collision with root package name */
        private float f1274y;

        public PathPoint() {
            this(0.0f, 0.0f, 3, null);
        }

        public static /* synthetic */ PathPoint copy$default(PathPoint pathPoint, float f10, float f11, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = pathPoint.f1273x;
            }
            if ((i10 & 2) != 0) {
                f11 = pathPoint.f1274y;
            }
            return pathPoint.copy(f10, f11);
        }

        public final float component1() {
            return this.f1273x;
        }

        public final float component2() {
            return this.f1274y;
        }

        @NotNull
        public final PathPoint copy(float f10, float f11) {
            return new PathPoint(f10, f11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PathPoint)) {
                return false;
            }
            PathPoint pathPoint = (PathPoint) obj;
            if (Intrinsics.areEqual((Object) Float.valueOf(this.f1273x), (Object) Float.valueOf(pathPoint.f1273x)) && Intrinsics.areEqual((Object) Float.valueOf(this.f1274y), (Object) Float.valueOf(pathPoint.f1274y))) {
                return true;
            }
            return false;
        }

        public final float getX() {
            return this.f1273x;
        }

        public final float getY() {
            return this.f1274y;
        }

        public int hashCode() {
            return (Float.hashCode(this.f1273x) * 31) + Float.hashCode(this.f1274y);
        }

        public final void reset() {
            this.f1273x = 0.0f;
            this.f1274y = 0.0f;
        }

        public final void setX(float f10) {
            this.f1273x = f10;
        }

        public final void setY(float f10) {
            this.f1274y = f10;
        }

        @NotNull
        public String toString() {
            return "PathPoint(x=" + this.f1273x + ", y=" + this.f1274y + ')';
        }

        public PathPoint(float f10, float f11) {
            this.f1273x = f10;
            this.f1274y = f11;
        }

        public /* synthetic */ PathPoint(float f10, float f11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? 0.0f : f10, (i10 & 2) != 0 ? 0.0f : f11);
        }
    }

    private final void addNode(char c10, float[] fArr) {
        this.nodes.addAll(PathNodeKt.toPathNodes(c10, fArr));
    }

    private final void arcTo(PathNode.ArcTo arcTo, Path path) {
        drawArc(path, this.currentPoint.getX(), this.currentPoint.getY(), arcTo.getArcStartX(), arcTo.getArcStartY(), arcTo.getHorizontalEllipseRadius(), arcTo.getVerticalEllipseRadius(), arcTo.getTheta(), arcTo.isMoreThanHalf(), arcTo.isPositiveArc());
        this.currentPoint.setX(arcTo.getArcStartX());
        this.currentPoint.setY(arcTo.getArcStartY());
        this.ctrlPoint.setX(this.currentPoint.getX());
        this.ctrlPoint.setY(this.currentPoint.getY());
    }

    private final void arcToBezier(Path path, double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        double d19 = d12;
        double d20 = 4;
        int ceil = (int) Math.ceil(Math.abs((d18 * d20) / 3.141592653589793d));
        double cos = Math.cos(d16);
        double sin = Math.sin(d16);
        double cos2 = Math.cos(d17);
        double sin2 = Math.sin(d17);
        double d21 = -d19;
        double d22 = d21 * cos;
        double d23 = d13 * sin;
        double d24 = (d22 * sin2) - (d23 * cos2);
        double d25 = d21 * sin;
        double d26 = d13 * cos;
        double d27 = (sin2 * d25) + (cos2 * d26);
        double d28 = d18 / ceil;
        double d29 = d14;
        double d30 = d27;
        double d31 = d24;
        int i10 = 0;
        double d32 = d15;
        double d33 = d17;
        while (i10 < ceil) {
            double d34 = d33 + d28;
            double sin3 = Math.sin(d34);
            double cos3 = Math.cos(d34);
            int i11 = ceil;
            double d35 = (d10 + ((d19 * cos) * cos3)) - (d23 * sin3);
            double d36 = d11 + (d19 * sin * cos3) + (d26 * sin3);
            double d37 = (d22 * sin3) - (d23 * cos3);
            double d38 = (sin3 * d25) + (cos3 * d26);
            double d39 = d34 - d33;
            double tan = Math.tan(d39 / 2);
            double sin4 = (Math.sin(d39) * (Math.sqrt(d20 + ((3.0d * tan) * tan)) - 1)) / 3;
            path.cubicTo((float) (d29 + (d31 * sin4)), (float) (d32 + (d30 * sin4)), (float) (d35 - (sin4 * d37)), (float) (d36 - (sin4 * d38)), (float) d35, (float) d36);
            i10++;
            d28 = d28;
            sin = sin;
            d29 = d35;
            d25 = d25;
            d33 = d34;
            d30 = d38;
            d20 = d20;
            d31 = d37;
            cos = cos;
            ceil = i11;
            d32 = d36;
            d19 = d12;
        }
    }

    private final void close(Path path) {
        this.currentPoint.setX(this.segmentPoint.getX());
        this.currentPoint.setY(this.segmentPoint.getY());
        this.ctrlPoint.setX(this.segmentPoint.getX());
        this.ctrlPoint.setY(this.segmentPoint.getY());
        path.close();
        path.moveTo(this.currentPoint.getX(), this.currentPoint.getY());
    }

    private final float[] copyOfRange(float[] fArr, int i10, int i11) {
        if (i10 <= i11) {
            int length = fArr.length;
            if (i10 >= 0 && i10 <= length) {
                int i12 = i11 - i10;
                int min = Math.min(i12, length - i10);
                float[] fArr2 = new float[i12];
                n.k(fArr, fArr2, 0, i10, min + i10);
                return fArr2;
            }
            throw new IndexOutOfBoundsException();
        }
        throw new IllegalArgumentException();
    }

    private final void curveTo(PathNode.CurveTo curveTo, Path path) {
        path.cubicTo(curveTo.getX1(), curveTo.getY1(), curveTo.getX2(), curveTo.getY2(), curveTo.getX3(), curveTo.getY3());
        this.ctrlPoint.setX(curveTo.getX2());
        this.ctrlPoint.setY(curveTo.getY2());
        this.currentPoint.setX(curveTo.getX3());
        this.currentPoint.setY(curveTo.getY3());
    }

    private final void drawArc(Path path, double d10, double d11, double d12, double d13, double d14, double d15, double d16, boolean z10, boolean z11) {
        double d17;
        double d18;
        boolean z12;
        double radians = toRadians(d16);
        double cos = Math.cos(radians);
        double sin = Math.sin(radians);
        double d19 = ((d10 * cos) + (d11 * sin)) / d14;
        double d20 = (((-d10) * sin) + (d11 * cos)) / d15;
        double d21 = ((d12 * cos) + (d13 * sin)) / d14;
        double d22 = (((-d12) * sin) + (d13 * cos)) / d15;
        double d23 = d19 - d21;
        double d24 = d20 - d22;
        double d25 = 2;
        double d26 = (d19 + d21) / d25;
        double d27 = (d20 + d22) / d25;
        double d28 = (d23 * d23) + (d24 * d24);
        if (d28 == 0.0d) {
            return;
        }
        double d29 = (1.0d / d28) - 0.25d;
        if (d29 < 0.0d) {
            double sqrt = (float) (Math.sqrt(d28) / 1.99999d);
            drawArc(path, d10, d11, d12, d13, d14 * sqrt, d15 * sqrt, d16, z10, z11);
            return;
        }
        double sqrt2 = Math.sqrt(d29);
        double d30 = d23 * sqrt2;
        double d31 = sqrt2 * d24;
        if (z10 == z11) {
            d17 = d26 - d31;
            d18 = d27 + d30;
        } else {
            d17 = d26 + d31;
            d18 = d27 - d30;
        }
        double atan2 = Math.atan2(d20 - d18, d19 - d17);
        double atan22 = Math.atan2(d22 - d18, d21 - d17) - atan2;
        int i10 = (atan22 > 0.0d ? 1 : (atan22 == 0.0d ? 0 : -1));
        if (i10 >= 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z11 != z12) {
            if (i10 > 0) {
                atan22 -= 6.283185307179586d;
            } else {
                atan22 += 6.283185307179586d;
            }
        }
        double d32 = d17 * d14;
        double d33 = d18 * d15;
        arcToBezier(path, (d32 * cos) - (d33 * sin), (d32 * sin) + (d33 * cos), d14, d15, d10, d11, radians, atan2, atan22);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0047 A[LOOP:0: B:3:0x0008->B:30:0x0047, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004a A[EDGE_INSN: B:33:0x004a->B:31:0x004a ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void extract(java.lang.String r9, int r10, androidx.compose.ui.graphics.vector.PathParser.ExtractFloatResult r11) {
        /*
            r8 = this;
            r0 = 0
            r11.setEndWithNegativeOrDot(r0)
            r1 = r10
            r2 = r0
            r3 = r2
            r4 = r3
        L8:
            int r5 = r9.length()
            if (r1 >= r5) goto L4a
            char r5 = r9.charAt(r1)
            r6 = 32
            r7 = 1
            if (r5 != r6) goto L18
            goto L1c
        L18:
            r6 = 44
            if (r5 != r6) goto L1f
        L1c:
            r2 = r0
            r4 = r7
            goto L44
        L1f:
            r6 = 45
            if (r5 != r6) goto L2b
            if (r1 == r10) goto L43
            if (r2 != 0) goto L43
            r11.setEndWithNegativeOrDot(r7)
            goto L1c
        L2b:
            r2 = 46
            if (r5 != r2) goto L38
            if (r3 != 0) goto L34
            r2 = r0
            r3 = r7
            goto L44
        L34:
            r11.setEndWithNegativeOrDot(r7)
            goto L1c
        L38:
            r2 = 101(0x65, float:1.42E-43)
            if (r5 != r2) goto L3d
            goto L41
        L3d:
            r2 = 69
            if (r5 != r2) goto L43
        L41:
            r2 = r7
            goto L44
        L43:
            r2 = r0
        L44:
            if (r4 == 0) goto L47
            goto L4a
        L47:
            int r1 = r1 + 1
            goto L8
        L4a:
            r11.setEndPosition(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.PathParser.extract(java.lang.String, int, androidx.compose.ui.graphics.vector.PathParser$ExtractFloatResult):void");
    }

    private final float[] getFloats(String str) {
        if (str.charAt(0) != 'z' && str.charAt(0) != 'Z') {
            float[] fArr = new float[str.length()];
            ExtractFloatResult extractFloatResult = new ExtractFloatResult(0, false, 3, null);
            int length = str.length();
            int i10 = 1;
            int i11 = 0;
            while (i10 < length) {
                extract(str, i10, extractFloatResult);
                int endPosition = extractFloatResult.getEndPosition();
                if (i10 < endPosition) {
                    String substring = str.substring(i10, endPosition);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    fArr[i11] = Float.parseFloat(substring);
                    i11++;
                }
                if (extractFloatResult.getEndWithNegativeOrDot()) {
                    i10 = endPosition;
                } else {
                    i10 = endPosition + 1;
                }
            }
            return copyOfRange(fArr, 0, i11);
        }
        return new float[0];
    }

    private final void horizontalTo(PathNode.HorizontalTo horizontalTo, Path path) {
        path.lineTo(horizontalTo.getX(), this.currentPoint.getY());
        this.currentPoint.setX(horizontalTo.getX());
    }

    private final void lineTo(PathNode.LineTo lineTo, Path path) {
        path.lineTo(lineTo.getX(), lineTo.getY());
        this.currentPoint.setX(lineTo.getX());
        this.currentPoint.setY(lineTo.getY());
    }

    private final void moveTo(PathNode.MoveTo moveTo, Path path) {
        this.currentPoint.setX(moveTo.getX());
        this.currentPoint.setY(moveTo.getY());
        path.moveTo(moveTo.getX(), moveTo.getY());
        this.segmentPoint.setX(this.currentPoint.getX());
        this.segmentPoint.setY(this.currentPoint.getY());
    }

    private final int nextStart(String str, int i10) {
        while (i10 < str.length()) {
            char charAt = str.charAt(i10);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                return i10;
            }
            i10++;
        }
        return i10;
    }

    private final void quadTo(PathNode.QuadTo quadTo, Path path) {
        path.quadraticBezierTo(quadTo.getX1(), quadTo.getY1(), quadTo.getX2(), quadTo.getY2());
        this.ctrlPoint.setX(quadTo.getX1());
        this.ctrlPoint.setY(quadTo.getY1());
        this.currentPoint.setX(quadTo.getX2());
        this.currentPoint.setY(quadTo.getY2());
    }

    private final void reflectiveCurveTo(PathNode.ReflectiveCurveTo reflectiveCurveTo, boolean z10, Path path) {
        if (z10) {
            float f10 = 2;
            this.reflectiveCtrlPoint.setX((this.currentPoint.getX() * f10) - this.ctrlPoint.getX());
            this.reflectiveCtrlPoint.setY((f10 * this.currentPoint.getY()) - this.ctrlPoint.getY());
        } else {
            this.reflectiveCtrlPoint.setX(this.currentPoint.getX());
            this.reflectiveCtrlPoint.setY(this.currentPoint.getY());
        }
        path.cubicTo(this.reflectiveCtrlPoint.getX(), this.reflectiveCtrlPoint.getY(), reflectiveCurveTo.getX1(), reflectiveCurveTo.getY1(), reflectiveCurveTo.getX2(), reflectiveCurveTo.getY2());
        this.ctrlPoint.setX(reflectiveCurveTo.getX1());
        this.ctrlPoint.setY(reflectiveCurveTo.getY1());
        this.currentPoint.setX(reflectiveCurveTo.getX2());
        this.currentPoint.setY(reflectiveCurveTo.getY2());
    }

    private final void reflectiveQuadTo(PathNode.ReflectiveQuadTo reflectiveQuadTo, boolean z10, Path path) {
        if (z10) {
            float f10 = 2;
            this.reflectiveCtrlPoint.setX((this.currentPoint.getX() * f10) - this.ctrlPoint.getX());
            this.reflectiveCtrlPoint.setY((f10 * this.currentPoint.getY()) - this.ctrlPoint.getY());
        } else {
            this.reflectiveCtrlPoint.setX(this.currentPoint.getX());
            this.reflectiveCtrlPoint.setY(this.currentPoint.getY());
        }
        path.quadraticBezierTo(this.reflectiveCtrlPoint.getX(), this.reflectiveCtrlPoint.getY(), reflectiveQuadTo.getX(), reflectiveQuadTo.getY());
        this.ctrlPoint.setX(this.reflectiveCtrlPoint.getX());
        this.ctrlPoint.setY(this.reflectiveCtrlPoint.getY());
        this.currentPoint.setX(reflectiveQuadTo.getX());
        this.currentPoint.setY(reflectiveQuadTo.getY());
    }

    private final void relativeArcTo(PathNode.RelativeArcTo relativeArcTo, Path path) {
        float arcStartDx = relativeArcTo.getArcStartDx() + this.currentPoint.getX();
        float arcStartDy = relativeArcTo.getArcStartDy() + this.currentPoint.getY();
        drawArc(path, this.currentPoint.getX(), this.currentPoint.getY(), arcStartDx, arcStartDy, relativeArcTo.getHorizontalEllipseRadius(), relativeArcTo.getVerticalEllipseRadius(), relativeArcTo.getTheta(), relativeArcTo.isMoreThanHalf(), relativeArcTo.isPositiveArc());
        this.currentPoint.setX(arcStartDx);
        this.currentPoint.setY(arcStartDy);
        this.ctrlPoint.setX(this.currentPoint.getX());
        this.ctrlPoint.setY(this.currentPoint.getY());
    }

    private final void relativeCurveTo(PathNode.RelativeCurveTo relativeCurveTo, Path path) {
        path.relativeCubicTo(relativeCurveTo.getDx1(), relativeCurveTo.getDy1(), relativeCurveTo.getDx2(), relativeCurveTo.getDy2(), relativeCurveTo.getDx3(), relativeCurveTo.getDy3());
        this.ctrlPoint.setX(this.currentPoint.getX() + relativeCurveTo.getDx2());
        this.ctrlPoint.setY(this.currentPoint.getY() + relativeCurveTo.getDy2());
        PathPoint pathPoint = this.currentPoint;
        pathPoint.setX(pathPoint.getX() + relativeCurveTo.getDx3());
        PathPoint pathPoint2 = this.currentPoint;
        pathPoint2.setY(pathPoint2.getY() + relativeCurveTo.getDy3());
    }

    private final void relativeHorizontalTo(PathNode.RelativeHorizontalTo relativeHorizontalTo, Path path) {
        path.relativeLineTo(relativeHorizontalTo.getDx(), 0.0f);
        PathPoint pathPoint = this.currentPoint;
        pathPoint.setX(pathPoint.getX() + relativeHorizontalTo.getDx());
    }

    private final void relativeLineTo(PathNode.RelativeLineTo relativeLineTo, Path path) {
        path.relativeLineTo(relativeLineTo.getDx(), relativeLineTo.getDy());
        PathPoint pathPoint = this.currentPoint;
        pathPoint.setX(pathPoint.getX() + relativeLineTo.getDx());
        PathPoint pathPoint2 = this.currentPoint;
        pathPoint2.setY(pathPoint2.getY() + relativeLineTo.getDy());
    }

    private final void relativeMoveTo(PathNode.RelativeMoveTo relativeMoveTo, Path path) {
        PathPoint pathPoint = this.currentPoint;
        pathPoint.setX(pathPoint.getX() + relativeMoveTo.getDx());
        PathPoint pathPoint2 = this.currentPoint;
        pathPoint2.setY(pathPoint2.getY() + relativeMoveTo.getDy());
        path.relativeMoveTo(relativeMoveTo.getDx(), relativeMoveTo.getDy());
        this.segmentPoint.setX(this.currentPoint.getX());
        this.segmentPoint.setY(this.currentPoint.getY());
    }

    private final void relativeQuadTo(PathNode.RelativeQuadTo relativeQuadTo, Path path) {
        path.relativeQuadraticBezierTo(relativeQuadTo.getDx1(), relativeQuadTo.getDy1(), relativeQuadTo.getDx2(), relativeQuadTo.getDy2());
        this.ctrlPoint.setX(this.currentPoint.getX() + relativeQuadTo.getDx1());
        this.ctrlPoint.setY(this.currentPoint.getY() + relativeQuadTo.getDy1());
        PathPoint pathPoint = this.currentPoint;
        pathPoint.setX(pathPoint.getX() + relativeQuadTo.getDx2());
        PathPoint pathPoint2 = this.currentPoint;
        pathPoint2.setY(pathPoint2.getY() + relativeQuadTo.getDy2());
    }

    private final void relativeReflectiveCurveTo(PathNode.RelativeReflectiveCurveTo relativeReflectiveCurveTo, boolean z10, Path path) {
        if (z10) {
            this.reflectiveCtrlPoint.setX(this.currentPoint.getX() - this.ctrlPoint.getX());
            this.reflectiveCtrlPoint.setY(this.currentPoint.getY() - this.ctrlPoint.getY());
        } else {
            this.reflectiveCtrlPoint.reset();
        }
        path.relativeCubicTo(this.reflectiveCtrlPoint.getX(), this.reflectiveCtrlPoint.getY(), relativeReflectiveCurveTo.getDx1(), relativeReflectiveCurveTo.getDy1(), relativeReflectiveCurveTo.getDx2(), relativeReflectiveCurveTo.getDy2());
        this.ctrlPoint.setX(this.currentPoint.getX() + relativeReflectiveCurveTo.getDx1());
        this.ctrlPoint.setY(this.currentPoint.getY() + relativeReflectiveCurveTo.getDy1());
        PathPoint pathPoint = this.currentPoint;
        pathPoint.setX(pathPoint.getX() + relativeReflectiveCurveTo.getDx2());
        PathPoint pathPoint2 = this.currentPoint;
        pathPoint2.setY(pathPoint2.getY() + relativeReflectiveCurveTo.getDy2());
    }

    private final void relativeReflectiveQuadTo(PathNode.RelativeReflectiveQuadTo relativeReflectiveQuadTo, boolean z10, Path path) {
        if (z10) {
            this.reflectiveCtrlPoint.setX(this.currentPoint.getX() - this.ctrlPoint.getX());
            this.reflectiveCtrlPoint.setY(this.currentPoint.getY() - this.ctrlPoint.getY());
        } else {
            this.reflectiveCtrlPoint.reset();
        }
        path.relativeQuadraticBezierTo(this.reflectiveCtrlPoint.getX(), this.reflectiveCtrlPoint.getY(), relativeReflectiveQuadTo.getDx(), relativeReflectiveQuadTo.getDy());
        this.ctrlPoint.setX(this.currentPoint.getX() + this.reflectiveCtrlPoint.getX());
        this.ctrlPoint.setY(this.currentPoint.getY() + this.reflectiveCtrlPoint.getY());
        PathPoint pathPoint = this.currentPoint;
        pathPoint.setX(pathPoint.getX() + relativeReflectiveQuadTo.getDx());
        PathPoint pathPoint2 = this.currentPoint;
        pathPoint2.setY(pathPoint2.getY() + relativeReflectiveQuadTo.getDy());
    }

    private final void relativeVerticalTo(PathNode.RelativeVerticalTo relativeVerticalTo, Path path) {
        path.relativeLineTo(0.0f, relativeVerticalTo.getDy());
        PathPoint pathPoint = this.currentPoint;
        pathPoint.setY(pathPoint.getY() + relativeVerticalTo.getDy());
    }

    public static /* synthetic */ Path toPath$default(PathParser pathParser, Path path, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            path = AndroidPath_androidKt.Path();
        }
        return pathParser.toPath(path);
    }

    private final double toRadians(double d10) {
        return (d10 / 180) * 3.141592653589793d;
    }

    private final void verticalTo(PathNode.VerticalTo verticalTo, Path path) {
        path.lineTo(this.currentPoint.getX(), verticalTo.getY());
        this.currentPoint.setY(verticalTo.getY());
    }

    @NotNull
    public final PathParser addPathNodes(@NotNull List<? extends PathNode> nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        this.nodes.addAll(nodes);
        return this;
    }

    public final void clear() {
        this.nodes.clear();
    }

    @NotNull
    public final PathParser parsePathString(@NotNull String pathData) {
        int i10;
        boolean z10;
        Intrinsics.checkNotNullParameter(pathData, "pathData");
        this.nodes.clear();
        int i11 = 0;
        int i12 = 1;
        while (i12 < pathData.length()) {
            int nextStart = nextStart(pathData, i12);
            String substring = pathData.substring(i11, nextStart);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            int length = substring.length() - 1;
            int i13 = 0;
            boolean z11 = false;
            while (i13 <= length) {
                if (!z11) {
                    i10 = i13;
                } else {
                    i10 = length;
                }
                if (Intrinsics.compare((int) substring.charAt(i10), 32) <= 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z11) {
                    if (!z10) {
                        z11 = true;
                    } else {
                        i13++;
                    }
                } else if (!z10) {
                    break;
                } else {
                    length--;
                }
            }
            String obj = substring.subSequence(i13, length + 1).toString();
            if (obj.length() > 0) {
                addNode(obj.charAt(0), getFloats(obj));
            }
            i11 = nextStart;
            i12 = nextStart + 1;
        }
        if (i12 - i11 == 1 && i11 < pathData.length()) {
            addNode(pathData.charAt(i11), new float[0]);
        }
        return this;
    }

    @NotNull
    public final List<PathNode> toNodes() {
        return this.nodes;
    }

    @NotNull
    public final Path toPath(@NotNull Path target) {
        Intrinsics.checkNotNullParameter(target, "target");
        target.reset();
        this.currentPoint.reset();
        this.ctrlPoint.reset();
        this.segmentPoint.reset();
        this.reflectiveCtrlPoint.reset();
        List<PathNode> list = this.nodes;
        int size = list.size();
        PathNode pathNode = null;
        int i10 = 0;
        while (i10 < size) {
            PathNode pathNode2 = list.get(i10);
            if (pathNode == null) {
                pathNode = pathNode2;
            }
            if (pathNode2 instanceof PathNode.Close) {
                close(target);
            } else if (pathNode2 instanceof PathNode.RelativeMoveTo) {
                relativeMoveTo((PathNode.RelativeMoveTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.MoveTo) {
                moveTo((PathNode.MoveTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.RelativeLineTo) {
                relativeLineTo((PathNode.RelativeLineTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.LineTo) {
                lineTo((PathNode.LineTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.RelativeHorizontalTo) {
                relativeHorizontalTo((PathNode.RelativeHorizontalTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.HorizontalTo) {
                horizontalTo((PathNode.HorizontalTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.RelativeVerticalTo) {
                relativeVerticalTo((PathNode.RelativeVerticalTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.VerticalTo) {
                verticalTo((PathNode.VerticalTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.RelativeCurveTo) {
                relativeCurveTo((PathNode.RelativeCurveTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.CurveTo) {
                curveTo((PathNode.CurveTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.RelativeReflectiveCurveTo) {
                Intrinsics.checkNotNull(pathNode);
                relativeReflectiveCurveTo((PathNode.RelativeReflectiveCurveTo) pathNode2, pathNode.isCurve(), target);
            } else if (pathNode2 instanceof PathNode.ReflectiveCurveTo) {
                Intrinsics.checkNotNull(pathNode);
                reflectiveCurveTo((PathNode.ReflectiveCurveTo) pathNode2, pathNode.isCurve(), target);
            } else if (pathNode2 instanceof PathNode.RelativeQuadTo) {
                relativeQuadTo((PathNode.RelativeQuadTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.QuadTo) {
                quadTo((PathNode.QuadTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.RelativeReflectiveQuadTo) {
                Intrinsics.checkNotNull(pathNode);
                relativeReflectiveQuadTo((PathNode.RelativeReflectiveQuadTo) pathNode2, pathNode.isQuad(), target);
            } else if (pathNode2 instanceof PathNode.ReflectiveQuadTo) {
                Intrinsics.checkNotNull(pathNode);
                reflectiveQuadTo((PathNode.ReflectiveQuadTo) pathNode2, pathNode.isQuad(), target);
            } else if (pathNode2 instanceof PathNode.RelativeArcTo) {
                relativeArcTo((PathNode.RelativeArcTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.ArcTo) {
                arcTo((PathNode.ArcTo) pathNode2, target);
            }
            i10++;
            pathNode = pathNode2;
        }
        return target;
    }

    private final float toRadians(float f10) {
        return (f10 / 180.0f) * 3.1415927f;
    }
}
