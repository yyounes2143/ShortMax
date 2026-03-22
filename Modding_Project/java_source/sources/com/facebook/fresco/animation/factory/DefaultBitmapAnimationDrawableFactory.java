package com.facebook.fresco.animation.factory;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.facebook.fresco.animation.backend.AnimationBackend;
import com.facebook.fresco.animation.backend.AnimationBackendDelegateWithInactivityCheck;
import com.facebook.fresco.animation.bitmap.BitmapAnimationBackend;
import com.facebook.fresco.animation.bitmap.BitmapFrameCache;
import com.facebook.fresco.animation.bitmap.BitmapFrameRenderer;
import com.facebook.fresco.animation.bitmap.cache.AnimationFrameCacheKey;
import com.facebook.fresco.animation.bitmap.cache.FrescoFrameCache;
import com.facebook.fresco.animation.bitmap.cache.KeepLastFrameCache;
import com.facebook.fresco.animation.bitmap.cache.NoOpCache;
import com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy;
import com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparer;
import com.facebook.fresco.animation.bitmap.preparation.DefaultBitmapFramePreparer;
import com.facebook.fresco.animation.bitmap.preparation.FixedNumberBitmapFramePreparationStrategy;
import com.facebook.fresco.animation.bitmap.preparation.FrameLoaderStrategy;
import com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameLoaderFactory;
import com.facebook.fresco.animation.bitmap.wrapper.AnimatedDrawableBackendAnimationInformation;
import com.facebook.fresco.animation.bitmap.wrapper.AnimatedDrawableBackendFrameRenderer;
import com.facebook.fresco.animation.drawable.AnimatedDrawable2;
import com.facebook.fresco.animation.drawable.KAnimatedDrawable2;
import com.facebook.fresco.vito.options.ImageOptions;
import com.facebook.fresco.vito.options.ImageOptionsDrawableFactory;
import com.facebook.fresco.vito.options.RoundingOptions;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import k2.h;
import k2.k;
import k2.l;
import q3.d;
import r3.m;
import y3.e;
/* loaded from: classes3.dex */
public class DefaultBitmapAnimationDrawableFactory implements x3.a, ImageOptionsDrawableFactory {
    public static final int CACHING_STRATEGY_FRESCO_CACHE = 1;
    public static final int CACHING_STRATEGY_FRESCO_CACHE_NO_REUSING = 2;
    public static final int CACHING_STRATEGY_KEEP_LAST_CACHE = 3;
    public static final int CACHING_STRATEGY_NO_CACHE = 0;
    private final n3.b mAnimatedDrawableBackendProvider;
    private final k<Integer> mAnimationFpsLimit;
    private final m<f2.a, e> mBackingCache;
    private final k<Integer> mBufferLengthMilliseconds;
    private final k<Integer> mCachingStrategySupplier;
    private final k<Boolean> mDownscaleFrameToDrawableDimensions;
    private final ExecutorService mExecutorServiceForFramePreparing;
    private final q2.b mMonotonicClock;
    private final k<Integer> mNumberOfFramesToPrepareSupplier;
    private final d mPlatformBitmapFactory;
    private final ScheduledExecutorService mScheduledExecutorServiceForUiThread;
    private final k<Boolean> mUseDeepEqualsForCacheKey;
    private final k<Boolean> mUseNewBitmapRender;
    private final k<Boolean> useRendererAnimatedDrawable = l.f60584b;

    public DefaultBitmapAnimationDrawableFactory(n3.b bVar, ScheduledExecutorService scheduledExecutorService, ExecutorService executorService, q2.b bVar2, d dVar, m<f2.a, e> mVar, k<Integer> kVar, k<Integer> kVar2, k<Boolean> kVar3, k<Boolean> kVar4, k<Boolean> kVar5, k<Integer> kVar6, k<Integer> kVar7) {
        this.mAnimatedDrawableBackendProvider = bVar;
        this.mScheduledExecutorServiceForUiThread = scheduledExecutorService;
        this.mExecutorServiceForFramePreparing = executorService;
        this.mMonotonicClock = bVar2;
        this.mPlatformBitmapFactory = dVar;
        this.mBackingCache = mVar;
        this.mCachingStrategySupplier = kVar;
        this.mNumberOfFramesToPrepareSupplier = kVar2;
        this.mUseDeepEqualsForCacheKey = kVar3;
        this.mUseNewBitmapRender = kVar4;
        this.mAnimationFpsLimit = kVar6;
        this.mDownscaleFrameToDrawableDimensions = kVar5;
        this.mBufferLengthMilliseconds = kVar7;
    }

    private l3.a createAnimatedDrawableBackend(l3.d dVar) {
        l3.b d10 = dVar.d();
        return this.mAnimatedDrawableBackendProvider.get(dVar, new Rect(0, 0, d10.getWidth(), d10.getHeight()));
    }

    private n3.c createAnimatedFrameCache(l3.d dVar) {
        return new n3.c(new AnimationFrameCacheKey(dVar.hashCode(), this.mUseDeepEqualsForCacheKey.get().booleanValue()), this.mBackingCache);
    }

    private AnimationBackend createAnimationBackend(l3.d dVar, Bitmap.Config config, ImageOptions imageOptions) {
        BitmapFramePreparer bitmapFramePreparer;
        FixedNumberBitmapFramePreparationStrategy fixedNumberBitmapFramePreparationStrategy;
        RoundingOptions roundingOptions;
        BitmapFramePreparationStrategy bitmapFramePreparationStrategy;
        l3.a createAnimatedDrawableBackend = createAnimatedDrawableBackend(dVar);
        AnimatedDrawableBackendAnimationInformation animatedDrawableBackendAnimationInformation = new AnimatedDrawableBackendAnimationInformation(createAnimatedDrawableBackend);
        BitmapFrameCache createBitmapFrameCache = createBitmapFrameCache(dVar);
        AnimatedDrawableBackendFrameRenderer animatedDrawableBackendFrameRenderer = new AnimatedDrawableBackendFrameRenderer(createBitmapFrameCache, createAnimatedDrawableBackend, this.mUseNewBitmapRender.get().booleanValue());
        int intValue = this.mNumberOfFramesToPrepareSupplier.get().intValue();
        if (intValue > 0) {
            fixedNumberBitmapFramePreparationStrategy = new FixedNumberBitmapFramePreparationStrategy(intValue);
            bitmapFramePreparer = createBitmapFramePreparer(animatedDrawableBackendFrameRenderer, config);
        } else {
            bitmapFramePreparer = null;
            fixedNumberBitmapFramePreparationStrategy = null;
        }
        if (imageOptions != null) {
            roundingOptions = imageOptions.getRoundingOptions();
        } else {
            roundingOptions = null;
        }
        if (this.mUseNewBitmapRender.get().booleanValue()) {
            bitmapFramePreparationStrategy = new FrameLoaderStrategy(dVar.e(), animatedDrawableBackendAnimationInformation, animatedDrawableBackendFrameRenderer, new FrameLoaderFactory(this.mPlatformBitmapFactory, this.mAnimationFpsLimit.get().intValue(), this.mBufferLengthMilliseconds.get().intValue()), this.mDownscaleFrameToDrawableDimensions.get().booleanValue());
        } else {
            bitmapFramePreparationStrategy = fixedNumberBitmapFramePreparationStrategy;
        }
        return AnimationBackendDelegateWithInactivityCheck.createForBackend(new BitmapAnimationBackend(this.mPlatformBitmapFactory, createBitmapFrameCache, animatedDrawableBackendAnimationInformation, animatedDrawableBackendFrameRenderer, this.mUseNewBitmapRender.get().booleanValue(), bitmapFramePreparationStrategy, bitmapFramePreparer, roundingOptions), this.mMonotonicClock, this.mScheduledExecutorServiceForUiThread);
    }

    private BitmapFrameCache createBitmapFrameCache(l3.d dVar) {
        int intValue = this.mCachingStrategySupplier.get().intValue();
        if (intValue != 1) {
            if (intValue != 2) {
                if (intValue != 3) {
                    return new NoOpCache();
                }
                return new KeepLastFrameCache();
            }
            return new FrescoFrameCache(createAnimatedFrameCache(dVar), false);
        }
        return new FrescoFrameCache(createAnimatedFrameCache(dVar), true);
    }

    private BitmapFramePreparer createBitmapFramePreparer(BitmapFrameRenderer bitmapFrameRenderer, Bitmap.Config config) {
        d dVar = this.mPlatformBitmapFactory;
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        return new DefaultBitmapFramePreparer(dVar, bitmapFrameRenderer, config, this.mExecutorServiceForFramePreparing);
    }

    @Override // x3.a
    public Drawable createDrawable(e eVar) {
        if (supportsImageType(eVar)) {
            y3.c cVar = (y3.c) eVar;
            l3.b w10 = cVar.w();
            AnimationBackend createAnimationBackend = createAnimationBackend((l3.d) h.g(cVar.x()), w10 != null ? w10.f() : null, null);
            if (this.useRendererAnimatedDrawable.get().booleanValue()) {
                return new KAnimatedDrawable2(createAnimationBackend);
            }
            return new AnimatedDrawable2(createAnimationBackend);
        }
        return null;
    }

    @Override // x3.a
    public boolean supportsImageType(e eVar) {
        return eVar instanceof y3.c;
    }

    @Override // com.facebook.fresco.vito.options.ImageOptionsDrawableFactory
    public Drawable createDrawable(Resources resources, e eVar, ImageOptions imageOptions) {
        if (supportsImageType(eVar)) {
            y3.c cVar = (y3.c) eVar;
            l3.b w10 = cVar.w();
            try {
                AnimationBackend createAnimationBackend = createAnimationBackend((l3.d) h.g(cVar.x()), w10 != null ? w10.f() : null, imageOptions);
                if (this.useRendererAnimatedDrawable.get().booleanValue()) {
                    return new KAnimatedDrawable2(createAnimationBackend);
                }
                return new AnimatedDrawable2(createAnimationBackend);
            } catch (NullPointerException e10) {
                Object extra = eVar.getExtra("uri_source");
                if (extra != null) {
                    throw new NullPointerException(e10.getMessage() + " uri=" + extra.toString());
                }
                throw e10;
            }
        }
        return null;
    }
}
