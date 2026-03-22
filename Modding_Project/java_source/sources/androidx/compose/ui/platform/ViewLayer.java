package androidx.compose.ui.platform;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.ColorKt;
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
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewLayer.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class ViewLayer extends View implements OwnedLayer, GraphicLayerInfo {
    private static boolean hasRetrievedMethod;
    @Nullable
    private static Field recreateDisplayList;
    private static boolean shouldUseDispatchDraw;
    @Nullable
    private static Method updateDisplayListIfDirtyMethod;
    @NotNull
    private final CanvasHolder canvasHolder;
    @Nullable
    private Rect clipBoundsCache;
    private boolean clipToBounds;
    @NotNull
    private final DrawChildContainer container;
    @Nullable
    private Function1<? super Canvas, Unit> drawBlock;
    private boolean drawnWithZ;
    @Nullable
    private Function0<Unit> invalidateParentLayer;
    private boolean isInvalidated;
    private long mTransformOrigin;
    @NotNull
    private final LayerMatrixCache<View> matrixCache;
    @NotNull
    private final OutlineResolver outlineResolver;
    @NotNull
    private final AndroidComposeView ownerView;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Function2<View, Matrix, Unit> getMatrix = new Function2<View, Matrix, Unit>() { // from class: androidx.compose.ui.platform.ViewLayer$Companion$getMatrix$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(View view, Matrix matrix) {
            invoke2(view, matrix);
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull View view, @NotNull Matrix matrix) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(matrix, "matrix");
            matrix.set(view.getMatrix());
        }
    };
    @NotNull
    private static final ViewOutlineProvider OutlineProvider = new ViewOutlineProvider() { // from class: androidx.compose.ui.platform.ViewLayer$Companion$OutlineProvider$1
        @Override // android.view.ViewOutlineProvider
        public void getOutline(@NotNull View view, @NotNull Outline outline) {
            OutlineResolver outlineResolver;
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(outline, "outline");
            outlineResolver = ((ViewLayer) view).outlineResolver;
            Outline outline2 = outlineResolver.getOutline();
            Intrinsics.checkNotNull(outline2);
            outline.set(outline2);
        }
    };

    /* compiled from: ViewLayer.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean getHasRetrievedMethod() {
            return ViewLayer.hasRetrievedMethod;
        }

        @NotNull
        public final ViewOutlineProvider getOutlineProvider() {
            return ViewLayer.OutlineProvider;
        }

        public final boolean getShouldUseDispatchDraw() {
            return ViewLayer.shouldUseDispatchDraw;
        }

        public final void setShouldUseDispatchDraw$ui_release(boolean z10) {
            ViewLayer.shouldUseDispatchDraw = z10;
        }

        @SuppressLint({"BanUncheckedReflection"})
        public final void updateDisplayList(@NotNull View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            try {
                if (!getHasRetrievedMethod()) {
                    ViewLayer.hasRetrievedMethod = true;
                    if (Build.VERSION.SDK_INT < 28) {
                        ViewLayer.updateDisplayListIfDirtyMethod = View.class.getDeclaredMethod("updateDisplayListIfDirty", new Class[0]);
                        ViewLayer.recreateDisplayList = View.class.getDeclaredField("mRecreateDisplayList");
                    } else {
                        ViewLayer.updateDisplayListIfDirtyMethod = (Method) Class.class.getDeclaredMethod("getDeclaredMethod", String.class, new Class[0].getClass()).invoke(View.class, "updateDisplayListIfDirty", new Class[0]);
                        ViewLayer.recreateDisplayList = (Field) Class.class.getDeclaredMethod("getDeclaredField", String.class).invoke(View.class, "mRecreateDisplayList");
                    }
                    Method method = ViewLayer.updateDisplayListIfDirtyMethod;
                    if (method != null) {
                        method.setAccessible(true);
                    }
                    Field field = ViewLayer.recreateDisplayList;
                    if (field != null) {
                        field.setAccessible(true);
                    }
                }
                Field field2 = ViewLayer.recreateDisplayList;
                if (field2 != null) {
                    field2.setBoolean(view, true);
                }
                Method method2 = ViewLayer.updateDisplayListIfDirtyMethod;
                if (method2 != null) {
                    method2.invoke(view, new Object[0]);
                }
            } catch (Throwable unused) {
                setShouldUseDispatchDraw$ui_release(true);
            }
        }

        private Companion() {
        }
    }

    /* compiled from: ViewLayer.android.kt */
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewLayer(@NotNull AndroidComposeView ownerView, @NotNull DrawChildContainer container, @NotNull Function1<? super Canvas, Unit> drawBlock, @NotNull Function0<Unit> invalidateParentLayer) {
        super(ownerView.getContext());
        Intrinsics.checkNotNullParameter(ownerView, "ownerView");
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(drawBlock, "drawBlock");
        Intrinsics.checkNotNullParameter(invalidateParentLayer, "invalidateParentLayer");
        this.ownerView = ownerView;
        this.container = container;
        this.drawBlock = drawBlock;
        this.invalidateParentLayer = invalidateParentLayer;
        this.outlineResolver = new OutlineResolver(ownerView.getDensity());
        this.canvasHolder = new CanvasHolder();
        this.matrixCache = new LayerMatrixCache<>(getMatrix);
        this.mTransformOrigin = TransformOrigin.Companion.m2184getCenterSzJe1aQ();
        setWillNotDraw(false);
        setId(View.generateViewId());
        container.addView(this);
    }

    private final Path getManualClipPath() {
        if (getClipToOutline() && !this.outlineResolver.getOutlineClipSupported()) {
            return this.outlineResolver.getClipPath();
        }
        return null;
    }

    private final void resetClipBounds() {
        Rect rect;
        if (this.clipToBounds) {
            Rect rect2 = this.clipBoundsCache;
            if (rect2 == null) {
                this.clipBoundsCache = new Rect(0, 0, getWidth(), getHeight());
            } else {
                Intrinsics.checkNotNull(rect2);
                rect2.set(0, 0, getWidth(), getHeight());
            }
            rect = this.clipBoundsCache;
        } else {
            rect = null;
        }
        setClipBounds(rect);
    }

    private final void setInvalidated(boolean z10) {
        if (z10 != this.isInvalidated) {
            this.isInvalidated = z10;
            this.ownerView.notifyLayerIsDirty$ui_release(this, z10);
        }
    }

    private final void updateOutlineResolver() {
        ViewOutlineProvider viewOutlineProvider;
        if (this.outlineResolver.getOutline() != null) {
            viewOutlineProvider = OutlineProvider;
        } else {
            viewOutlineProvider = null;
        }
        setOutlineProvider(viewOutlineProvider);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void destroy() {
        setInvalidated(false);
        this.ownerView.requestClearInvalidObservations();
        this.drawBlock = null;
        this.invalidateParentLayer = null;
        this.ownerView.recycle$ui_release(this);
        this.container.removeViewInLayout(this);
    }

    @Override // android.view.View
    protected void dispatchDraw(@NotNull android.graphics.Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        boolean z10 = false;
        setInvalidated(false);
        CanvasHolder canvasHolder = this.canvasHolder;
        android.graphics.Canvas internalCanvas = canvasHolder.getAndroidCanvas().getInternalCanvas();
        canvasHolder.getAndroidCanvas().setInternalCanvas(canvas);
        AndroidCanvas androidCanvas = canvasHolder.getAndroidCanvas();
        if (getManualClipPath() != null || !canvas.isHardwareAccelerated()) {
            androidCanvas.save();
            this.outlineResolver.clipToOutline(androidCanvas);
            z10 = true;
        }
        Function1<? super Canvas, Unit> function1 = this.drawBlock;
        if (function1 != null) {
            function1.invoke(androidCanvas);
        }
        if (z10) {
            androidCanvas.restore();
        }
        canvasHolder.getAndroidCanvas().setInternalCanvas(internalCanvas);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void drawLayer(@NotNull Canvas canvas) {
        boolean z10;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (getElevation() > 0.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.drawnWithZ = z10;
        if (z10) {
            canvas.enableZ();
        }
        this.container.drawChild$ui_release(canvas, this, getDrawingTime());
        if (this.drawnWithZ) {
            canvas.disableZ();
        }
    }

    public final float getCameraDistancePx() {
        return getCameraDistance() / getResources().getDisplayMetrics().densityDpi;
    }

    @NotNull
    public final DrawChildContainer getContainer() {
        return this.container;
    }

    @Override // androidx.compose.ui.layout.GraphicLayerInfo
    public long getLayerId() {
        return getId();
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

    @Override // android.view.View, androidx.compose.ui.node.OwnedLayer
    public void invalidate() {
        if (!this.isInvalidated) {
            setInvalidated(true);
            super.invalidate();
            this.ownerView.invalidate();
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* renamed from: isInLayer-k-4lQ0M */
    public boolean mo3502isInLayerk4lQ0M(long j10) {
        float m1606getXimpl = Offset.m1606getXimpl(j10);
        float m1607getYimpl = Offset.m1607getYimpl(j10);
        if (this.clipToBounds) {
            if (0.0f <= m1606getXimpl && m1606getXimpl < getWidth() && 0.0f <= m1607getYimpl && m1607getYimpl < getHeight()) {
                return true;
            }
            return false;
        } else if (!getClipToOutline()) {
            return true;
        } else {
            return this.outlineResolver.m3572isInOutlinek4lQ0M(j10);
        }
    }

    public final boolean isInvalidated() {
        return this.isInvalidated;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void mapBounds(@NotNull MutableRect rect, boolean z10) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        if (z10) {
            float[] m3549calculateInverseMatrixbWbORWo = this.matrixCache.m3549calculateInverseMatrixbWbORWo(this);
            if (m3549calculateInverseMatrixbWbORWo != null) {
                androidx.compose.ui.graphics.Matrix.m2044mapimpl(m3549calculateInverseMatrixbWbORWo, rect);
                return;
            } else {
                rect.set(0.0f, 0.0f, 0.0f, 0.0f);
                return;
            }
        }
        androidx.compose.ui.graphics.Matrix.m2044mapimpl(this.matrixCache.m3550calculateMatrixGrdbGEg(this), rect);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* renamed from: mapOffset-8S9VItk */
    public long mo3503mapOffset8S9VItk(long j10, boolean z10) {
        if (z10) {
            float[] m3549calculateInverseMatrixbWbORWo = this.matrixCache.m3549calculateInverseMatrixbWbORWo(this);
            if (m3549calculateInverseMatrixbWbORWo != null) {
                return androidx.compose.ui.graphics.Matrix.m2042mapMKHz9U(m3549calculateInverseMatrixbWbORWo, j10);
            }
            return Offset.Companion.m1620getInfiniteF1C5BW0();
        }
        return androidx.compose.ui.graphics.Matrix.m2042mapMKHz9U(this.matrixCache.m3550calculateMatrixGrdbGEg(this), j10);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* renamed from: move--gyyYBs */
    public void mo3504movegyyYBs(long j10) {
        int m4167getXimpl = IntOffset.m4167getXimpl(j10);
        if (m4167getXimpl != getLeft()) {
            offsetLeftAndRight(m4167getXimpl - getLeft());
            this.matrixCache.invalidate();
        }
        int m4168getYimpl = IntOffset.m4168getYimpl(j10);
        if (m4168getYimpl != getTop()) {
            offsetTopAndBottom(m4168getYimpl - getTop());
            this.matrixCache.invalidate();
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* renamed from: resize-ozmzZPI */
    public void mo3505resizeozmzZPI(long j10) {
        int m4209getWidthimpl = IntSize.m4209getWidthimpl(j10);
        int m4208getHeightimpl = IntSize.m4208getHeightimpl(j10);
        if (m4209getWidthimpl != getWidth() || m4208getHeightimpl != getHeight()) {
            float f10 = m4209getWidthimpl;
            setPivotX(TransformOrigin.m2179getPivotFractionXimpl(this.mTransformOrigin) * f10);
            float f11 = m4208getHeightimpl;
            setPivotY(TransformOrigin.m2180getPivotFractionYimpl(this.mTransformOrigin) * f11);
            this.outlineResolver.m3573updateuvyYCjk(SizeKt.Size(f10, f11));
            updateOutlineResolver();
            layout(getLeft(), getTop(), getLeft() + m4209getWidthimpl, getTop() + m4208getHeightimpl);
            resetClipBounds();
            this.matrixCache.invalidate();
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void reuseLayer(@NotNull Function1<? super Canvas, Unit> drawBlock, @NotNull Function0<Unit> invalidateParentLayer) {
        Intrinsics.checkNotNullParameter(drawBlock, "drawBlock");
        Intrinsics.checkNotNullParameter(invalidateParentLayer, "invalidateParentLayer");
        this.container.addView(this);
        this.clipToBounds = false;
        this.drawnWithZ = false;
        this.mTransformOrigin = TransformOrigin.Companion.m2184getCenterSzJe1aQ();
        this.drawBlock = drawBlock;
        this.invalidateParentLayer = invalidateParentLayer;
    }

    public final void setCameraDistancePx(float f10) {
        setCameraDistance(f10 * getResources().getDisplayMetrics().densityDpi);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void updateDisplayList() {
        if (this.isInvalidated && !shouldUseDispatchDraw) {
            setInvalidated(false);
            Companion.updateDisplayList(this);
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
        this.mTransformOrigin = j10;
        setScaleX(f10);
        setScaleY(f11);
        setAlpha(f12);
        setTranslationX(f13);
        setTranslationY(f14);
        setElevation(f15);
        setRotation(f18);
        setRotationX(f16);
        setRotationY(f17);
        setPivotX(TransformOrigin.m2179getPivotFractionXimpl(this.mTransformOrigin) * getWidth());
        setPivotY(TransformOrigin.m2180getPivotFractionYimpl(this.mTransformOrigin) * getHeight());
        setCameraDistancePx(f19);
        boolean z14 = false;
        if (z10 && shape == RectangleShapeKt.getRectangleShape()) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.clipToBounds = z11;
        resetClipBounds();
        if (getManualClipPath() != null) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z10 && shape != RectangleShapeKt.getRectangleShape()) {
            z13 = true;
        } else {
            z13 = false;
        }
        setClipToOutline(z13);
        boolean update = this.outlineResolver.update(shape, getAlpha(), getClipToOutline(), getElevation(), layoutDirection, density);
        updateOutlineResolver();
        if (getManualClipPath() != null) {
            z14 = true;
        }
        if (z12 != z14 || (z14 && update)) {
            invalidate();
        }
        if (!this.drawnWithZ && getElevation() > 0.0f && (function0 = this.invalidateParentLayer) != null) {
            function0.invoke();
        }
        this.matrixCache.invalidate();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            ViewLayerVerificationHelper28 viewLayerVerificationHelper28 = ViewLayerVerificationHelper28.INSTANCE;
            viewLayerVerificationHelper28.setOutlineAmbientShadowColor(this, ColorKt.m1897toArgb8_81llA(j11));
            viewLayerVerificationHelper28.setOutlineSpotShadowColor(this, ColorKt.m1897toArgb8_81llA(j12));
        }
        if (i10 >= 31) {
            ViewLayerVerificationHelper31.INSTANCE.setRenderEffect(this, renderEffect);
        }
    }

    @Override // android.view.View
    public void forceLayout() {
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
    }
}
