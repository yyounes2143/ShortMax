package com.facebook.fresco.animation.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import com.facebook.fresco.animation.backend.AnimationBackend;
import com.facebook.fresco.animation.backend.AnimationBackendDelegateWithInactivityCheck;
import com.facebook.fresco.animation.backend.AnimationInformation;
import com.facebook.fresco.animation.bitmap.BitmapAnimationBackend;
import com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy;
import com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparer;
import com.facebook.fresco.vito.options.RoundingOptions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o2.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import q3.d;
/* compiled from: BitmapAnimationBackend.kt */
@Metadata
/* loaded from: classes3.dex */
public final class BitmapAnimationBackend implements AnimationBackend, AnimationBackendDelegateWithInactivityCheck.InactivityListener {
    public static final int FRAME_TYPE_CACHED = 0;
    public static final int FRAME_TYPE_CREATED = 2;
    public static final int FRAME_TYPE_FALLBACK = 3;
    public static final int FRAME_TYPE_REUSED = 1;
    public static final int FRAME_TYPE_UNKNOWN = -1;
    @NotNull
    private final AnimationInformation animationInformation;
    @Nullable
    private AnimationBackend.Listener animationListener;
    @NotNull
    private final Bitmap.Config bitmapConfig;
    @NotNull
    private final BitmapFrameCache bitmapFrameCache;
    @Nullable
    private final BitmapFramePreparationStrategy bitmapFramePreparationStrategy;
    @Nullable
    private final BitmapFramePreparer bitmapFramePreparer;
    @NotNull
    private final BitmapFrameRenderer bitmapFrameRenderer;
    private int bitmapHeight;
    private int bitmapWidth;
    @Nullable
    private Rect bounds;
    @Nullable
    private final float[] cornerRadii;
    @Nullable
    private FrameListener frameListener;
    private final boolean isNewRenderImplementation;
    @NotNull
    private final Matrix matrix;
    @NotNull
    private final Paint paint;
    @NotNull
    private final Path path;
    private int pathFrameNumber;
    @NotNull
    private final d platformBitmapFactory;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Class<BitmapAnimationBackend> TAG = BitmapAnimationBackend.class;

    /* compiled from: BitmapAnimationBackend.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: BitmapAnimationBackend.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface FrameListener {
        void onDrawFrameStart(@NotNull BitmapAnimationBackend bitmapAnimationBackend, int i10);

        void onFrameDrawn(@NotNull BitmapAnimationBackend bitmapAnimationBackend, int i10, int i11);

        void onFrameDropped(@NotNull BitmapAnimationBackend bitmapAnimationBackend, int i10);
    }

    /* compiled from: BitmapAnimationBackend.kt */
    @Retention(RetentionPolicy.SOURCE)
    @Metadata
    /* loaded from: classes3.dex */
    public @interface FrameType {
    }

    public BitmapAnimationBackend(@NotNull d platformBitmapFactory, @NotNull BitmapFrameCache bitmapFrameCache, @NotNull AnimationInformation animationInformation, @NotNull BitmapFrameRenderer bitmapFrameRenderer, boolean z10, @Nullable BitmapFramePreparationStrategy bitmapFramePreparationStrategy, @Nullable BitmapFramePreparer bitmapFramePreparer, @Nullable RoundingOptions roundingOptions) {
        float[] fArr;
        Intrinsics.checkNotNullParameter(platformBitmapFactory, "platformBitmapFactory");
        Intrinsics.checkNotNullParameter(bitmapFrameCache, "bitmapFrameCache");
        Intrinsics.checkNotNullParameter(animationInformation, "animationInformation");
        Intrinsics.checkNotNullParameter(bitmapFrameRenderer, "bitmapFrameRenderer");
        this.platformBitmapFactory = platformBitmapFactory;
        this.bitmapFrameCache = bitmapFrameCache;
        this.animationInformation = animationInformation;
        this.bitmapFrameRenderer = bitmapFrameRenderer;
        this.isNewRenderImplementation = z10;
        this.bitmapFramePreparationStrategy = bitmapFramePreparationStrategy;
        this.bitmapFramePreparer = bitmapFramePreparer;
        if (roundingOptions == null) {
            fArr = null;
        } else if (roundingOptions.getCornerRadius() == 0.0f) {
            fArr = roundingOptions.getCornerRadii();
        } else {
            fArr = new float[8];
            n.E(fArr, roundingOptions.getCornerRadius(), 0, 0, 6, null);
        }
        this.cornerRadii = fArr;
        this.bitmapConfig = Bitmap.Config.ARGB_8888;
        this.paint = new Paint(6);
        this.path = new Path();
        this.matrix = new Matrix();
        this.pathFrameNumber = -1;
        updateBitmapDimensions();
    }

    private final void drawBitmap(int i10, Bitmap bitmap, Canvas canvas) {
        Rect rect = this.bounds;
        if (rect == null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.paint);
        } else if (updatePath(i10, bitmap, rect.width(), rect.height())) {
            canvas.drawPath(this.path, this.paint);
        } else {
            canvas.drawBitmap(bitmap, (Rect) null, rect, this.paint);
        }
    }

    private final boolean drawBitmapAndCache(int i10, a<Bitmap> aVar, Canvas canvas, int i11) {
        if (aVar != null && a.v(aVar)) {
            Bitmap s10 = aVar.s();
            Intrinsics.checkNotNullExpressionValue(s10, "get(...)");
            drawBitmap(i10, s10, canvas);
            if (i11 != 3 && !this.isNewRenderImplementation) {
                this.bitmapFrameCache.onFrameRendered(i10, aVar, i11);
            }
            FrameListener frameListener = this.frameListener;
            if (frameListener != null) {
                frameListener.onFrameDrawn(this, i10, i11);
                return true;
            }
            return true;
        }
        return false;
    }

    private final boolean drawFrameOrFallback(Canvas canvas, int i10, int i11) {
        a<Bitmap> cachedFrame;
        boolean drawBitmapAndCache;
        a<Bitmap> aVar;
        a<Bitmap> aVar2 = null;
        try {
            boolean z10 = false;
            int i12 = 1;
            if (this.isNewRenderImplementation) {
                BitmapFramePreparationStrategy bitmapFramePreparationStrategy = this.bitmapFramePreparationStrategy;
                if (bitmapFramePreparationStrategy != null) {
                    aVar = bitmapFramePreparationStrategy.getBitmapFrame(i10, canvas.getWidth(), canvas.getHeight());
                } else {
                    aVar = null;
                }
                if (aVar != null) {
                    try {
                        if (aVar.u()) {
                            Bitmap s10 = aVar.s();
                            Intrinsics.checkNotNullExpressionValue(s10, "get(...)");
                            drawBitmap(i10, s10, canvas);
                            a.r(aVar);
                            return true;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        aVar2 = aVar;
                        a.r(aVar2);
                        throw th;
                    }
                }
                BitmapFramePreparationStrategy bitmapFramePreparationStrategy2 = this.bitmapFramePreparationStrategy;
                if (bitmapFramePreparationStrategy2 != null) {
                    bitmapFramePreparationStrategy2.prepareFrames(canvas.getWidth(), canvas.getHeight(), null);
                }
                a.r(aVar);
                return false;
            }
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            a.r(null);
                            return false;
                        }
                        cachedFrame = this.bitmapFrameCache.getFallbackFrame(i10);
                        drawBitmapAndCache = drawBitmapAndCache(i10, cachedFrame, canvas, 3);
                        i12 = -1;
                    } else {
                        try {
                            cachedFrame = this.platformBitmapFactory.b(this.bitmapWidth, this.bitmapHeight, this.bitmapConfig);
                            if (renderFrameInBitmap(i10, cachedFrame) && drawBitmapAndCache(i10, cachedFrame, canvas, 2)) {
                                z10 = true;
                            }
                            drawBitmapAndCache = z10;
                            i12 = 3;
                        } catch (RuntimeException e10) {
                            l2.a.w(TAG, "Failed to create frame bitmap", e10);
                            a.r(null);
                            return false;
                        }
                    }
                } else {
                    cachedFrame = this.bitmapFrameCache.getBitmapToReuseForFrame(i10, this.bitmapWidth, this.bitmapHeight);
                    if (renderFrameInBitmap(i10, cachedFrame) && drawBitmapAndCache(i10, cachedFrame, canvas, 1)) {
                        z10 = true;
                    }
                    drawBitmapAndCache = z10;
                    i12 = 2;
                }
            } else {
                cachedFrame = this.bitmapFrameCache.getCachedFrame(i10);
                drawBitmapAndCache = drawBitmapAndCache(i10, cachedFrame, canvas, 0);
            }
            a.r(cachedFrame);
            if (!drawBitmapAndCache && i12 != -1) {
                return drawFrameOrFallback(canvas, i10, i12);
            }
            return drawBitmapAndCache;
        } catch (Throwable th3) {
            th = th3;
            a.r(aVar2);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit preloadAnimation$lambda$1(BitmapAnimationBackend this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AnimationBackend.Listener listener = this$0.animationListener;
        if (listener != null) {
            listener.onAnimationLoaded();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit preloadAnimation$lambda$2(BitmapAnimationBackend this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AnimationBackend.Listener listener = this$0.animationListener;
        if (listener != null) {
            listener.onAnimationLoaded();
        }
        return Unit.f60915a;
    }

    private final boolean renderFrameInBitmap(int i10, a<Bitmap> aVar) {
        if (aVar != null && aVar.u()) {
            BitmapFrameRenderer bitmapFrameRenderer = this.bitmapFrameRenderer;
            Bitmap s10 = aVar.s();
            Intrinsics.checkNotNullExpressionValue(s10, "get(...)");
            boolean renderFrame = bitmapFrameRenderer.renderFrame(i10, s10);
            if (!renderFrame) {
                a.r(aVar);
            }
            return renderFrame;
        }
        return false;
    }

    private final void updateBitmapDimensions() {
        int i10;
        int intrinsicWidth = this.bitmapFrameRenderer.getIntrinsicWidth();
        this.bitmapWidth = intrinsicWidth;
        int i11 = -1;
        if (intrinsicWidth == -1) {
            Rect rect = this.bounds;
            if (rect != null) {
                i10 = rect.width();
            } else {
                i10 = -1;
            }
            this.bitmapWidth = i10;
        }
        int intrinsicHeight = this.bitmapFrameRenderer.getIntrinsicHeight();
        this.bitmapHeight = intrinsicHeight;
        if (intrinsicHeight == -1) {
            Rect rect2 = this.bounds;
            if (rect2 != null) {
                i11 = rect2.height();
            }
            this.bitmapHeight = i11;
        }
    }

    private final boolean updatePath(int i10, Bitmap bitmap, float f10, float f11) {
        if (this.cornerRadii == null) {
            return false;
        }
        if (i10 == this.pathFrameNumber) {
            return true;
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        this.matrix.setRectToRect(new RectF(0.0f, 0.0f, this.bitmapWidth, this.bitmapHeight), new RectF(0.0f, 0.0f, f10, f11), Matrix.ScaleToFit.FILL);
        bitmapShader.setLocalMatrix(this.matrix);
        this.paint.setShader(bitmapShader);
        this.path.addRoundRect(new RectF(0.0f, 0.0f, f10, f11), this.cornerRadii, Path.Direction.CW);
        this.pathFrameNumber = i10;
        return true;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void clear() {
        if (this.isNewRenderImplementation) {
            BitmapFramePreparationStrategy bitmapFramePreparationStrategy = this.bitmapFramePreparationStrategy;
            if (bitmapFramePreparationStrategy != null) {
                bitmapFramePreparationStrategy.clearFrames();
                return;
            }
            return;
        }
        this.bitmapFrameCache.clear();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public boolean drawFrame(@NotNull Drawable parent, @NotNull Canvas canvas, int i10) {
        BitmapFramePreparer bitmapFramePreparer;
        BitmapFramePreparationStrategy bitmapFramePreparationStrategy;
        FrameListener frameListener;
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        FrameListener frameListener2 = this.frameListener;
        if (frameListener2 != null) {
            frameListener2.onDrawFrameStart(this, i10);
        }
        boolean drawFrameOrFallback = drawFrameOrFallback(canvas, i10, 0);
        if (!drawFrameOrFallback && (frameListener = this.frameListener) != null) {
            frameListener.onFrameDropped(this, i10);
        }
        if (!this.isNewRenderImplementation && (bitmapFramePreparer = this.bitmapFramePreparer) != null && (bitmapFramePreparationStrategy = this.bitmapFramePreparationStrategy) != null) {
            BitmapFramePreparationStrategy.DefaultImpls.prepareFrames$default(bitmapFramePreparationStrategy, bitmapFramePreparer, this.bitmapFrameCache, this, i10, null, 16, null);
        }
        return drawFrameOrFallback;
    }

    @Nullable
    public final float[] getCornerRadii() {
        return this.cornerRadii;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getFrameCount() {
        return this.animationInformation.getFrameCount();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getFrameDurationMs(int i10) {
        return this.animationInformation.getFrameDurationMs(i10);
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public int getIntrinsicHeight() {
        return this.bitmapHeight;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public int getIntrinsicWidth() {
        return this.bitmapWidth;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getLoopCount() {
        return this.animationInformation.getLoopCount();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getLoopDurationMs() {
        return this.animationInformation.getLoopDurationMs();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public int getSizeInBytes() {
        return this.bitmapFrameCache.getSizeInBytes();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int height() {
        return this.animationInformation.height();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackendDelegateWithInactivityCheck.InactivityListener
    public void onInactive() {
        if (this.isNewRenderImplementation) {
            BitmapFramePreparationStrategy bitmapFramePreparationStrategy = this.bitmapFramePreparationStrategy;
            if (bitmapFramePreparationStrategy != null) {
                bitmapFramePreparationStrategy.onStop();
                return;
            }
            return;
        }
        clear();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void preloadAnimation() {
        BitmapFramePreparer bitmapFramePreparer;
        if (!this.isNewRenderImplementation && (bitmapFramePreparer = this.bitmapFramePreparer) != null) {
            BitmapFramePreparationStrategy bitmapFramePreparationStrategy = this.bitmapFramePreparationStrategy;
            if (bitmapFramePreparationStrategy != null) {
                bitmapFramePreparationStrategy.prepareFrames(bitmapFramePreparer, this.bitmapFrameCache, this, 0, new Function0() { // from class: h3.a
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit preloadAnimation$lambda$1;
                        preloadAnimation$lambda$1 = BitmapAnimationBackend.preloadAnimation$lambda$1(BitmapAnimationBackend.this);
                        return preloadAnimation$lambda$1;
                    }
                });
                return;
            }
            return;
        }
        BitmapFramePreparationStrategy bitmapFramePreparationStrategy2 = this.bitmapFramePreparationStrategy;
        if (bitmapFramePreparationStrategy2 != null) {
            bitmapFramePreparationStrategy2.prepareFrames(this.animationInformation.width(), this.animationInformation.height(), new Function0() { // from class: h3.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit preloadAnimation$lambda$2;
                    preloadAnimation$lambda$2 = BitmapAnimationBackend.preloadAnimation$lambda$2(BitmapAnimationBackend.this);
                    return preloadAnimation$lambda$2;
                }
            });
        }
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void setAlpha(@IntRange(from = 0, to = 255) int i10) {
        this.paint.setAlpha(i10);
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void setAnimationListener(@Nullable AnimationBackend.Listener listener) {
        this.animationListener = listener;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void setBounds(@Nullable Rect rect) {
        this.bounds = rect;
        this.bitmapFrameRenderer.setBounds(rect);
        updateBitmapDimensions();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    public final void setFrameListener(@Nullable FrameListener frameListener) {
        this.frameListener = frameListener;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int width() {
        return this.animationInformation.width();
    }

    public /* synthetic */ BitmapAnimationBackend(d dVar, BitmapFrameCache bitmapFrameCache, AnimationInformation animationInformation, BitmapFrameRenderer bitmapFrameRenderer, boolean z10, BitmapFramePreparationStrategy bitmapFramePreparationStrategy, BitmapFramePreparer bitmapFramePreparer, RoundingOptions roundingOptions, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(dVar, bitmapFrameCache, animationInformation, bitmapFrameRenderer, z10, bitmapFramePreparationStrategy, bitmapFramePreparer, (i10 & 128) != 0 ? null : roundingOptions);
    }
}
