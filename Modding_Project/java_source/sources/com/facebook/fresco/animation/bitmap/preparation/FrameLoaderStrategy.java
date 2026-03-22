package com.facebook.fresco.animation.bitmap.preparation;

import android.graphics.Bitmap;
import androidx.annotation.UiThread;
import com.facebook.fresco.animation.backend.AnimationBackend;
import com.facebook.fresco.animation.backend.AnimationInformation;
import com.facebook.fresco.animation.bitmap.BitmapFrameCache;
import com.facebook.fresco.animation.bitmap.BitmapFrameRenderer;
import com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy;
import com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.AnimationCoordinator;
import com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.DynamicRenderingFps;
import com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameLoader;
import com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameLoaderFactory;
import com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameResult;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FrameLoaderStrategy.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFrameLoaderStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameLoaderStrategy.kt\ncom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,126:1\n1#2:127\n*E\n"})
/* loaded from: classes3.dex */
public final class FrameLoaderStrategy implements BitmapFramePreparationStrategy {
    private final int animationHeight;
    @NotNull
    private final AnimationInformation animationInformation;
    private final int animationWidth;
    @NotNull
    private final BitmapFrameRenderer bitmapFrameRenderer;
    @NotNull
    private final String cacheKey;
    private int currentFps;
    private final boolean downscaleFrameToDrawableDimensions;
    @NotNull
    private final FrameLoaderStrategy$dynamicFpsRender$1 dynamicFpsRender;
    @Nullable
    private FrameLoader frameLoader;
    @NotNull
    private final FrameLoaderFactory frameLoaderFactory;
    private final int maxAnimationFps;

    /* JADX WARN: Type inference failed for: r2v5, types: [com.facebook.fresco.animation.bitmap.preparation.FrameLoaderStrategy$dynamicFpsRender$1] */
    public FrameLoaderStrategy(@Nullable String str, @NotNull AnimationInformation animationInformation, @NotNull BitmapFrameRenderer bitmapFrameRenderer, @NotNull FrameLoaderFactory frameLoaderFactory, boolean z10) {
        Intrinsics.checkNotNullParameter(animationInformation, "animationInformation");
        Intrinsics.checkNotNullParameter(bitmapFrameRenderer, "bitmapFrameRenderer");
        Intrinsics.checkNotNullParameter(frameLoaderFactory, "frameLoaderFactory");
        this.animationInformation = animationInformation;
        this.bitmapFrameRenderer = bitmapFrameRenderer;
        this.frameLoaderFactory = frameLoaderFactory;
        this.downscaleFrameToDrawableDimensions = z10;
        this.cacheKey = str == null ? String.valueOf(hashCode()) : str;
        this.animationWidth = animationInformation.width();
        this.animationHeight = animationInformation.height();
        int fps = fps(animationInformation);
        this.maxAnimationFps = fps;
        this.currentFps = fps;
        this.dynamicFpsRender = new DynamicRenderingFps() { // from class: com.facebook.fresco.animation.bitmap.preparation.FrameLoaderStrategy$dynamicFpsRender$1
            private final int animationFps;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                int i10;
                i10 = FrameLoaderStrategy.this.maxAnimationFps;
                this.animationFps = i10;
            }

            @Override // com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.DynamicRenderingFps
            public int getAnimationFps() {
                return this.animationFps;
            }

            @Override // com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.DynamicRenderingFps
            public int getRenderingFps() {
                int i10;
                i10 = FrameLoaderStrategy.this.currentFps;
                return i10;
            }

            @Override // com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.DynamicRenderingFps
            public void setRenderingFps(int i10) {
                int i11;
                int i12;
                FrameLoader frameLoader;
                int i13;
                i11 = FrameLoaderStrategy.this.currentFps;
                if (i10 != i11) {
                    FrameLoaderStrategy frameLoaderStrategy = FrameLoaderStrategy.this;
                    i12 = frameLoaderStrategy.maxAnimationFps;
                    frameLoaderStrategy.currentFps = e.n(i10, 1, i12);
                    frameLoader = FrameLoaderStrategy.this.getFrameLoader();
                    if (frameLoader != null) {
                        i13 = FrameLoaderStrategy.this.currentFps;
                        frameLoader.compressToFps(i13);
                    }
                }
            }
        };
    }

    private final FrameSize calculateFrameSize(int i10, int i11) {
        if (!this.downscaleFrameToDrawableDimensions) {
            return new FrameSize(this.animationWidth, this.animationHeight);
        }
        int i12 = this.animationWidth;
        int i13 = this.animationHeight;
        if (i10 < i12 || i11 < i13) {
            double d10 = i12 / i13;
            if (i11 > i10) {
                i13 = e.j(i11, i13);
                i12 = (int) (i13 * d10);
            } else {
                i12 = e.j(i10, i12);
                i13 = (int) (i12 / d10);
            }
        }
        return new FrameSize(i12, i13);
    }

    private final int fps(AnimationInformation animationInformation) {
        return (int) e.f(TimeUnit.SECONDS.toMillis(1L) / (animationInformation.getLoopDurationMs() / animationInformation.getFrameCount()), 1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLoader getFrameLoader() {
        if (this.frameLoader == null) {
            this.frameLoader = this.frameLoaderFactory.createBufferLoader(this.cacheKey, this.bitmapFrameRenderer, this.animationInformation);
        }
        return this.frameLoader;
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy
    public void clearFrames() {
        FrameLoader frameLoader = getFrameLoader();
        if (frameLoader != null) {
            FrameLoaderFactory.Companion.saveUnusedFrame(this.cacheKey, frameLoader);
        }
        this.frameLoader = null;
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy
    @UiThread
    @Nullable
    public o2.a<Bitmap> getBitmapFrame(int i10, int i11, int i12) {
        FrameResult frameResult;
        FrameSize calculateFrameSize = calculateFrameSize(i11, i12);
        FrameLoader frameLoader = getFrameLoader();
        if (frameLoader != null) {
            frameResult = frameLoader.getFrame(i10, calculateFrameSize.getWidth(), calculateFrameSize.getHeight());
        } else {
            frameResult = null;
        }
        if (frameResult != null) {
            AnimationCoordinator.INSTANCE.onRenderFrame(this.dynamicFpsRender, frameResult);
        }
        if (frameResult == null) {
            return null;
        }
        return frameResult.getBitmapRef();
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy
    public void onStop() {
        FrameLoader frameLoader = getFrameLoader();
        if (frameLoader != null) {
            frameLoader.onStop();
        }
        clearFrames();
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy
    public void prepareFrames(@NotNull BitmapFramePreparer bitmapFramePreparer, @NotNull BitmapFrameCache bitmapFrameCache, @NotNull AnimationBackend animationBackend, int i10, @Nullable Function0<Unit> function0) {
        BitmapFramePreparationStrategy.DefaultImpls.prepareFrames(this, bitmapFramePreparer, bitmapFrameCache, animationBackend, i10, function0);
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy
    @UiThread
    public void prepareFrames(int i10, int i11, @Nullable Function0<Unit> function0) {
        if (i10 <= 0 || i11 <= 0 || this.animationWidth <= 0 || this.animationHeight <= 0) {
            return;
        }
        FrameSize calculateFrameSize = calculateFrameSize(i10, i11);
        FrameLoader frameLoader = getFrameLoader();
        if (frameLoader != null) {
            int width = calculateFrameSize.getWidth();
            int width2 = calculateFrameSize.getWidth();
            if (function0 == null) {
                function0 = new Function0() { // from class: com.facebook.fresco.animation.bitmap.preparation.a
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit unit;
                        unit = Unit.f60915a;
                        return unit;
                    }
                };
            }
            frameLoader.prepareFrames(width, width2, function0);
        }
    }
}
