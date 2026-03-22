package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CanvasDrawScope.kt */
@Metadata
/* loaded from: classes.dex */
public final class CanvasDrawScope implements DrawScope {
    @Nullable
    private Paint fillPaint;
    @Nullable
    private Paint strokePaint;
    @NotNull
    private final DrawParams drawParams = new DrawParams(null, null, null, 0, 15, null);
    @NotNull
    private final DrawContext drawContext = new DrawContext() { // from class: androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1
        @NotNull
        private final DrawTransform transform;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            DrawTransform asDrawTransform;
            asDrawTransform = CanvasDrawScopeKt.asDrawTransform(this);
            this.transform = asDrawTransform;
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        @NotNull
        public Canvas getCanvas() {
            return CanvasDrawScope.this.getDrawParams().getCanvas();
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        /* renamed from: getSize-NH-jbRc  reason: not valid java name */
        public long mo2261getSizeNHjbRc() {
            return CanvasDrawScope.this.getDrawParams().m2259getSizeNHjbRc();
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        @NotNull
        public DrawTransform getTransform() {
            return this.transform;
        }

        @Override // androidx.compose.ui.graphics.drawscope.DrawContext
        /* renamed from: setSize-uvyYCjk  reason: not valid java name */
        public void mo2262setSizeuvyYCjk(long j10) {
            CanvasDrawScope.this.getDrawParams().m2260setSizeuvyYCjk(j10);
        }
    };

    /* compiled from: CanvasDrawScope.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DrawParams {
        @NotNull
        private Canvas canvas;
        @NotNull
        private Density density;
        @NotNull
        private LayoutDirection layoutDirection;
        private long size;

        public /* synthetic */ DrawParams(Density density, LayoutDirection layoutDirection, Canvas canvas, long j10, DefaultConstructorMarker defaultConstructorMarker) {
            this(density, layoutDirection, canvas, j10);
        }

        /* renamed from: copy-Ug5Nnss$default  reason: not valid java name */
        public static /* synthetic */ DrawParams m2256copyUg5Nnss$default(DrawParams drawParams, Density density, LayoutDirection layoutDirection, Canvas canvas, long j10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                density = drawParams.density;
            }
            if ((i10 & 2) != 0) {
                layoutDirection = drawParams.layoutDirection;
            }
            LayoutDirection layoutDirection2 = layoutDirection;
            if ((i10 & 4) != 0) {
                canvas = drawParams.canvas;
            }
            Canvas canvas2 = canvas;
            if ((i10 & 8) != 0) {
                j10 = drawParams.size;
            }
            return drawParams.m2258copyUg5Nnss(density, layoutDirection2, canvas2, j10);
        }

        @NotNull
        public final Density component1() {
            return this.density;
        }

        @NotNull
        public final LayoutDirection component2() {
            return this.layoutDirection;
        }

        @NotNull
        public final Canvas component3() {
            return this.canvas;
        }

        /* renamed from: component4-NH-jbRc  reason: not valid java name */
        public final long m2257component4NHjbRc() {
            return this.size;
        }

        @NotNull
        /* renamed from: copy-Ug5Nnss  reason: not valid java name */
        public final DrawParams m2258copyUg5Nnss(@NotNull Density density, @NotNull LayoutDirection layoutDirection, @NotNull Canvas canvas, long j10) {
            Intrinsics.checkNotNullParameter(density, "density");
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            return new DrawParams(density, layoutDirection, canvas, j10, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DrawParams)) {
                return false;
            }
            DrawParams drawParams = (DrawParams) obj;
            if (Intrinsics.areEqual(this.density, drawParams.density) && this.layoutDirection == drawParams.layoutDirection && Intrinsics.areEqual(this.canvas, drawParams.canvas) && Size.m1671equalsimpl0(this.size, drawParams.size)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Canvas getCanvas() {
            return this.canvas;
        }

        @NotNull
        public final Density getDensity() {
            return this.density;
        }

        @NotNull
        public final LayoutDirection getLayoutDirection() {
            return this.layoutDirection;
        }

        /* renamed from: getSize-NH-jbRc  reason: not valid java name */
        public final long m2259getSizeNHjbRc() {
            return this.size;
        }

        public int hashCode() {
            return (((((this.density.hashCode() * 31) + this.layoutDirection.hashCode()) * 31) + this.canvas.hashCode()) * 31) + Size.m1676hashCodeimpl(this.size);
        }

        public final void setCanvas(@NotNull Canvas canvas) {
            Intrinsics.checkNotNullParameter(canvas, "<set-?>");
            this.canvas = canvas;
        }

        public final void setDensity(@NotNull Density density) {
            Intrinsics.checkNotNullParameter(density, "<set-?>");
            this.density = density;
        }

        public final void setLayoutDirection(@NotNull LayoutDirection layoutDirection) {
            Intrinsics.checkNotNullParameter(layoutDirection, "<set-?>");
            this.layoutDirection = layoutDirection;
        }

        /* renamed from: setSize-uvyYCjk  reason: not valid java name */
        public final void m2260setSizeuvyYCjk(long j10) {
            this.size = j10;
        }

        @NotNull
        public String toString() {
            return "DrawParams(density=" + this.density + ", layoutDirection=" + this.layoutDirection + ", canvas=" + this.canvas + ", size=" + ((Object) Size.m1679toStringimpl(this.size)) + ')';
        }

        private DrawParams(Density density, LayoutDirection layoutDirection, Canvas canvas, long j10) {
            this.density = density;
            this.layoutDirection = layoutDirection;
            this.canvas = canvas;
            this.size = j10;
        }

        public /* synthetic */ DrawParams(Density density, LayoutDirection layoutDirection, Canvas canvas, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? CanvasDrawScopeKt.DefaultDensity : density, (i10 & 2) != 0 ? LayoutDirection.Ltr : layoutDirection, (i10 & 4) != 0 ? new EmptyCanvas() : canvas, (i10 & 8) != 0 ? Size.Companion.m1684getZeroNHjbRc() : j10, null);
        }
    }

    /* renamed from: configurePaint-2qPWKa0  reason: not valid java name */
    private final Paint m2227configurePaint2qPWKa0(long j10, DrawStyle drawStyle, float f10, ColorFilter colorFilter, int i10, int i11) {
        Paint selectPaint = selectPaint(drawStyle);
        long m2235modulate5vOe2sY = m2235modulate5vOe2sY(j10, f10);
        if (!Color.m1843equalsimpl0(selectPaint.mo1720getColor0d7_KjU(), m2235modulate5vOe2sY)) {
            selectPaint.mo1726setColor8_81llA(m2235modulate5vOe2sY);
        }
        if (selectPaint.getShader() != null) {
            selectPaint.setShader(null);
        }
        if (!Intrinsics.areEqual(selectPaint.getColorFilter(), colorFilter)) {
            selectPaint.setColorFilter(colorFilter);
        }
        if (!BlendMode.m1755equalsimpl0(selectPaint.mo1719getBlendMode0nO6VwU(), i10)) {
            selectPaint.mo1725setBlendModes9anfk8(i10);
        }
        if (!FilterQuality.m1923equalsimpl0(selectPaint.mo1721getFilterQualityfv9h1I(), i11)) {
            selectPaint.mo1727setFilterQualityvDHp3xo(i11);
        }
        return selectPaint;
    }

    /* renamed from: configurePaint-2qPWKa0$default  reason: not valid java name */
    static /* synthetic */ Paint m2228configurePaint2qPWKa0$default(CanvasDrawScope canvasDrawScope, long j10, DrawStyle drawStyle, float f10, ColorFilter colorFilter, int i10, int i11, int i12, Object obj) {
        int i13;
        if ((i12 & 32) != 0) {
            i13 = DrawScope.Companion.m2338getDefaultFilterQualityfv9h1I();
        } else {
            i13 = i11;
        }
        return canvasDrawScope.m2227configurePaint2qPWKa0(j10, drawStyle, f10, colorFilter, i10, i13);
    }

    /* renamed from: configurePaint-swdJneE  reason: not valid java name */
    private final Paint m2229configurePaintswdJneE(Brush brush, DrawStyle drawStyle, float f10, ColorFilter colorFilter, int i10, int i11) {
        Paint selectPaint = selectPaint(drawStyle);
        if (brush != null) {
            brush.mo1789applyToPq9zytI(mo2336getSizeNHjbRc(), selectPaint, f10);
        } else if (selectPaint.getAlpha() != f10) {
            selectPaint.setAlpha(f10);
        }
        if (!Intrinsics.areEqual(selectPaint.getColorFilter(), colorFilter)) {
            selectPaint.setColorFilter(colorFilter);
        }
        if (!BlendMode.m1755equalsimpl0(selectPaint.mo1719getBlendMode0nO6VwU(), i10)) {
            selectPaint.mo1725setBlendModes9anfk8(i10);
        }
        if (!FilterQuality.m1923equalsimpl0(selectPaint.mo1721getFilterQualityfv9h1I(), i11)) {
            selectPaint.mo1727setFilterQualityvDHp3xo(i11);
        }
        return selectPaint;
    }

    /* renamed from: configurePaint-swdJneE$default  reason: not valid java name */
    static /* synthetic */ Paint m2230configurePaintswdJneE$default(CanvasDrawScope canvasDrawScope, Brush brush, DrawStyle drawStyle, float f10, ColorFilter colorFilter, int i10, int i11, int i12, Object obj) {
        if ((i12 & 32) != 0) {
            i11 = DrawScope.Companion.m2338getDefaultFilterQualityfv9h1I();
        }
        return canvasDrawScope.m2229configurePaintswdJneE(brush, drawStyle, f10, colorFilter, i10, i11);
    }

    /* renamed from: configureStrokePaint-Q_0CZUI  reason: not valid java name */
    private final Paint m2231configureStrokePaintQ_0CZUI(long j10, float f10, float f11, int i10, int i11, PathEffect pathEffect, float f12, ColorFilter colorFilter, int i12, int i13) {
        Paint obtainStrokePaint = obtainStrokePaint();
        long m2235modulate5vOe2sY = m2235modulate5vOe2sY(j10, f12);
        if (!Color.m1843equalsimpl0(obtainStrokePaint.mo1720getColor0d7_KjU(), m2235modulate5vOe2sY)) {
            obtainStrokePaint.mo1726setColor8_81llA(m2235modulate5vOe2sY);
        }
        if (obtainStrokePaint.getShader() != null) {
            obtainStrokePaint.setShader(null);
        }
        if (!Intrinsics.areEqual(obtainStrokePaint.getColorFilter(), colorFilter)) {
            obtainStrokePaint.setColorFilter(colorFilter);
        }
        if (!BlendMode.m1755equalsimpl0(obtainStrokePaint.mo1719getBlendMode0nO6VwU(), i12)) {
            obtainStrokePaint.mo1725setBlendModes9anfk8(i12);
        }
        if (obtainStrokePaint.getStrokeWidth() != f10) {
            obtainStrokePaint.setStrokeWidth(f10);
        }
        if (obtainStrokePaint.getStrokeMiterLimit() != f11) {
            obtainStrokePaint.setStrokeMiterLimit(f11);
        }
        if (!StrokeCap.m2142equalsimpl0(obtainStrokePaint.mo1722getStrokeCapKaPHkGw(), i10)) {
            obtainStrokePaint.mo1728setStrokeCapBeK7IIE(i10);
        }
        if (!StrokeJoin.m2152equalsimpl0(obtainStrokePaint.mo1723getStrokeJoinLxFBmk8(), i11)) {
            obtainStrokePaint.mo1729setStrokeJoinWw9F2mQ(i11);
        }
        if (!Intrinsics.areEqual(obtainStrokePaint.getPathEffect(), pathEffect)) {
            obtainStrokePaint.setPathEffect(pathEffect);
        }
        if (!FilterQuality.m1923equalsimpl0(obtainStrokePaint.mo1721getFilterQualityfv9h1I(), i13)) {
            obtainStrokePaint.mo1727setFilterQualityvDHp3xo(i13);
        }
        return obtainStrokePaint;
    }

    /* renamed from: configureStrokePaint-Q_0CZUI$default  reason: not valid java name */
    static /* synthetic */ Paint m2232configureStrokePaintQ_0CZUI$default(CanvasDrawScope canvasDrawScope, long j10, float f10, float f11, int i10, int i11, PathEffect pathEffect, float f12, ColorFilter colorFilter, int i12, int i13, int i14, Object obj) {
        int i15;
        if ((i14 & 512) != 0) {
            i15 = DrawScope.Companion.m2338getDefaultFilterQualityfv9h1I();
        } else {
            i15 = i13;
        }
        return canvasDrawScope.m2231configureStrokePaintQ_0CZUI(j10, f10, f11, i10, i11, pathEffect, f12, colorFilter, i12, i15);
    }

    /* renamed from: configureStrokePaint-ho4zsrM  reason: not valid java name */
    private final Paint m2233configureStrokePaintho4zsrM(Brush brush, float f10, float f11, int i10, int i11, PathEffect pathEffect, float f12, ColorFilter colorFilter, int i12, int i13) {
        Paint obtainStrokePaint = obtainStrokePaint();
        if (brush != null) {
            brush.mo1789applyToPq9zytI(mo2336getSizeNHjbRc(), obtainStrokePaint, f12);
        } else if (obtainStrokePaint.getAlpha() != f12) {
            obtainStrokePaint.setAlpha(f12);
        }
        if (!Intrinsics.areEqual(obtainStrokePaint.getColorFilter(), colorFilter)) {
            obtainStrokePaint.setColorFilter(colorFilter);
        }
        if (!BlendMode.m1755equalsimpl0(obtainStrokePaint.mo1719getBlendMode0nO6VwU(), i12)) {
            obtainStrokePaint.mo1725setBlendModes9anfk8(i12);
        }
        if (obtainStrokePaint.getStrokeWidth() != f10) {
            obtainStrokePaint.setStrokeWidth(f10);
        }
        if (obtainStrokePaint.getStrokeMiterLimit() != f11) {
            obtainStrokePaint.setStrokeMiterLimit(f11);
        }
        if (!StrokeCap.m2142equalsimpl0(obtainStrokePaint.mo1722getStrokeCapKaPHkGw(), i10)) {
            obtainStrokePaint.mo1728setStrokeCapBeK7IIE(i10);
        }
        if (!StrokeJoin.m2152equalsimpl0(obtainStrokePaint.mo1723getStrokeJoinLxFBmk8(), i11)) {
            obtainStrokePaint.mo1729setStrokeJoinWw9F2mQ(i11);
        }
        if (!Intrinsics.areEqual(obtainStrokePaint.getPathEffect(), pathEffect)) {
            obtainStrokePaint.setPathEffect(pathEffect);
        }
        if (!FilterQuality.m1923equalsimpl0(obtainStrokePaint.mo1721getFilterQualityfv9h1I(), i13)) {
            obtainStrokePaint.mo1727setFilterQualityvDHp3xo(i13);
        }
        return obtainStrokePaint;
    }

    /* renamed from: configureStrokePaint-ho4zsrM$default  reason: not valid java name */
    static /* synthetic */ Paint m2234configureStrokePaintho4zsrM$default(CanvasDrawScope canvasDrawScope, Brush brush, float f10, float f11, int i10, int i11, PathEffect pathEffect, float f12, ColorFilter colorFilter, int i12, int i13, int i14, Object obj) {
        int i15;
        if ((i14 & 512) != 0) {
            i15 = DrawScope.Companion.m2338getDefaultFilterQualityfv9h1I();
        } else {
            i15 = i13;
        }
        return canvasDrawScope.m2233configureStrokePaintho4zsrM(brush, f10, f11, i10, i11, pathEffect, f12, colorFilter, i12, i15);
    }

    /* renamed from: modulate-5vOe2sY  reason: not valid java name */
    private final long m2235modulate5vOe2sY(long j10, float f10) {
        if (f10 != 1.0f) {
            return Color.m1841copywmQWz5c$default(j10, Color.m1844getAlphaimpl(j10) * f10, 0.0f, 0.0f, 0.0f, 14, null);
        }
        return j10;
    }

    private final Paint obtainFillPaint() {
        Paint paint = this.fillPaint;
        if (paint == null) {
            Paint Paint = AndroidPaint_androidKt.Paint();
            Paint.mo1730setStylek9PVt8s(PaintingStyle.Companion.m2072getFillTiuSbCo());
            this.fillPaint = Paint;
            return Paint;
        }
        return paint;
    }

    private final Paint obtainStrokePaint() {
        Paint paint = this.strokePaint;
        if (paint == null) {
            Paint Paint = AndroidPaint_androidKt.Paint();
            Paint.mo1730setStylek9PVt8s(PaintingStyle.Companion.m2073getStrokeTiuSbCo());
            this.strokePaint = Paint;
            return Paint;
        }
        return paint;
    }

    private final Paint selectPaint(DrawStyle drawStyle) {
        if (Intrinsics.areEqual(drawStyle, Fill.INSTANCE)) {
            return obtainFillPaint();
        }
        if (drawStyle instanceof Stroke) {
            Paint obtainStrokePaint = obtainStrokePaint();
            Stroke stroke = (Stroke) drawStyle;
            if (obtainStrokePaint.getStrokeWidth() != stroke.getWidth()) {
                obtainStrokePaint.setStrokeWidth(stroke.getWidth());
            }
            if (!StrokeCap.m2142equalsimpl0(obtainStrokePaint.mo1722getStrokeCapKaPHkGw(), stroke.m2399getCapKaPHkGw())) {
                obtainStrokePaint.mo1728setStrokeCapBeK7IIE(stroke.m2399getCapKaPHkGw());
            }
            if (obtainStrokePaint.getStrokeMiterLimit() != stroke.getMiter()) {
                obtainStrokePaint.setStrokeMiterLimit(stroke.getMiter());
            }
            if (!StrokeJoin.m2152equalsimpl0(obtainStrokePaint.mo1723getStrokeJoinLxFBmk8(), stroke.m2400getJoinLxFBmk8())) {
                obtainStrokePaint.mo1729setStrokeJoinWw9F2mQ(stroke.m2400getJoinLxFBmk8());
            }
            if (!Intrinsics.areEqual(obtainStrokePaint.getPathEffect(), stroke.getPathEffect())) {
                obtainStrokePaint.setPathEffect(stroke.getPathEffect());
            }
            return obtainStrokePaint;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* renamed from: draw-yzxVdVo  reason: not valid java name */
    public final void m2236drawyzxVdVo(@NotNull Density density, @NotNull LayoutDirection layoutDirection, @NotNull Canvas canvas, long j10, @NotNull Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawParams drawParams = getDrawParams();
        Density component1 = drawParams.component1();
        LayoutDirection component2 = drawParams.component2();
        Canvas component3 = drawParams.component3();
        long m2257component4NHjbRc = drawParams.m2257component4NHjbRc();
        DrawParams drawParams2 = getDrawParams();
        drawParams2.setDensity(density);
        drawParams2.setLayoutDirection(layoutDirection);
        drawParams2.setCanvas(canvas);
        drawParams2.m2260setSizeuvyYCjk(j10);
        canvas.save();
        block.invoke(this);
        canvas.restore();
        DrawParams drawParams3 = getDrawParams();
        drawParams3.setDensity(component1);
        drawParams3.setLayoutDirection(component2);
        drawParams3.setCanvas(component3);
        drawParams3.m2260setSizeuvyYCjk(m2257component4NHjbRc);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawArc-illE91I  reason: not valid java name */
    public void mo2237drawArcillE91I(@NotNull Brush brush, float f10, float f11, boolean z10, long j10, long j11, float f12, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().drawArc(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), Offset.m1606getXimpl(j10) + Size.m1675getWidthimpl(j11), Offset.m1607getYimpl(j10) + Size.m1672getHeightimpl(j11), f10, f11, z10, m2230configurePaintswdJneE$default(this, brush, style, f12, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawArc-yD3GUKo  reason: not valid java name */
    public void mo2238drawArcyD3GUKo(long j10, float f10, float f11, boolean z10, long j11, long j12, float f12, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().drawArc(Offset.m1606getXimpl(j11), Offset.m1607getYimpl(j11), Offset.m1606getXimpl(j11) + Size.m1675getWidthimpl(j12), Offset.m1607getYimpl(j11) + Size.m1672getHeightimpl(j12), f10, f11, z10, m2228configurePaint2qPWKa0$default(this, j10, style, f12, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawCircle-V9BoPsw  reason: not valid java name */
    public void mo2239drawCircleV9BoPsw(@NotNull Brush brush, float f10, long j10, float f11, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().mo1703drawCircle9KIMszo(j10, f10, m2230configurePaintswdJneE$default(this, brush, style, f11, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawCircle-VaOC9Bg  reason: not valid java name */
    public void mo2240drawCircleVaOC9Bg(long j10, float f10, long j11, float f11, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().mo1703drawCircle9KIMszo(j11, f10, m2228configurePaint2qPWKa0$default(this, j10, style, f11, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    @c
    /* renamed from: drawImage-9jGpkUE  reason: not valid java name */
    public /* synthetic */ void mo2241drawImage9jGpkUE(ImageBitmap image, long j10, long j11, long j12, long j13, float f10, DrawStyle style, ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().mo1705drawImageRectHPBpro0(image, j10, j11, j12, j13, m2230configurePaintswdJneE$default(this, null, style, f10, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-AZ2fEMs  reason: not valid java name */
    public void mo2242drawImageAZ2fEMs(@NotNull ImageBitmap image, long j10, long j11, long j12, long j13, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10, int i11) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().mo1705drawImageRectHPBpro0(image, j10, j11, j12, j13, m2229configurePaintswdJneE(null, style, f10, colorFilter, i10, i11));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-gbVJVH8  reason: not valid java name */
    public void mo2243drawImagegbVJVH8(@NotNull ImageBitmap image, long j10, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().mo1704drawImaged4ec7I(image, j10, m2230configurePaintswdJneE$default(this, null, style, f10, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-1RTmtNc  reason: not valid java name */
    public void mo2244drawLine1RTmtNc(@NotNull Brush brush, long j10, long j11, float f10, int i10, @Nullable PathEffect pathEffect, float f11, @Nullable ColorFilter colorFilter, int i11) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        this.drawParams.getCanvas().mo1706drawLineWko1d7g(j10, j11, m2234configureStrokePaintho4zsrM$default(this, brush, f10, 4.0f, i10, StrokeJoin.Companion.m2157getMiterLxFBmk8(), pathEffect, f11, colorFilter, i11, 0, 512, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-NGM6Ib0  reason: not valid java name */
    public void mo2245drawLineNGM6Ib0(long j10, long j11, long j12, float f10, int i10, @Nullable PathEffect pathEffect, float f11, @Nullable ColorFilter colorFilter, int i11) {
        this.drawParams.getCanvas().mo1706drawLineWko1d7g(j11, j12, m2232configureStrokePaintQ_0CZUI$default(this, j10, f10, 4.0f, i10, StrokeJoin.Companion.m2157getMiterLxFBmk8(), pathEffect, f11, colorFilter, i11, 0, 512, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawOval-AsUm42w  reason: not valid java name */
    public void mo2246drawOvalAsUm42w(@NotNull Brush brush, long j10, long j11, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().drawOval(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), Offset.m1606getXimpl(j10) + Size.m1675getWidthimpl(j11), Offset.m1607getYimpl(j10) + Size.m1672getHeightimpl(j11), m2230configurePaintswdJneE$default(this, brush, style, f10, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawOval-n-J9OG0  reason: not valid java name */
    public void mo2247drawOvalnJ9OG0(long j10, long j11, long j12, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().drawOval(Offset.m1606getXimpl(j11), Offset.m1607getYimpl(j11), Offset.m1606getXimpl(j11) + Size.m1675getWidthimpl(j12), Offset.m1607getYimpl(j11) + Size.m1672getHeightimpl(j12), m2228configurePaint2qPWKa0$default(this, j10, style, f10, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-GBMwjPU  reason: not valid java name */
    public void mo2248drawPathGBMwjPU(@NotNull Path path, @NotNull Brush brush, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().drawPath(path, m2230configurePaintswdJneE$default(this, brush, style, f10, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-LG529CI  reason: not valid java name */
    public void mo2249drawPathLG529CI(@NotNull Path path, long j10, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().drawPath(path, m2228configurePaint2qPWKa0$default(this, j10, style, f10, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPoints-F8ZwMP8  reason: not valid java name */
    public void mo2250drawPointsF8ZwMP8(@NotNull List<Offset> points, int i10, long j10, float f10, int i11, @Nullable PathEffect pathEffect, float f11, @Nullable ColorFilter colorFilter, int i12) {
        Intrinsics.checkNotNullParameter(points, "points");
        this.drawParams.getCanvas().mo1707drawPointsO7TthRY(i10, points, m2232configureStrokePaintQ_0CZUI$default(this, j10, f10, 4.0f, i11, StrokeJoin.Companion.m2157getMiterLxFBmk8(), pathEffect, f11, colorFilter, i12, 0, 512, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPoints-Gsft0Ws  reason: not valid java name */
    public void mo2251drawPointsGsft0Ws(@NotNull List<Offset> points, int i10, @NotNull Brush brush, float f10, int i11, @Nullable PathEffect pathEffect, float f11, @Nullable ColorFilter colorFilter, int i12) {
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(brush, "brush");
        this.drawParams.getCanvas().mo1707drawPointsO7TthRY(i10, points, m2234configureStrokePaintho4zsrM$default(this, brush, f10, 4.0f, i11, StrokeJoin.Companion.m2157getMiterLxFBmk8(), pathEffect, f11, colorFilter, i12, 0, 512, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-AsUm42w  reason: not valid java name */
    public void mo2252drawRectAsUm42w(@NotNull Brush brush, long j10, long j11, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().drawRect(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), Offset.m1606getXimpl(j10) + Size.m1675getWidthimpl(j11), Offset.m1607getYimpl(j10) + Size.m1672getHeightimpl(j11), m2230configurePaintswdJneE$default(this, brush, style, f10, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-n-J9OG0  reason: not valid java name */
    public void mo2253drawRectnJ9OG0(long j10, long j11, long j12, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().drawRect(Offset.m1606getXimpl(j11), Offset.m1607getYimpl(j11), Offset.m1606getXimpl(j11) + Size.m1675getWidthimpl(j12), Offset.m1607getYimpl(j11) + Size.m1672getHeightimpl(j12), m2228configurePaint2qPWKa0$default(this, j10, style, f10, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-ZuiqVtQ  reason: not valid java name */
    public void mo2254drawRoundRectZuiqVtQ(@NotNull Brush brush, long j10, long j11, long j12, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().drawRoundRect(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), Offset.m1606getXimpl(j10) + Size.m1675getWidthimpl(j11), Offset.m1607getYimpl(j10) + Size.m1672getHeightimpl(j11), CornerRadius.m1581getXimpl(j12), CornerRadius.m1582getYimpl(j12), m2230configurePaintswdJneE$default(this, brush, style, f10, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-u-Aw5IA  reason: not valid java name */
    public void mo2255drawRoundRectuAw5IA(long j10, long j11, long j12, long j13, @NotNull DrawStyle style, float f10, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.drawParams.getCanvas().drawRoundRect(Offset.m1606getXimpl(j11), Offset.m1607getYimpl(j11), Offset.m1606getXimpl(j11) + Size.m1675getWidthimpl(j12), Offset.m1607getYimpl(j11) + Size.m1672getHeightimpl(j12), CornerRadius.m1581getXimpl(j13), CornerRadius.m1582getYimpl(j13), m2228configurePaint2qPWKa0$default(this, j10, style, f10, colorFilter, i10, 0, 32, null));
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.drawParams.getDensity().getDensity();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    @NotNull
    public DrawContext getDrawContext() {
        return this.drawContext;
    }

    @NotNull
    public final DrawParams getDrawParams() {
        return this.drawParams;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.drawParams.getDensity().getFontScale();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    @NotNull
    public LayoutDirection getLayoutDirection() {
        return this.drawParams.getLayoutDirection();
    }

    public static /* synthetic */ void getDrawParams$annotations() {
    }
}
