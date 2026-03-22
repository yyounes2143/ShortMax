package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Canvas.kt */
@Metadata
/* loaded from: classes.dex */
public final class CanvasKt {
    @NotNull
    public static final Canvas Canvas(@NotNull ImageBitmap image) {
        Intrinsics.checkNotNullParameter(image, "image");
        return AndroidCanvas_androidKt.ActualCanvas(image);
    }

    public static final void rotate(@NotNull Canvas canvas, float f10, float f11, float f12) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        if (f10 == 0.0f) {
            return;
        }
        canvas.translate(f11, f12);
        canvas.rotate(f10);
        canvas.translate(-f11, -f12);
    }

    public static final void rotateRad(@NotNull Canvas canvas, float f10, float f11, float f12) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        rotate(canvas, DegreesKt.degrees(f10), f11, f12);
    }

    public static /* synthetic */ void rotateRad$default(Canvas canvas, float f10, float f11, float f12, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        if ((i10 & 4) != 0) {
            f12 = 0.0f;
        }
        rotateRad(canvas, f10, f11, f12);
    }

    public static final void scale(@NotNull Canvas canvas, float f10, float f11, float f12, float f13) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        if (f10 == 1.0f && f11 == 1.0f) {
            return;
        }
        canvas.translate(f12, f13);
        canvas.scale(f10, f11);
        canvas.translate(-f12, -f13);
    }

    public static /* synthetic */ void scale$default(Canvas canvas, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = f10;
        }
        scale(canvas, f10, f11, f12, f13);
    }

    public static final void withSave(@NotNull Canvas canvas, @NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            canvas.save();
            block.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restore();
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withSaveLayer(@NotNull Canvas canvas, @NotNull Rect bounds, @NotNull Paint paint, @NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            canvas.saveLayer(bounds, paint);
            block.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restore();
            InlineMarker.finallyEnd(1);
        }
    }
}
