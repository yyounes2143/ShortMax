package androidx.compose.ui.node;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LayoutNodeDrawScope.kt */
@Metadata
/* loaded from: classes.dex */
public final class LayoutNodeDrawScope implements DrawScope, ContentDrawScope {
    @NotNull
    private final CanvasDrawScope canvasDrawScope;
    @Nullable
    private DrawEntity drawEntity;

    public LayoutNodeDrawScope() {
        this(null, 1, null);
    }

    /* renamed from: draw-eZhPAX0$ui_release */
    public final void m3470draweZhPAX0$ui_release(@NotNull Canvas canvas, long j10, @NotNull LayoutNodeWrapper layoutNodeWrapper, @NotNull DrawEntity drawEntity, @NotNull Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(layoutNodeWrapper, "layoutNodeWrapper");
        Intrinsics.checkNotNullParameter(drawEntity, "drawEntity");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawEntity drawEntity2 = this.drawEntity;
        this.drawEntity = drawEntity;
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        MeasureScope measureScope = layoutNodeWrapper.getMeasureScope();
        LayoutDirection layoutDirection = layoutNodeWrapper.getMeasureScope().getLayoutDirection();
        CanvasDrawScope.DrawParams drawParams = canvasDrawScope.getDrawParams();
        Density component1 = drawParams.component1();
        LayoutDirection component2 = drawParams.component2();
        Canvas component3 = drawParams.component3();
        long m2257component4NHjbRc = drawParams.m2257component4NHjbRc();
        CanvasDrawScope.DrawParams drawParams2 = canvasDrawScope.getDrawParams();
        drawParams2.setDensity(measureScope);
        drawParams2.setLayoutDirection(layoutDirection);
        drawParams2.setCanvas(canvas);
        drawParams2.m2260setSizeuvyYCjk(j10);
        canvas.save();
        block.invoke(canvasDrawScope);
        canvas.restore();
        CanvasDrawScope.DrawParams drawParams3 = canvasDrawScope.getDrawParams();
        drawParams3.setDensity(component1);
        drawParams3.setLayoutDirection(component2);
        drawParams3.setCanvas(component3);
        drawParams3.m2260setSizeuvyYCjk(m2257component4NHjbRc);
        this.drawEntity = drawEntity2;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawArc-illE91I */
    public void mo2237drawArcillE91I(@NotNull Brush brush, float f10, float f11, boolean z10, long j10, long j11, float f12, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2237drawArcillE91I(brush, f10, f11, z10, j10, j11, f12, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawArc-yD3GUKo */
    public void mo2238drawArcyD3GUKo(long j10, float f10, float f11, boolean z10, long j11, long j12, float f12, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2238drawArcyD3GUKo(j10, f10, f11, z10, j11, j12, f12, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawCircle-V9BoPsw */
    public void mo2239drawCircleV9BoPsw(@NotNull Brush brush, float f10, long j10, float f11, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2239drawCircleV9BoPsw(brush, f10, j10, f11, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawCircle-VaOC9Bg */
    public void mo2240drawCircleVaOC9Bg(long j10, float f10, long j11, float f11, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2240drawCircleVaOC9Bg(j10, f10, j11, f11, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.ContentDrawScope
    public void drawContent() {
        Canvas canvas = getDrawContext().getCanvas();
        DrawEntity drawEntity = this.drawEntity;
        Intrinsics.checkNotNull(drawEntity);
        DrawEntity next = drawEntity.getNext();
        if (next != null) {
            next.draw(canvas);
        } else {
            drawEntity.getLayoutNodeWrapper().performDraw(canvas);
        }
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    @c
    /* renamed from: drawImage-9jGpkUE */
    public /* synthetic */ void mo2241drawImage9jGpkUE(ImageBitmap image, long j10, long j11, long j12, long j13, float f10, DrawStyle style, ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2241drawImage9jGpkUE(image, j10, j11, j12, j13, f10, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-AZ2fEMs */
    public void mo2242drawImageAZ2fEMs(@NotNull ImageBitmap image, long j10, long j11, long j12, long j13, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10, int i11) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2242drawImageAZ2fEMs(image, j10, j11, j12, j13, f10, style, colorFilter, i10, i11);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-gbVJVH8 */
    public void mo2243drawImagegbVJVH8(@NotNull ImageBitmap image, long j10, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2243drawImagegbVJVH8(image, j10, f10, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-1RTmtNc */
    public void mo2244drawLine1RTmtNc(@NotNull Brush brush, long j10, long j11, float f10, int i10, @Nullable PathEffect pathEffect, float f11, @Nullable ColorFilter colorFilter, int i11) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        this.canvasDrawScope.mo2244drawLine1RTmtNc(brush, j10, j11, f10, i10, pathEffect, f11, colorFilter, i11);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-NGM6Ib0 */
    public void mo2245drawLineNGM6Ib0(long j10, long j11, long j12, float f10, int i10, @Nullable PathEffect pathEffect, float f11, @Nullable ColorFilter colorFilter, int i11) {
        this.canvasDrawScope.mo2245drawLineNGM6Ib0(j10, j11, j12, f10, i10, pathEffect, f11, colorFilter, i11);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawOval-AsUm42w */
    public void mo2246drawOvalAsUm42w(@NotNull Brush brush, long j10, long j11, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2246drawOvalAsUm42w(brush, j10, j11, f10, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawOval-n-J9OG0 */
    public void mo2247drawOvalnJ9OG0(long j10, long j11, long j12, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2247drawOvalnJ9OG0(j10, j11, j12, f10, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-GBMwjPU */
    public void mo2248drawPathGBMwjPU(@NotNull Path path, @NotNull Brush brush, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2248drawPathGBMwjPU(path, brush, f10, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-LG529CI */
    public void mo2249drawPathLG529CI(@NotNull Path path, long j10, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2249drawPathLG529CI(path, j10, f10, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPoints-F8ZwMP8 */
    public void mo2250drawPointsF8ZwMP8(@NotNull List<Offset> points, int i10, long j10, float f10, int i11, @Nullable PathEffect pathEffect, float f11, @Nullable ColorFilter colorFilter, int i12) {
        Intrinsics.checkNotNullParameter(points, "points");
        this.canvasDrawScope.mo2250drawPointsF8ZwMP8(points, i10, j10, f10, i11, pathEffect, f11, colorFilter, i12);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPoints-Gsft0Ws */
    public void mo2251drawPointsGsft0Ws(@NotNull List<Offset> points, int i10, @NotNull Brush brush, float f10, int i11, @Nullable PathEffect pathEffect, float f11, @Nullable ColorFilter colorFilter, int i12) {
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(brush, "brush");
        this.canvasDrawScope.mo2251drawPointsGsft0Ws(points, i10, brush, f10, i11, pathEffect, f11, colorFilter, i12);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-AsUm42w */
    public void mo2252drawRectAsUm42w(@NotNull Brush brush, long j10, long j11, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2252drawRectAsUm42w(brush, j10, j11, f10, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-n-J9OG0 */
    public void mo2253drawRectnJ9OG0(long j10, long j11, long j12, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2253drawRectnJ9OG0(j10, j11, j12, f10, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-ZuiqVtQ */
    public void mo2254drawRoundRectZuiqVtQ(@NotNull Brush brush, long j10, long j11, long j12, float f10, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2254drawRoundRectZuiqVtQ(brush, j10, j11, j12, f10, style, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-u-Aw5IA */
    public void mo2255drawRoundRectuAw5IA(long j10, long j11, long j12, long j13, @NotNull DrawStyle style, float f10, @Nullable ColorFilter colorFilter, int i10) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo2255drawRoundRectuAw5IA(j10, j11, j12, j13, style, f10, colorFilter, i10);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getCenter-F1C5BW0 */
    public long mo2335getCenterF1C5BW0() {
        return this.canvasDrawScope.mo2335getCenterF1C5BW0();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.canvasDrawScope.getDensity();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    @NotNull
    public DrawContext getDrawContext() {
        return this.canvasDrawScope.getDrawContext();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.canvasDrawScope.getFontScale();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    @NotNull
    public LayoutDirection getLayoutDirection() {
        return this.canvasDrawScope.getLayoutDirection();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getSize-NH-jbRc */
    public long mo2336getSizeNHjbRc() {
        return this.canvasDrawScope.mo2336getSizeNHjbRc();
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: roundToPx--R2X_6o */
    public int mo335roundToPxR2X_6o(long j10) {
        return this.canvasDrawScope.mo335roundToPxR2X_6o(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: roundToPx-0680j_4 */
    public int mo336roundToPx0680j_4(float f10) {
        return this.canvasDrawScope.mo336roundToPx0680j_4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-GaN1DYA */
    public float mo337toDpGaN1DYA(long j10) {
        return this.canvasDrawScope.mo337toDpGaN1DYA(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-u2uoSUM */
    public float mo338toDpu2uoSUM(float f10) {
        return this.canvasDrawScope.mo338toDpu2uoSUM(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDpSize-k-rfVVM */
    public long mo340toDpSizekrfVVM(long j10) {
        return this.canvasDrawScope.mo340toDpSizekrfVVM(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toPx--R2X_6o */
    public float mo341toPxR2X_6o(long j10) {
        return this.canvasDrawScope.mo341toPxR2X_6o(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toPx-0680j_4 */
    public float mo342toPx0680j_4(float f10) {
        return this.canvasDrawScope.mo342toPx0680j_4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    @NotNull
    public Rect toRect(@NotNull DpRect dpRect) {
        Intrinsics.checkNotNullParameter(dpRect, "<this>");
        return this.canvasDrawScope.toRect(dpRect);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSize-XkaWNTQ */
    public long mo343toSizeXkaWNTQ(long j10) {
        return this.canvasDrawScope.mo343toSizeXkaWNTQ(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-0xMU5do */
    public long mo344toSp0xMU5do(float f10) {
        return this.canvasDrawScope.mo344toSp0xMU5do(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-kPz2Gy4 */
    public long mo345toSpkPz2Gy4(float f10) {
        return this.canvasDrawScope.mo345toSpkPz2Gy4(f10);
    }

    public LayoutNodeDrawScope(@NotNull CanvasDrawScope canvasDrawScope) {
        Intrinsics.checkNotNullParameter(canvasDrawScope, "canvasDrawScope");
        this.canvasDrawScope = canvasDrawScope;
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-u2uoSUM */
    public float mo339toDpu2uoSUM(int i10) {
        return this.canvasDrawScope.mo339toDpu2uoSUM(i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-kPz2Gy4 */
    public long mo346toSpkPz2Gy4(int i10) {
        return this.canvasDrawScope.mo346toSpkPz2Gy4(i10);
    }

    public /* synthetic */ LayoutNodeDrawScope(CanvasDrawScope canvasDrawScope, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new CanvasDrawScope() : canvasDrawScope);
    }
}
