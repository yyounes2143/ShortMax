package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Region;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.PointMode;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidCanvas.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidCanvas implements Canvas {
    @NotNull
    private final Rect dstRect;
    @NotNull
    private android.graphics.Canvas internalCanvas;
    @NotNull
    private final Rect srcRect;

    public AndroidCanvas() {
        android.graphics.Canvas canvas;
        canvas = AndroidCanvas_androidKt.EmptyCanvas;
        this.internalCanvas = canvas;
        this.srcRect = new Rect();
        this.dstRect = new Rect();
    }

    private final void drawLines(List<Offset> list, Paint paint, int i10) {
        if (list.size() >= 2) {
            kotlin.ranges.d u10 = kotlin.ranges.e.u(kotlin.ranges.e.v(0, list.size() - 1), i10);
            int c10 = u10.c();
            int d10 = u10.d();
            int e10 = u10.e();
            if ((e10 <= 0 || c10 > d10) && (e10 >= 0 || d10 > c10)) {
                return;
            }
            while (true) {
                long m1616unboximpl = list.get(c10).m1616unboximpl();
                long m1616unboximpl2 = list.get(c10 + 1).m1616unboximpl();
                this.internalCanvas.drawLine(Offset.m1606getXimpl(m1616unboximpl), Offset.m1607getYimpl(m1616unboximpl), Offset.m1606getXimpl(m1616unboximpl2), Offset.m1607getYimpl(m1616unboximpl2), paint.asFrameworkPaint());
                if (c10 != d10) {
                    c10 += e10;
                } else {
                    return;
                }
            }
        }
    }

    private final void drawPoints(List<Offset> list, Paint paint) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            long m1616unboximpl = list.get(i10).m1616unboximpl();
            this.internalCanvas.drawPoint(Offset.m1606getXimpl(m1616unboximpl), Offset.m1607getYimpl(m1616unboximpl), paint.asFrameworkPaint());
        }
    }

    private final void drawRawLines(float[] fArr, Paint paint, int i10) {
        if (fArr.length >= 4 && fArr.length % 2 == 0) {
            kotlin.ranges.d u10 = kotlin.ranges.e.u(kotlin.ranges.e.v(0, fArr.length - 3), i10 * 2);
            int c10 = u10.c();
            int d10 = u10.d();
            int e10 = u10.e();
            if ((e10 <= 0 || c10 > d10) && (e10 >= 0 || d10 > c10)) {
                return;
            }
            while (true) {
                this.internalCanvas.drawLine(fArr[c10], fArr[c10 + 1], fArr[c10 + 2], fArr[c10 + 3], paint.asFrameworkPaint());
                if (c10 != d10) {
                    c10 += e10;
                } else {
                    return;
                }
            }
        }
    }

    private final void drawRawPoints(float[] fArr, Paint paint, int i10) {
        if (fArr.length % 2 == 0) {
            kotlin.ranges.d u10 = kotlin.ranges.e.u(kotlin.ranges.e.v(0, fArr.length - 1), i10);
            int c10 = u10.c();
            int d10 = u10.d();
            int e10 = u10.e();
            if ((e10 <= 0 || c10 > d10) && (e10 >= 0 || d10 > c10)) {
                return;
            }
            while (true) {
                this.internalCanvas.drawPoint(fArr[c10], fArr[c10 + 1], paint.asFrameworkPaint());
                if (c10 != d10) {
                    c10 += e10;
                } else {
                    return;
                }
            }
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: clipPath-mtrdD-E  reason: not valid java name */
    public void mo1700clipPathmtrdDE(@NotNull Path path, int i10) {
        Intrinsics.checkNotNullParameter(path, "path");
        android.graphics.Canvas canvas = this.internalCanvas;
        if (path instanceof AndroidPath) {
            canvas.clipPath(((AndroidPath) path).getInternalPath(), m1710toRegionOp7u2Bmg(i10));
            return;
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: clipRect-N_I0leg  reason: not valid java name */
    public void mo1701clipRectN_I0leg(float f10, float f11, float f12, float f13, int i10) {
        this.internalCanvas.clipRect(f10, f11, f12, f13, m1710toRegionOp7u2Bmg(i10));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: concat-58bKbWc  reason: not valid java name */
    public void mo1702concat58bKbWc(@NotNull float[] matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        if (!MatrixKt.m2060isIdentity58bKbWc(matrix)) {
            android.graphics.Matrix matrix2 = new android.graphics.Matrix();
            AndroidMatrixConversions_androidKt.m1717setFromEL8BTi8(matrix2, matrix);
            this.internalCanvas.concat(matrix2);
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void disableZ() {
        CanvasUtils.INSTANCE.enableZ(this.internalCanvas, false);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawArc(float f10, float f11, float f12, float f13, float f14, float f15, boolean z10, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        this.internalCanvas.drawArc(f10, f11, f12, f13, f14, f15, z10, paint.asFrameworkPaint());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawCircle-9KIMszo  reason: not valid java name */
    public void mo1703drawCircle9KIMszo(long j10, float f10, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        this.internalCanvas.drawCircle(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), f10, paint.asFrameworkPaint());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawImage-d-4ec7I  reason: not valid java name */
    public void mo1704drawImaged4ec7I(@NotNull ImageBitmap image, long j10, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(paint, "paint");
        this.internalCanvas.drawBitmap(AndroidImageBitmap_androidKt.asAndroidBitmap(image), Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), paint.asFrameworkPaint());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawImageRect-HPBpro0  reason: not valid java name */
    public void mo1705drawImageRectHPBpro0(@NotNull ImageBitmap image, long j10, long j11, long j12, long j13, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(paint, "paint");
        android.graphics.Canvas canvas = this.internalCanvas;
        Bitmap asAndroidBitmap = AndroidImageBitmap_androidKt.asAndroidBitmap(image);
        Rect rect = this.srcRect;
        rect.left = IntOffset.m4167getXimpl(j10);
        rect.top = IntOffset.m4168getYimpl(j10);
        rect.right = IntOffset.m4167getXimpl(j10) + IntSize.m4209getWidthimpl(j11);
        rect.bottom = IntOffset.m4168getYimpl(j10) + IntSize.m4208getHeightimpl(j11);
        Unit unit = Unit.f60915a;
        Rect rect2 = this.dstRect;
        rect2.left = IntOffset.m4167getXimpl(j12);
        rect2.top = IntOffset.m4168getYimpl(j12);
        rect2.right = IntOffset.m4167getXimpl(j12) + IntSize.m4209getWidthimpl(j13);
        rect2.bottom = IntOffset.m4168getYimpl(j12) + IntSize.m4208getHeightimpl(j13);
        canvas.drawBitmap(asAndroidBitmap, rect, rect2, paint.asFrameworkPaint());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawLine-Wko1d7g  reason: not valid java name */
    public void mo1706drawLineWko1d7g(long j10, long j11, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        this.internalCanvas.drawLine(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), Offset.m1606getXimpl(j11), Offset.m1607getYimpl(j11), paint.asFrameworkPaint());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawOval(float f10, float f11, float f12, float f13, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        this.internalCanvas.drawOval(f10, f11, f12, f13, paint.asFrameworkPaint());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawPath(@NotNull Path path, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(paint, "paint");
        android.graphics.Canvas canvas = this.internalCanvas;
        if (path instanceof AndroidPath) {
            canvas.drawPath(((AndroidPath) path).getInternalPath(), paint.asFrameworkPaint());
            return;
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawPoints-O7TthRY  reason: not valid java name */
    public void mo1707drawPointsO7TthRY(int i10, @NotNull List<Offset> points, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(paint, "paint");
        PointMode.Companion companion = PointMode.Companion;
        if (PointMode.m2103equalsimpl0(i10, companion.m2107getLinesr_lszbg())) {
            drawLines(points, paint, 2);
        } else if (PointMode.m2103equalsimpl0(i10, companion.m2109getPolygonr_lszbg())) {
            drawLines(points, paint, 1);
        } else if (PointMode.m2103equalsimpl0(i10, companion.m2108getPointsr_lszbg())) {
            drawPoints(points, paint);
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawRawPoints-O7TthRY  reason: not valid java name */
    public void mo1708drawRawPointsO7TthRY(int i10, @NotNull float[] points, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(paint, "paint");
        if (points.length % 2 == 0) {
            PointMode.Companion companion = PointMode.Companion;
            if (PointMode.m2103equalsimpl0(i10, companion.m2107getLinesr_lszbg())) {
                drawRawLines(points, paint, 2);
                return;
            } else if (PointMode.m2103equalsimpl0(i10, companion.m2109getPolygonr_lszbg())) {
                drawRawLines(points, paint, 1);
                return;
            } else if (PointMode.m2103equalsimpl0(i10, companion.m2108getPointsr_lszbg())) {
                drawRawPoints(points, paint, 2);
                return;
            } else {
                return;
            }
        }
        throw new IllegalArgumentException("points must have an even number of values");
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawRect(float f10, float f11, float f12, float f13, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        this.internalCanvas.drawRect(f10, f11, f12, f13, paint.asFrameworkPaint());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawRoundRect(float f10, float f11, float f12, float f13, float f14, float f15, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        this.internalCanvas.drawRoundRect(f10, f11, f12, f13, f14, f15, paint.asFrameworkPaint());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawVertices-TPEHhCM  reason: not valid java name */
    public void mo1709drawVerticesTPEHhCM(@NotNull Vertices vertices, int i10, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(vertices, "vertices");
        Intrinsics.checkNotNullParameter(paint, "paint");
        this.internalCanvas.drawVertices(AndroidVertexMode_androidKt.m1750toAndroidVertexModeJOOmi9M(vertices.m2195getVertexModec2xauaI()), vertices.getPositions().length, vertices.getPositions(), 0, vertices.getTextureCoordinates(), 0, vertices.getColors(), 0, vertices.getIndices(), 0, vertices.getIndices().length, paint.asFrameworkPaint());
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void enableZ() {
        CanvasUtils.INSTANCE.enableZ(this.internalCanvas, true);
    }

    @NotNull
    public final android.graphics.Canvas getInternalCanvas() {
        return this.internalCanvas;
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void restore() {
        this.internalCanvas.restore();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void rotate(float f10) {
        this.internalCanvas.rotate(f10);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void save() {
        this.internalCanvas.save();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void saveLayer(@NotNull androidx.compose.ui.geometry.Rect bounds, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        Intrinsics.checkNotNullParameter(paint, "paint");
        this.internalCanvas.saveLayer(bounds.getLeft(), bounds.getTop(), bounds.getRight(), bounds.getBottom(), paint.asFrameworkPaint(), 31);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void scale(float f10, float f11) {
        this.internalCanvas.scale(f10, f11);
    }

    public final void setInternalCanvas(@NotNull android.graphics.Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "<set-?>");
        this.internalCanvas = canvas;
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void skew(float f10, float f11) {
        this.internalCanvas.skew(f10, f11);
    }

    @NotNull
    /* renamed from: toRegionOp--7u2Bmg  reason: not valid java name */
    public final Region.Op m1710toRegionOp7u2Bmg(int i10) {
        if (ClipOp.m1826equalsimpl0(i10, ClipOp.Companion.m1830getDifferencertfAjoo())) {
            return Region.Op.DIFFERENCE;
        }
        return Region.Op.INTERSECT;
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void translate(float f10, float f11) {
        this.internalCanvas.translate(f10, f11);
    }

    public static /* synthetic */ void getInternalCanvas$annotations() {
    }
}
