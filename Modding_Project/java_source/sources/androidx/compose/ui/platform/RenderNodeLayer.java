package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.os.Build;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RenderEffect;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.layout.GraphicLayerInfo;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RenderNodeLayer.android.kt */
@RequiresApi(23)
@Metadata
/* loaded from: classes.dex */
public final class RenderNodeLayer implements OwnedLayer, GraphicLayerInfo {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Function2<DeviceRenderNode, Matrix, Unit> getMatrix = new Function2<DeviceRenderNode, Matrix, Unit>() { // from class: androidx.compose.ui.platform.RenderNodeLayer$Companion$getMatrix$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(DeviceRenderNode deviceRenderNode, Matrix matrix) {
            invoke2(deviceRenderNode, matrix);
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull DeviceRenderNode rn2, @NotNull Matrix matrix) {
            Intrinsics.checkNotNullParameter(rn2, "rn");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            rn2.getMatrix(matrix);
        }
    };
    @NotNull
    private final CanvasHolder canvasHolder;
    @Nullable
    private Function1<? super Canvas, Unit> drawBlock;
    private boolean drawnWithZ;
    @Nullable
    private Function0<Unit> invalidateParentLayer;
    private boolean isDestroyed;
    private boolean isDirty;
    @NotNull
    private final LayerMatrixCache<DeviceRenderNode> matrixCache;
    @NotNull
    private final OutlineResolver outlineResolver;
    @NotNull
    private final AndroidComposeView ownerView;
    @NotNull
    private final DeviceRenderNode renderNode;
    @Nullable
    private Paint softwareLayerPaint;
    private long transformOrigin;

    /* compiled from: RenderNodeLayer.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: RenderNodeLayer.android.kt */
    @RequiresApi(29)
    @Metadata
    /* loaded from: classes.dex */
    private static final class UniqueDrawingIdApi29 {
        @NotNull
        public static final UniqueDrawingIdApi29 INSTANCE = new UniqueDrawingIdApi29();

        private UniqueDrawingIdApi29() {
        }

        @DoNotInline
        public static final long getUniqueDrawingId(@NotNull View view) {
            long uniqueDrawingId;
            Intrinsics.checkNotNullParameter(view, "view");
            uniqueDrawingId = view.getUniqueDrawingId();
            return uniqueDrawingId;
        }
    }

    public RenderNodeLayer(@NotNull AndroidComposeView ownerView, @NotNull Function1<? super Canvas, Unit> drawBlock, @NotNull Function0<Unit> invalidateParentLayer) {
        DeviceRenderNode renderNodeApi23;
        Intrinsics.checkNotNullParameter(ownerView, "ownerView");
        Intrinsics.checkNotNullParameter(drawBlock, "drawBlock");
        Intrinsics.checkNotNullParameter(invalidateParentLayer, "invalidateParentLayer");
        this.ownerView = ownerView;
        this.drawBlock = drawBlock;
        this.invalidateParentLayer = invalidateParentLayer;
        this.outlineResolver = new OutlineResolver(ownerView.getDensity());
        this.matrixCache = new LayerMatrixCache<>(getMatrix);
        this.canvasHolder = new CanvasHolder();
        this.transformOrigin = TransformOrigin.Companion.m2184getCenterSzJe1aQ();
        if (Build.VERSION.SDK_INT >= 29) {
            renderNodeApi23 = new RenderNodeApi29(ownerView);
        } else {
            renderNodeApi23 = new RenderNodeApi23(ownerView);
        }
        renderNodeApi23.setHasOverlappingRendering(true);
        this.renderNode = renderNodeApi23;
    }

    private final void clipRenderNode(Canvas canvas) {
        if (this.renderNode.getClipToOutline() || this.renderNode.getClipToBounds()) {
            this.outlineResolver.clipToOutline(canvas);
        }
    }

    private final void setDirty(boolean z10) {
        if (z10 != this.isDirty) {
            this.isDirty = z10;
            this.ownerView.notifyLayerIsDirty$ui_release(this, z10);
        }
    }

    private final void triggerRepaint() {
        if (Build.VERSION.SDK_INT >= 26) {
            WrapperRenderNodeLayerHelperMethods.INSTANCE.onDescendantInvalidated(this.ownerView);
        } else {
            this.ownerView.invalidate();
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void destroy() {
        if (this.renderNode.getHasDisplayList()) {
            this.renderNode.discardDisplayList();
        }
        this.drawBlock = null;
        this.invalidateParentLayer = null;
        this.isDestroyed = true;
        setDirty(false);
        this.ownerView.requestClearInvalidObservations();
        this.ownerView.recycle$ui_release(this);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void drawLayer(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        android.graphics.Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvas);
        boolean z10 = false;
        if (nativeCanvas.isHardwareAccelerated()) {
            updateDisplayList();
            if (this.renderNode.getElevation() > 0.0f) {
                z10 = true;
            }
            this.drawnWithZ = z10;
            if (z10) {
                canvas.enableZ();
            }
            this.renderNode.drawInto(nativeCanvas);
            if (this.drawnWithZ) {
                canvas.disableZ();
                return;
            }
            return;
        }
        float left = this.renderNode.getLeft();
        float top = this.renderNode.getTop();
        float right = this.renderNode.getRight();
        float bottom = this.renderNode.getBottom();
        if (this.renderNode.getAlpha() < 1.0f) {
            Paint paint = this.softwareLayerPaint;
            if (paint == null) {
                paint = AndroidPaint_androidKt.Paint();
                this.softwareLayerPaint = paint;
            }
            paint.setAlpha(this.renderNode.getAlpha());
            nativeCanvas.saveLayer(left, top, right, bottom, paint.asFrameworkPaint());
        } else {
            canvas.save();
        }
        canvas.translate(left, top);
        canvas.mo1702concat58bKbWc(this.matrixCache.m3550calculateMatrixGrdbGEg(this.renderNode));
        clipRenderNode(canvas);
        Function1<? super Canvas, Unit> function1 = this.drawBlock;
        if (function1 != null) {
            function1.invoke(canvas);
        }
        canvas.restore();
        setDirty(false);
    }

    @Override // androidx.compose.ui.layout.GraphicLayerInfo
    public long getLayerId() {
        return this.renderNode.getUniqueId();
    }

    @NotNull
    public final AndroidComposeView getOwnerView() {
        return this.ownerView;
    }

    @Override // androidx.compose.ui.layout.GraphicLayerInfo
    public long getOwnerViewId() {
        if (Build.VERSION.SDK_INT >= 29) {
            return UniqueDrawingIdApi29.getUniqueDrawingId(this.ownerView);
        }
        return -1L;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void invalidate() {
        if (!this.isDirty && !this.isDestroyed) {
            this.ownerView.invalidate();
            setDirty(true);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* renamed from: isInLayer-k-4lQ0M */
    public boolean mo3502isInLayerk4lQ0M(long j10) {
        float m1606getXimpl = Offset.m1606getXimpl(j10);
        float m1607getYimpl = Offset.m1607getYimpl(j10);
        if (this.renderNode.getClipToBounds()) {
            if (0.0f <= m1606getXimpl && m1606getXimpl < this.renderNode.getWidth() && 0.0f <= m1607getYimpl && m1607getYimpl < this.renderNode.getHeight()) {
                return true;
            }
            return false;
        } else if (!this.renderNode.getClipToOutline()) {
            return true;
        } else {
            return this.outlineResolver.m3572isInOutlinek4lQ0M(j10);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void mapBounds(@NotNull MutableRect rect, boolean z10) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        if (z10) {
            float[] m3549calculateInverseMatrixbWbORWo = this.matrixCache.m3549calculateInverseMatrixbWbORWo(this.renderNode);
            if (m3549calculateInverseMatrixbWbORWo == null) {
                rect.set(0.0f, 0.0f, 0.0f, 0.0f);
                return;
            } else {
                androidx.compose.ui.graphics.Matrix.m2044mapimpl(m3549calculateInverseMatrixbWbORWo, rect);
                return;
            }
        }
        androidx.compose.ui.graphics.Matrix.m2044mapimpl(this.matrixCache.m3550calculateMatrixGrdbGEg(this.renderNode), rect);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* renamed from: mapOffset-8S9VItk */
    public long mo3503mapOffset8S9VItk(long j10, boolean z10) {
        if (z10) {
            float[] m3549calculateInverseMatrixbWbORWo = this.matrixCache.m3549calculateInverseMatrixbWbORWo(this.renderNode);
            if (m3549calculateInverseMatrixbWbORWo != null) {
                return androidx.compose.ui.graphics.Matrix.m2042mapMKHz9U(m3549calculateInverseMatrixbWbORWo, j10);
            }
            return Offset.Companion.m1620getInfiniteF1C5BW0();
        }
        return androidx.compose.ui.graphics.Matrix.m2042mapMKHz9U(this.matrixCache.m3550calculateMatrixGrdbGEg(this.renderNode), j10);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* renamed from: move--gyyYBs */
    public void mo3504movegyyYBs(long j10) {
        int left = this.renderNode.getLeft();
        int top = this.renderNode.getTop();
        int m4167getXimpl = IntOffset.m4167getXimpl(j10);
        int m4168getYimpl = IntOffset.m4168getYimpl(j10);
        if (left != m4167getXimpl || top != m4168getYimpl) {
            this.renderNode.offsetLeftAndRight(m4167getXimpl - left);
            this.renderNode.offsetTopAndBottom(m4168getYimpl - top);
            triggerRepaint();
            this.matrixCache.invalidate();
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* renamed from: resize-ozmzZPI */
    public void mo3505resizeozmzZPI(long j10) {
        int m4209getWidthimpl = IntSize.m4209getWidthimpl(j10);
        int m4208getHeightimpl = IntSize.m4208getHeightimpl(j10);
        float f10 = m4209getWidthimpl;
        this.renderNode.setPivotX(TransformOrigin.m2179getPivotFractionXimpl(this.transformOrigin) * f10);
        float f11 = m4208getHeightimpl;
        this.renderNode.setPivotY(TransformOrigin.m2180getPivotFractionYimpl(this.transformOrigin) * f11);
        DeviceRenderNode deviceRenderNode = this.renderNode;
        if (deviceRenderNode.setPosition(deviceRenderNode.getLeft(), this.renderNode.getTop(), this.renderNode.getLeft() + m4209getWidthimpl, this.renderNode.getTop() + m4208getHeightimpl)) {
            this.outlineResolver.m3573updateuvyYCjk(SizeKt.Size(f10, f11));
            this.renderNode.setOutline(this.outlineResolver.getOutline());
            invalidate();
            this.matrixCache.invalidate();
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void reuseLayer(@NotNull Function1<? super Canvas, Unit> drawBlock, @NotNull Function0<Unit> invalidateParentLayer) {
        Intrinsics.checkNotNullParameter(drawBlock, "drawBlock");
        Intrinsics.checkNotNullParameter(invalidateParentLayer, "invalidateParentLayer");
        setDirty(false);
        this.isDestroyed = false;
        this.drawnWithZ = false;
        this.transformOrigin = TransformOrigin.Companion.m2184getCenterSzJe1aQ();
        this.drawBlock = drawBlock;
        this.invalidateParentLayer = invalidateParentLayer;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void updateDisplayList() {
        Path path;
        if (this.isDirty || !this.renderNode.getHasDisplayList()) {
            setDirty(false);
            if (this.renderNode.getClipToOutline() && !this.outlineResolver.getOutlineClipSupported()) {
                path = this.outlineResolver.getClipPath();
            } else {
                path = null;
            }
            Function1<? super Canvas, Unit> function1 = this.drawBlock;
            if (function1 != null) {
                this.renderNode.record(this.canvasHolder, path, function1);
            }
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* renamed from: updateLayerProperties-NHXXZp8 */
    public void mo3506updateLayerPropertiesNHXXZp8(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, long j10, @NotNull Shape shape, boolean z10, @Nullable RenderEffect renderEffect, long j11, long j12, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
        boolean z11;
        boolean z12;
        boolean z13;
        Function0<Unit> function0;
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(density, "density");
        this.transformOrigin = j10;
        boolean z14 = false;
        if (this.renderNode.getClipToOutline() && !this.outlineResolver.getOutlineClipSupported()) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.renderNode.setScaleX(f10);
        this.renderNode.setScaleY(f11);
        this.renderNode.setAlpha(f12);
        this.renderNode.setTranslationX(f13);
        this.renderNode.setTranslationY(f14);
        this.renderNode.setElevation(f15);
        this.renderNode.setAmbientShadowColor(ColorKt.m1897toArgb8_81llA(j11));
        this.renderNode.setSpotShadowColor(ColorKt.m1897toArgb8_81llA(j12));
        this.renderNode.setRotationZ(f18);
        this.renderNode.setRotationX(f16);
        this.renderNode.setRotationY(f17);
        this.renderNode.setCameraDistance(f19);
        this.renderNode.setPivotX(TransformOrigin.m2179getPivotFractionXimpl(j10) * this.renderNode.getWidth());
        this.renderNode.setPivotY(TransformOrigin.m2180getPivotFractionYimpl(j10) * this.renderNode.getHeight());
        DeviceRenderNode deviceRenderNode = this.renderNode;
        if (z10 && shape != RectangleShapeKt.getRectangleShape()) {
            z12 = true;
        } else {
            z12 = false;
        }
        deviceRenderNode.setClipToOutline(z12);
        DeviceRenderNode deviceRenderNode2 = this.renderNode;
        if (z10 && shape == RectangleShapeKt.getRectangleShape()) {
            z13 = true;
        } else {
            z13 = false;
        }
        deviceRenderNode2.setClipToBounds(z13);
        this.renderNode.setRenderEffect(renderEffect);
        boolean update = this.outlineResolver.update(shape, this.renderNode.getAlpha(), this.renderNode.getClipToOutline(), this.renderNode.getElevation(), layoutDirection, density);
        this.renderNode.setOutline(this.outlineResolver.getOutline());
        if (this.renderNode.getClipToOutline() && !this.outlineResolver.getOutlineClipSupported()) {
            z14 = true;
        }
        if (z11 == z14 && (!z14 || !update)) {
            triggerRepaint();
        } else {
            invalidate();
        }
        if (!this.drawnWithZ && this.renderNode.getElevation() > 0.0f && (function0 = this.invalidateParentLayer) != null) {
            function0.invoke();
        }
        this.matrixCache.invalidate();
    }
}
