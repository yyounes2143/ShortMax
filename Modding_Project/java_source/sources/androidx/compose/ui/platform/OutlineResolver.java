package androidx.compose.ui.platform;

import android.graphics.Outline;
import android.os.Build;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OutlineResolver.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class OutlineResolver {
    private boolean cacheIsDirty;
    @NotNull
    private final Outline cachedOutline;
    @Nullable
    private Path cachedRrectPath;
    @Nullable
    private androidx.compose.ui.graphics.Outline calculatedOutline;
    @NotNull
    private Density density;
    private boolean isSupportedOutline;
    @NotNull
    private LayoutDirection layoutDirection;
    private boolean outlineNeeded;
    @Nullable
    private Path outlinePath;
    private long rectSize;
    private long rectTopLeft;
    private float roundedCornerRadius;
    @NotNull
    private Shape shape;
    private long size;
    @Nullable
    private Path tmpOpPath;
    @Nullable
    private Path tmpPath;
    @Nullable
    private RoundRect tmpRoundRect;
    @Nullable
    private Path tmpTouchPointPath;
    private boolean usePathForClip;

    public OutlineResolver(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        this.density = density;
        this.isSupportedOutline = true;
        Outline outline = new Outline();
        outline.setAlpha(1.0f);
        this.cachedOutline = outline;
        Size.Companion companion = Size.Companion;
        this.size = companion.m1684getZeroNHjbRc();
        this.shape = RectangleShapeKt.getRectangleShape();
        this.rectTopLeft = Offset.Companion.m1622getZeroF1C5BW0();
        this.rectSize = companion.m1684getZeroNHjbRc();
        this.layoutDirection = LayoutDirection.Ltr;
    }

    /* renamed from: isSameBounds-4L21HEs  reason: not valid java name */
    private final boolean m3571isSameBounds4L21HEs(RoundRect roundRect, long j10, long j11, float f10) {
        if (roundRect == null || !RoundRectKt.isSimple(roundRect) || roundRect.getLeft() != Offset.m1606getXimpl(j10) || roundRect.getTop() != Offset.m1607getYimpl(j10) || roundRect.getRight() != Offset.m1606getXimpl(j10) + Size.m1675getWidthimpl(j11) || roundRect.getBottom() != Offset.m1607getYimpl(j10) + Size.m1672getHeightimpl(j11) || CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs()) != f10) {
            return false;
        }
        return true;
    }

    private final void updateCache() {
        if (this.cacheIsDirty) {
            this.rectTopLeft = Offset.Companion.m1622getZeroF1C5BW0();
            long j10 = this.size;
            this.rectSize = j10;
            this.roundedCornerRadius = 0.0f;
            this.outlinePath = null;
            this.cacheIsDirty = false;
            this.usePathForClip = false;
            if (this.outlineNeeded && Size.m1675getWidthimpl(j10) > 0.0f && Size.m1672getHeightimpl(this.size) > 0.0f) {
                this.isSupportedOutline = true;
                androidx.compose.ui.graphics.Outline mo235createOutlinePq9zytI = this.shape.mo235createOutlinePq9zytI(this.size, this.layoutDirection, this.density);
                this.calculatedOutline = mo235createOutlinePq9zytI;
                if (mo235createOutlinePq9zytI instanceof Outline.Rectangle) {
                    updateCacheWithRect(((Outline.Rectangle) mo235createOutlinePq9zytI).getRect());
                    return;
                } else if (mo235createOutlinePq9zytI instanceof Outline.Rounded) {
                    updateCacheWithRoundRect(((Outline.Rounded) mo235createOutlinePq9zytI).getRoundRect());
                    return;
                } else if (mo235createOutlinePq9zytI instanceof Outline.Generic) {
                    updateCacheWithPath(((Outline.Generic) mo235createOutlinePq9zytI).getPath());
                    return;
                } else {
                    return;
                }
            }
            this.cachedOutline.setEmpty();
        }
    }

    private final void updateCacheWithPath(Path path) {
        if (Build.VERSION.SDK_INT <= 28 && !path.isConvex()) {
            this.isSupportedOutline = false;
            this.cachedOutline.setEmpty();
            this.usePathForClip = true;
        } else {
            android.graphics.Outline outline = this.cachedOutline;
            if (path instanceof AndroidPath) {
                outline.setConvexPath(((AndroidPath) path).getInternalPath());
                this.usePathForClip = !this.cachedOutline.canClip();
            } else {
                throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
            }
        }
        this.outlinePath = path;
    }

    private final void updateCacheWithRect(Rect rect) {
        this.rectTopLeft = OffsetKt.Offset(rect.getLeft(), rect.getTop());
        this.rectSize = SizeKt.Size(rect.getWidth(), rect.getHeight());
        this.cachedOutline.setRect(bt.a.c(rect.getLeft()), bt.a.c(rect.getTop()), bt.a.c(rect.getRight()), bt.a.c(rect.getBottom()));
    }

    private final void updateCacheWithRoundRect(RoundRect roundRect) {
        float m1581getXimpl = CornerRadius.m1581getXimpl(roundRect.m1656getTopLeftCornerRadiuskKHJgLs());
        this.rectTopLeft = OffsetKt.Offset(roundRect.getLeft(), roundRect.getTop());
        this.rectSize = SizeKt.Size(roundRect.getWidth(), roundRect.getHeight());
        if (RoundRectKt.isSimple(roundRect)) {
            this.cachedOutline.setRoundRect(bt.a.c(roundRect.getLeft()), bt.a.c(roundRect.getTop()), bt.a.c(roundRect.getRight()), bt.a.c(roundRect.getBottom()), m1581getXimpl);
            this.roundedCornerRadius = m1581getXimpl;
            return;
        }
        Path path = this.cachedRrectPath;
        if (path == null) {
            path = AndroidPath_androidKt.Path();
            this.cachedRrectPath = path;
        }
        path.reset();
        path.addRoundRect(roundRect);
        updateCacheWithPath(path);
    }

    public final void clipToOutline(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Path clipPath = getClipPath();
        if (clipPath != null) {
            Canvas.m1813clipPathmtrdDE$default(canvas, clipPath, 0, 2, null);
            return;
        }
        float f10 = this.roundedCornerRadius;
        if (f10 > 0.0f) {
            Path path = this.tmpPath;
            RoundRect roundRect = this.tmpRoundRect;
            if (path == null || !m3571isSameBounds4L21HEs(roundRect, this.rectTopLeft, this.rectSize, f10)) {
                RoundRect m1660RoundRectgG7oq9Y = RoundRectKt.m1660RoundRectgG7oq9Y(Offset.m1606getXimpl(this.rectTopLeft), Offset.m1607getYimpl(this.rectTopLeft), Offset.m1606getXimpl(this.rectTopLeft) + Size.m1675getWidthimpl(this.rectSize), Offset.m1607getYimpl(this.rectTopLeft) + Size.m1672getHeightimpl(this.rectSize), CornerRadiusKt.CornerRadius$default(this.roundedCornerRadius, 0.0f, 2, null));
                if (path == null) {
                    path = AndroidPath_androidKt.Path();
                } else {
                    path.reset();
                }
                path.addRoundRect(m1660RoundRectgG7oq9Y);
                this.tmpRoundRect = m1660RoundRectgG7oq9Y;
                this.tmpPath = path;
            }
            Canvas.m1813clipPathmtrdDE$default(canvas, path, 0, 2, null);
            return;
        }
        Canvas.m1814clipRectN_I0leg$default(canvas, Offset.m1606getXimpl(this.rectTopLeft), Offset.m1607getYimpl(this.rectTopLeft), Offset.m1606getXimpl(this.rectTopLeft) + Size.m1675getWidthimpl(this.rectSize), Offset.m1607getYimpl(this.rectTopLeft) + Size.m1672getHeightimpl(this.rectSize), 0, 16, null);
    }

    @Nullable
    public final Path getClipPath() {
        updateCache();
        return this.outlinePath;
    }

    @Nullable
    public final android.graphics.Outline getOutline() {
        updateCache();
        if (this.outlineNeeded && this.isSupportedOutline) {
            return this.cachedOutline;
        }
        return null;
    }

    public final boolean getOutlineClipSupported() {
        return !this.usePathForClip;
    }

    /* renamed from: isInOutline-k-4lQ0M  reason: not valid java name */
    public final boolean m3572isInOutlinek4lQ0M(long j10) {
        androidx.compose.ui.graphics.Outline outline;
        if (!this.outlineNeeded || (outline = this.calculatedOutline) == null) {
            return true;
        }
        return ShapeContainingUtilKt.isInOutline(outline, Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), this.tmpTouchPointPath, this.tmpOpPath);
    }

    public final boolean update(@NotNull Shape shape, float f10, boolean z10, float f11, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
        boolean z11;
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(density, "density");
        this.cachedOutline.setAlpha(f10);
        boolean areEqual = Intrinsics.areEqual(this.shape, shape);
        boolean z12 = !areEqual;
        if (!areEqual) {
            this.shape = shape;
            this.cacheIsDirty = true;
        }
        if (!z10 && f11 <= 0.0f) {
            z11 = false;
        } else {
            z11 = true;
        }
        if (this.outlineNeeded != z11) {
            this.outlineNeeded = z11;
            this.cacheIsDirty = true;
        }
        if (this.layoutDirection != layoutDirection) {
            this.layoutDirection = layoutDirection;
            this.cacheIsDirty = true;
        }
        if (!Intrinsics.areEqual(this.density, density)) {
            this.density = density;
            this.cacheIsDirty = true;
        }
        return z12;
    }

    /* renamed from: update-uvyYCjk  reason: not valid java name */
    public final void m3573updateuvyYCjk(long j10) {
        if (!Size.m1671equalsimpl0(this.size, j10)) {
            this.size = j10;
            this.cacheIsDirty = true;
        }
    }
}
