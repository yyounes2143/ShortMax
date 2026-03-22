package androidx.compose.ui.platform;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShapeContainingUtil.kt */
@Metadata
/* loaded from: classes.dex */
public final class ShapeContainingUtilKt {
    private static final boolean cornersFit(RoundRect roundRect) {
        if (CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) + CornerRadius.m1581getXimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) <= roundRect.getWidth() && CornerRadius.m1581getXimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs()) + CornerRadius.m1581getXimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()) <= roundRect.getWidth() && CornerRadius.m1582getYimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) + CornerRadius.m1582getYimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs()) <= roundRect.getHeight() && CornerRadius.m1582getYimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) + CornerRadius.m1582getYimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs()) <= roundRect.getHeight()) {
            return true;
        }
        return false;
    }

    public static final boolean isInOutline(@NotNull Outline outline, float f10, float f11, @Nullable Path path, @Nullable Path path2) {
        Intrinsics.checkNotNullParameter(outline, "outline");
        if (outline instanceof Outline.Rectangle) {
            return isInRectangle(((Outline.Rectangle) outline).getRect(), f10, f11);
        }
        if (outline instanceof Outline.Rounded) {
            return isInRoundedRect((Outline.Rounded) outline, f10, f11, path, path2);
        }
        if (outline instanceof Outline.Generic) {
            return isInPath(((Outline.Generic) outline).getPath(), f10, f11, path, path2);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static /* synthetic */ boolean isInOutline$default(Outline outline, float f10, float f11, Path path, Path path2, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            path = null;
        }
        if ((i10 & 16) != 0) {
            path2 = null;
        }
        return isInOutline(outline, f10, f11, path, path2);
    }

    private static final boolean isInPath(Path path, float f10, float f11, Path path2, Path path3) {
        Rect rect = new Rect(f10 - 0.005f, f11 - 0.005f, f10 + 0.005f, f11 + 0.005f);
        if (path2 == null) {
            path2 = AndroidPath_androidKt.Path();
        }
        path2.addRect(rect);
        if (path3 == null) {
            path3 = AndroidPath_androidKt.Path();
        }
        path3.mo1739opN5in7k0(path, path2, PathOperation.Companion.m2095getIntersectb3I0S0c());
        boolean isEmpty = path3.isEmpty();
        path3.reset();
        path2.reset();
        return !isEmpty;
    }

    private static final boolean isInRectangle(Rect rect, float f10, float f11) {
        if (rect.getLeft() <= f10 && f10 < rect.getRight() && rect.getTop() <= f11 && f11 < rect.getBottom()) {
            return true;
        }
        return false;
    }

    private static final boolean isInRoundedRect(Outline.Rounded rounded, float f10, float f11, Path path, Path path2) {
        Path path3;
        RoundRect roundRect = rounded.getRoundRect();
        if (f10 >= roundRect.getLeft() && f10 < roundRect.getRight() && f11 >= roundRect.getTop() && f11 < roundRect.getBottom()) {
            if (!cornersFit(roundRect)) {
                if (path2 == null) {
                    path3 = AndroidPath_androidKt.Path();
                } else {
                    path3 = path2;
                }
                path3.addRoundRect(roundRect);
                return isInPath(path3, f10, f11, path, path2);
            }
            float m1581getXimpl = CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) + roundRect.getLeft();
            float m1582getYimpl = CornerRadius.m1582getYimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) + roundRect.getTop();
            float right = roundRect.getRight() - CornerRadius.m1581getXimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs());
            float m1582getYimpl2 = CornerRadius.m1582getYimpl(roundRect.m1657getTopRightCornerRadiuskKHJgLs()) + roundRect.getTop();
            float right2 = roundRect.getRight() - CornerRadius.m1581getXimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs());
            float bottom = roundRect.getBottom() - CornerRadius.m1582getYimpl(roundRect.m1655getBottomRightCornerRadiuskKHJgLs());
            float bottom2 = roundRect.getBottom() - CornerRadius.m1582getYimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs());
            float m1581getXimpl2 = CornerRadius.m1581getXimpl(roundRect.m1654getBottomLeftCornerRadiuskKHJgLs()) + roundRect.getLeft();
            if (f10 < m1581getXimpl && f11 < m1582getYimpl) {
                return m3574isWithinEllipseVE1yxkc(f10, f11, roundRect.m1656getTopLeftCornerRadiuskKHJgLs(), m1581getXimpl, m1582getYimpl);
            }
            if (f10 < m1581getXimpl2 && f11 > bottom2) {
                return m3574isWithinEllipseVE1yxkc(f10, f11, roundRect.m1654getBottomLeftCornerRadiuskKHJgLs(), m1581getXimpl2, bottom2);
            }
            if (f10 > right && f11 < m1582getYimpl2) {
                return m3574isWithinEllipseVE1yxkc(f10, f11, roundRect.m1657getTopRightCornerRadiuskKHJgLs(), right, m1582getYimpl2);
            }
            if (f10 > right2 && f11 > bottom) {
                return m3574isWithinEllipseVE1yxkc(f10, f11, roundRect.m1655getBottomRightCornerRadiuskKHJgLs(), right2, bottom);
            }
            return true;
        }
        return false;
    }

    /* renamed from: isWithinEllipse-VE1yxkc  reason: not valid java name */
    private static final boolean m3574isWithinEllipseVE1yxkc(float f10, float f11, long j10, float f12, float f13) {
        float f14 = f10 - f12;
        float f15 = f11 - f13;
        float m1581getXimpl = CornerRadius.m1581getXimpl(j10);
        float m1582getYimpl = CornerRadius.m1582getYimpl(j10);
        if (((f14 * f14) / (m1581getXimpl * m1581getXimpl)) + ((f15 * f15) / (m1582getYimpl * m1582getYimpl)) <= 1.0f) {
            return true;
        }
        return false;
    }
}
