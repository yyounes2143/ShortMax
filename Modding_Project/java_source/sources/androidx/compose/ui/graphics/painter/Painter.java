package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Painter.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class Painter {
    @Nullable
    private ColorFilter colorFilter;
    @Nullable
    private Paint layerPaint;
    private boolean useLayer;
    private float alpha = 1.0f;
    @NotNull
    private LayoutDirection layoutDirection = LayoutDirection.Ltr;
    @NotNull
    private final Function1<DrawScope, Unit> drawLambda = new Function1<DrawScope, Unit>() { // from class: androidx.compose.ui.graphics.painter.Painter$drawLambda$1
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
            invoke2(drawScope);
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull DrawScope drawScope) {
            Intrinsics.checkNotNullParameter(drawScope, "$this$null");
            Painter.this.onDraw(drawScope);
        }
    };

    private final void configureAlpha(float f10) {
        if (this.alpha != f10) {
            if (!applyAlpha(f10)) {
                if (f10 == 1.0f) {
                    Paint paint = this.layerPaint;
                    if (paint != null) {
                        paint.setAlpha(f10);
                    }
                    this.useLayer = false;
                } else {
                    obtainPaint().setAlpha(f10);
                    this.useLayer = true;
                }
            }
            this.alpha = f10;
        }
    }

    private final void configureColorFilter(ColorFilter colorFilter) {
        if (!Intrinsics.areEqual(this.colorFilter, colorFilter)) {
            if (!applyColorFilter(colorFilter)) {
                if (colorFilter == null) {
                    Paint paint = this.layerPaint;
                    if (paint != null) {
                        paint.setColorFilter(null);
                    }
                    this.useLayer = false;
                } else {
                    obtainPaint().setColorFilter(colorFilter);
                    this.useLayer = true;
                }
            }
            this.colorFilter = colorFilter;
        }
    }

    private final void configureLayoutDirection(LayoutDirection layoutDirection) {
        if (this.layoutDirection != layoutDirection) {
            applyLayoutDirection(layoutDirection);
            this.layoutDirection = layoutDirection;
        }
    }

    /* renamed from: draw-x_KDEd0$default  reason: not valid java name */
    public static /* synthetic */ void m2410drawx_KDEd0$default(Painter painter, DrawScope drawScope, long j10, float f10, ColorFilter colorFilter, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                f10 = 1.0f;
            }
            float f11 = f10;
            if ((i10 & 4) != 0) {
                colorFilter = null;
            }
            painter.m2411drawx_KDEd0(drawScope, j10, f11, colorFilter);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: draw-x_KDEd0");
    }

    private final Paint obtainPaint() {
        Paint paint = this.layerPaint;
        if (paint == null) {
            Paint Paint = AndroidPaint_androidKt.Paint();
            this.layerPaint = Paint;
            return Paint;
        }
        return paint;
    }

    protected boolean applyAlpha(float f10) {
        return false;
    }

    protected boolean applyColorFilter(@Nullable ColorFilter colorFilter) {
        return false;
    }

    protected boolean applyLayoutDirection(@NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        return false;
    }

    /* renamed from: draw-x_KDEd0  reason: not valid java name */
    public final void m2411drawx_KDEd0(@NotNull DrawScope draw, long j10, float f10, @Nullable ColorFilter colorFilter) {
        Intrinsics.checkNotNullParameter(draw, "$this$draw");
        configureAlpha(f10);
        configureColorFilter(colorFilter);
        configureLayoutDirection(draw.getLayoutDirection());
        float m1675getWidthimpl = Size.m1675getWidthimpl(draw.mo2336getSizeNHjbRc()) - Size.m1675getWidthimpl(j10);
        float m1672getHeightimpl = Size.m1672getHeightimpl(draw.mo2336getSizeNHjbRc()) - Size.m1672getHeightimpl(j10);
        draw.getDrawContext().getTransform().inset(0.0f, 0.0f, m1675getWidthimpl, m1672getHeightimpl);
        if (f10 > 0.0f && Size.m1675getWidthimpl(j10) > 0.0f && Size.m1672getHeightimpl(j10) > 0.0f) {
            if (this.useLayer) {
                Rect m1646Recttz77jQw = RectKt.m1646Recttz77jQw(Offset.Companion.m1622getZeroF1C5BW0(), SizeKt.Size(Size.m1675getWidthimpl(j10), Size.m1672getHeightimpl(j10)));
                Canvas canvas = draw.getDrawContext().getCanvas();
                try {
                    canvas.saveLayer(m1646Recttz77jQw, obtainPaint());
                    onDraw(draw);
                } finally {
                    canvas.restore();
                }
            } else {
                onDraw(draw);
            }
        }
        draw.getDrawContext().getTransform().inset(-0.0f, -0.0f, -m1675getWidthimpl, -m1672getHeightimpl);
    }

    /* renamed from: getIntrinsicSize-NH-jbRc */
    public abstract long mo2405getIntrinsicSizeNHjbRc();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void onDraw(@NotNull DrawScope drawScope);
}
