package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Outline.kt */
@Metadata
/* loaded from: classes.dex */
public final class OutlineKt {
    public static final void addOutline(@NotNull Path path, @NotNull Outline outline) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(outline, "outline");
        if (outline instanceof Outline.Rectangle) {
            path.addRect(((Outline.Rectangle) outline).getRect());
        } else if (outline instanceof Outline.Rounded) {
            path.addRoundRect(((Outline.Rounded) outline).getRoundRect());
        } else if (outline instanceof Outline.Generic) {
            Path.m2074addPathUv8p0NA$default(path, ((Outline.Generic) outline).getPath(), 0L, 2, null);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public static final void drawOutline(@NotNull Canvas canvas, @NotNull Outline outline, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(outline, "outline");
        Intrinsics.checkNotNullParameter(paint, "paint");
        if (outline instanceof Outline.Rectangle) {
            canvas.drawRect(((Outline.Rectangle) outline).getRect(), paint);
        } else if (outline instanceof Outline.Rounded) {
            Outline.Rounded rounded = (Outline.Rounded) outline;
            Path roundRectPath$ui_graphics_release = rounded.getRoundRectPath$ui_graphics_release();
            if (roundRectPath$ui_graphics_release != null) {
                canvas.drawPath(roundRectPath$ui_graphics_release, paint);
            } else {
                canvas.drawRoundRect(rounded.getRoundRect().getLeft(), rounded.getRoundRect().getTop(), rounded.getRoundRect().getRight(), rounded.getRoundRect().getBottom(), CornerRadius.m1581getXimpl(rounded.getRoundRect().m1654getBottomLeftCornerRadiuskKHJgLs()), CornerRadius.m1582getYimpl(rounded.getRoundRect().m1654getBottomLeftCornerRadiuskKHJgLs()), paint);
            }
        } else if (outline instanceof Outline.Generic) {
            canvas.drawPath(((Outline.Generic) outline).getPath(), paint);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* renamed from: drawOutline-hn5TExg */
    public static final void m2061drawOutlinehn5TExg(@NotNull DrawScope drawOutline, @NotNull Outline outline, @NotNull Brush brush, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Path path;
        Intrinsics.checkNotNullParameter(drawOutline, "$this$drawOutline");
        Intrinsics.checkNotNullParameter(outline, "outline");
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        if (outline instanceof Outline.Rectangle) {
            Rect rect = ((Outline.Rectangle) outline).getRect();
            drawOutline.mo2252drawRectAsUm42w(brush, topLeft(rect), size(rect), f10, style, colorFilter, i10);
            return;
        }
        if (outline instanceof Outline.Rounded) {
            Outline.Rounded rounded = (Outline.Rounded) outline;
            path = rounded.getRoundRectPath$ui_graphics_release();
            if (path == null) {
                RoundRect roundRect = rounded.getRoundRect();
                drawOutline.mo2254drawRoundRectZuiqVtQ(brush, topLeft(roundRect), size(roundRect), CornerRadiusKt.CornerRadius$default(CornerRadius.m1581getXimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs()), 0.0f, 2, null), f10, style, colorFilter, i10);
                return;
            }
        } else if (outline instanceof Outline.Generic) {
            path = ((Outline.Generic) outline).getPath();
        } else {
            throw new NoWhenBranchMatchedException();
        }
        drawOutline.mo2248drawPathGBMwjPU(path, brush, f10, style, colorFilter, i10);
    }

    /* renamed from: drawOutline-hn5TExg$default */
    public static /* synthetic */ void m2062drawOutlinehn5TExg$default(DrawScope drawScope, Outline outline, Brush brush, float f10, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            f10 = 1.0f;
        }
        float f11 = f10;
        if ((i11 & 8) != 0) {
            drawStyle = Fill.INSTANCE;
        }
        DrawStyle drawStyle2 = drawStyle;
        if ((i11 & 16) != 0) {
            colorFilter = null;
        }
        ColorFilter colorFilter2 = colorFilter;
        if ((i11 & 32) != 0) {
            i10 = DrawScope.Companion.m2337getDefaultBlendMode0nO6VwU();
        }
        m2061drawOutlinehn5TExg(drawScope, outline, brush, f11, drawStyle2, colorFilter2, i10);
    }

    /* renamed from: drawOutline-wDX37Ww */
    public static final void m2063drawOutlinewDX37Ww(@NotNull DrawScope drawOutline, @NotNull Outline outline, long j10, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Path path;
        Intrinsics.checkNotNullParameter(drawOutline, "$this$drawOutline");
        Intrinsics.checkNotNullParameter(outline, "outline");
        Intrinsics.checkNotNullParameter(style, "style");
        if (outline instanceof Outline.Rectangle) {
            Rect rect = ((Outline.Rectangle) outline).getRect();
            drawOutline.mo2253drawRectnJ9OG0(j10, topLeft(rect), size(rect), f10, style, colorFilter, i10);
            return;
        }
        if (outline instanceof Outline.Rounded) {
            Outline.Rounded rounded = (Outline.Rounded) outline;
            path = rounded.getRoundRectPath$ui_graphics_release();
            if (path == null) {
                RoundRect roundRect = rounded.getRoundRect();
                drawOutline.mo2255drawRoundRectuAw5IA(j10, topLeft(roundRect), size(roundRect), CornerRadiusKt.CornerRadius$default(CornerRadius.m1581getXimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs()), 0.0f, 2, null), style, f10, colorFilter, i10);
                return;
            }
        } else if (outline instanceof Outline.Generic) {
            path = ((Outline.Generic) outline).getPath();
        } else {
            throw new NoWhenBranchMatchedException();
        }
        drawOutline.mo2249drawPathLG529CI(path, j10, f10, style, colorFilter, i10);
    }

    /* renamed from: drawOutline-wDX37Ww$default */
    public static /* synthetic */ void m2064drawOutlinewDX37Ww$default(DrawScope drawScope, Outline outline, long j10, float f10, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        float f11;
        Fill fill;
        ColorFilter colorFilter2;
        int i12;
        if ((i11 & 4) != 0) {
            f11 = 1.0f;
        } else {
            f11 = f10;
        }
        if ((i11 & 8) != 0) {
            fill = Fill.INSTANCE;
        } else {
            fill = drawStyle;
        }
        if ((i11 & 16) != 0) {
            colorFilter2 = null;
        } else {
            colorFilter2 = colorFilter;
        }
        if ((i11 & 32) != 0) {
            i12 = DrawScope.Companion.m2337getDefaultBlendMode0nO6VwU();
        } else {
            i12 = i10;
        }
        m2063drawOutlinewDX37Ww(drawScope, outline, j10, f11, fill, colorFilter2, i12);
    }

    private static final void drawOutlineHelper(DrawScope drawScope, Outline outline, Function2<? super DrawScope, ? super Rect, Unit> function2, Function2<? super DrawScope, ? super RoundRect, Unit> function22, Function2<? super DrawScope, ? super Path, Unit> function23) {
        if (outline instanceof Outline.Rectangle) {
            function2.invoke(drawScope, ((Outline.Rectangle) outline).getRect());
        } else if (outline instanceof Outline.Rounded) {
            Outline.Rounded rounded = (Outline.Rounded) outline;
            Path roundRectPath$ui_graphics_release = rounded.getRoundRectPath$ui_graphics_release();
            if (roundRectPath$ui_graphics_release != null) {
                function23.invoke(drawScope, roundRectPath$ui_graphics_release);
            } else {
                function22.invoke(drawScope, rounded.getRoundRect());
            }
        } else if (outline instanceof Outline.Generic) {
            function23.invoke(drawScope, ((Outline.Generic) outline).getPath());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public static final boolean hasSameCornerRadius(RoundRect roundRect) {
        boolean z10;
        boolean z11;
        if (CornerRadius.m1581getXimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs()) == CornerRadius.m1581getXimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()) && CornerRadius.m1581getXimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()) == CornerRadius.m1581getXimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) && CornerRadius.m1581getXimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) == CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs())) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (CornerRadius.m1582getYimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs()) == CornerRadius.m1582getYimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()) && CornerRadius.m1582getYimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()) == CornerRadius.m1582getYimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) && CornerRadius.m1582getYimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) == CornerRadius.m1582getYimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs())) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z10 || !z11) {
            return false;
        }
        return true;
    }

    private static final long size(Rect rect) {
        return SizeKt.Size(rect.getWidth(), rect.getHeight());
    }

    private static final long topLeft(Rect rect) {
        return OffsetKt.Offset(rect.getLeft(), rect.getTop());
    }

    private static final long size(RoundRect roundRect) {
        return SizeKt.Size(roundRect.getWidth(), roundRect.getHeight());
    }

    private static final long topLeft(RoundRect roundRect) {
        return OffsetKt.Offset(roundRect.getLeft(), roundRect.getTop());
    }
}
