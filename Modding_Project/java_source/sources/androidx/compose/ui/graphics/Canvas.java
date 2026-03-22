package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Canvas.kt */
@Metadata
/* loaded from: classes.dex */
public interface Canvas {

    /* compiled from: Canvas.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        /* renamed from: clipRect-mtrdD-E  reason: not valid java name */
        public static void m1820clipRectmtrdDE(@NotNull Canvas canvas, @NotNull Rect rect, int i10) {
            Intrinsics.checkNotNullParameter(rect, "rect");
            Canvas.super.m1817clipRectmtrdDE(rect, i10);
        }

        @Deprecated
        public static void drawArc(@NotNull Canvas canvas, @NotNull Rect rect, float f10, float f11, boolean z10, @NotNull Paint paint) {
            Intrinsics.checkNotNullParameter(rect, "rect");
            Intrinsics.checkNotNullParameter(paint, "paint");
            Canvas.super.drawArc(rect, f10, f11, z10, paint);
        }

        @Deprecated
        public static void drawArcRad(@NotNull Canvas canvas, @NotNull Rect rect, float f10, float f11, boolean z10, @NotNull Paint paint) {
            Intrinsics.checkNotNullParameter(rect, "rect");
            Intrinsics.checkNotNullParameter(paint, "paint");
            Canvas.super.drawArcRad(rect, f10, f11, z10, paint);
        }

        @Deprecated
        public static void drawOval(@NotNull Canvas canvas, @NotNull Rect rect, @NotNull Paint paint) {
            Intrinsics.checkNotNullParameter(rect, "rect");
            Intrinsics.checkNotNullParameter(paint, "paint");
            Canvas.super.drawOval(rect, paint);
        }

        @Deprecated
        public static void drawRect(@NotNull Canvas canvas, @NotNull Rect rect, @NotNull Paint paint) {
            Intrinsics.checkNotNullParameter(rect, "rect");
            Intrinsics.checkNotNullParameter(paint, "paint");
            Canvas.super.drawRect(rect, paint);
        }

        @Deprecated
        public static void skewRad(@NotNull Canvas canvas, float f10, float f11) {
            Canvas.super.skewRad(f10, f11);
        }
    }

    /* renamed from: clipPath-mtrdD-E$default  reason: not valid java name */
    static /* synthetic */ void m1813clipPathmtrdDE$default(Canvas canvas, Path path, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = ClipOp.Companion.m1831getIntersectrtfAjoo();
            }
            canvas.mo1700clipPathmtrdDE(path, i10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipPath-mtrdD-E");
    }

    /* renamed from: clipRect-N_I0leg$default  reason: not valid java name */
    static /* synthetic */ void m1814clipRectN_I0leg$default(Canvas canvas, float f10, float f11, float f12, float f13, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 16) != 0) {
                i10 = ClipOp.Companion.m1831getIntersectrtfAjoo();
            }
            canvas.mo1701clipRectN_I0leg(f10, f11, f12, f13, i10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipRect-N_I0leg");
    }

    /* renamed from: clipRect-mtrdD-E$default  reason: not valid java name */
    static /* synthetic */ void m1815clipRectmtrdDE$default(Canvas canvas, Rect rect, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = ClipOp.Companion.m1831getIntersectrtfAjoo();
            }
            canvas.m1817clipRectmtrdDE(rect, i10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipRect-mtrdD-E");
    }

    /* renamed from: drawImageRect-HPBpro0$default  reason: not valid java name */
    static /* synthetic */ void m1816drawImageRectHPBpro0$default(Canvas canvas, ImageBitmap imageBitmap, long j10, long j11, long j12, long j13, Paint paint, int i10, Object obj) {
        long j14;
        long j15;
        long j16;
        long j17;
        if (obj == null) {
            if ((i10 & 2) != 0) {
                j14 = IntOffset.Companion.m4177getZeronOccac();
            } else {
                j14 = j10;
            }
            if ((i10 & 4) != 0) {
                j15 = IntSizeKt.IntSize(imageBitmap.getWidth(), imageBitmap.getHeight());
            } else {
                j15 = j11;
            }
            if ((i10 & 8) != 0) {
                j16 = IntOffset.Companion.m4177getZeronOccac();
            } else {
                j16 = j12;
            }
            if ((i10 & 16) != 0) {
                j17 = j15;
            } else {
                j17 = j13;
            }
            canvas.mo1705drawImageRectHPBpro0(imageBitmap, j14, j15, j16, j17, paint);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawImageRect-HPBpro0");
    }

    static /* synthetic */ void scale$default(Canvas canvas, float f10, float f11, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                f11 = f10;
            }
            canvas.scale(f10, f11);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: scale");
    }

    /* renamed from: clipPath-mtrdD-E */
    void mo1700clipPathmtrdDE(@NotNull Path path, int i10);

    /* renamed from: clipRect-N_I0leg */
    void mo1701clipRectN_I0leg(float f10, float f11, float f12, float f13, int i10);

    /* renamed from: clipRect-mtrdD-E  reason: not valid java name */
    default void m1817clipRectmtrdDE(@NotNull Rect rect, int i10) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        mo1701clipRectN_I0leg(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), i10);
    }

    /* renamed from: concat-58bKbWc */
    void mo1702concat58bKbWc(@NotNull float[] fArr);

    void disableZ();

    void drawArc(float f10, float f11, float f12, float f13, float f14, float f15, boolean z10, @NotNull Paint paint);

    default void drawArc(@NotNull Rect rect, float f10, float f11, boolean z10, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(paint, "paint");
        drawArc(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), f10, f11, z10, paint);
    }

    default void drawArcRad(@NotNull Rect rect, float f10, float f11, boolean z10, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(paint, "paint");
        drawArc(rect, DegreesKt.degrees(f10), DegreesKt.degrees(f11), z10, paint);
    }

    /* renamed from: drawCircle-9KIMszo */
    void mo1703drawCircle9KIMszo(long j10, float f10, @NotNull Paint paint);

    /* renamed from: drawImage-d-4ec7I */
    void mo1704drawImaged4ec7I(@NotNull ImageBitmap imageBitmap, long j10, @NotNull Paint paint);

    /* renamed from: drawImageRect-HPBpro0 */
    void mo1705drawImageRectHPBpro0(@NotNull ImageBitmap imageBitmap, long j10, long j11, long j12, long j13, @NotNull Paint paint);

    /* renamed from: drawLine-Wko1d7g */
    void mo1706drawLineWko1d7g(long j10, long j11, @NotNull Paint paint);

    void drawOval(float f10, float f11, float f12, float f13, @NotNull Paint paint);

    default void drawOval(@NotNull Rect rect, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(paint, "paint");
        drawOval(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), paint);
    }

    void drawPath(@NotNull Path path, @NotNull Paint paint);

    /* renamed from: drawPoints-O7TthRY */
    void mo1707drawPointsO7TthRY(int i10, @NotNull List<Offset> list, @NotNull Paint paint);

    /* renamed from: drawRawPoints-O7TthRY */
    void mo1708drawRawPointsO7TthRY(int i10, @NotNull float[] fArr, @NotNull Paint paint);

    void drawRect(float f10, float f11, float f12, float f13, @NotNull Paint paint);

    default void drawRect(@NotNull Rect rect, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(paint, "paint");
        drawRect(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), paint);
    }

    void drawRoundRect(float f10, float f11, float f12, float f13, float f14, float f15, @NotNull Paint paint);

    /* renamed from: drawVertices-TPEHhCM */
    void mo1709drawVerticesTPEHhCM(@NotNull Vertices vertices, int i10, @NotNull Paint paint);

    void enableZ();

    void restore();

    void rotate(float f10);

    void save();

    void saveLayer(@NotNull Rect rect, @NotNull Paint paint);

    void scale(float f10, float f11);

    void skew(float f10, float f11);

    default void skewRad(float f10, float f11) {
        skew(DegreesKt.degrees(f10), DegreesKt.degrees(f11));
    }

    void translate(float f10, float f11);
}
