package com.facebook.fresco.animation.factory;

import android.content.Context;
import android.graphics.Rect;
import com.facebook.common.time.RealtimeSinceBootClock;
import i2.g;
import i2.i;
import java.util.concurrent.ExecutorService;
import k2.d;
import k2.k;
import k2.l;
import r3.m;
import t3.o;
import y3.e;
import y3.p;
@d
/* loaded from: classes3.dex */
public class AnimatedFactoryV2Impl implements m3.a {
    private static final int NUMBER_OF_FRAMES_TO_PREPARE = 3;
    private n3.b mAnimatedDrawableBackendProvider;
    private x3.a mAnimatedDrawableFactory;
    private o3.a mAnimatedDrawableUtil;
    private m3.d mAnimatedImageFactory;
    private int mAnimationFpsLimit;
    private final m<f2.a, e> mBackingCache;
    private int mBufferLengthMilliseconds;
    private final boolean mDownscaleFrameToDrawableDimensions;
    private final o mExecutorSupplier;
    private final q3.d mPlatformBitmapFactory;
    private g mSerialExecutorService;
    private final boolean mUseBufferLoaderStrategy;

    @d
    public AnimatedFactoryV2Impl(q3.d dVar, o oVar, m<f2.a, e> mVar, boolean z10, boolean z11, int i10, int i11, g gVar) {
        this.mPlatformBitmapFactory = dVar;
        this.mExecutorSupplier = oVar;
        this.mBackingCache = mVar;
        this.mAnimationFpsLimit = i10;
        this.mUseBufferLoaderStrategy = z11;
        this.mDownscaleFrameToDrawableDimensions = z10;
        this.mSerialExecutorService = gVar;
        this.mBufferLengthMilliseconds = i11;
    }

    private m3.d buildAnimatedImageFactory() {
        return new m3.e(new n3.b() { // from class: com.facebook.fresco.animation.factory.AnimatedFactoryV2Impl.3
            @Override // n3.b
            public l3.a get(l3.d dVar, Rect rect) {
                return new n3.a(AnimatedFactoryV2Impl.this.getAnimatedDrawableUtil(), dVar, rect, AnimatedFactoryV2Impl.this.mDownscaleFrameToDrawableDimensions);
            }
        }, this.mPlatformBitmapFactory, this.mUseBufferLoaderStrategy);
    }

    private DefaultBitmapAnimationDrawableFactory createDrawableFactory() {
        k kVar = new k() { // from class: com.facebook.fresco.animation.factory.b
            @Override // k2.k
            public final Object get() {
                Integer lambda$createDrawableFactory$1;
                lambda$createDrawableFactory$1 = AnimatedFactoryV2Impl.lambda$createDrawableFactory$1();
                return lambda$createDrawableFactory$1;
            }
        };
        ExecutorService executorService = this.mSerialExecutorService;
        if (executorService == null) {
            executorService = new i2.d(this.mExecutorSupplier.g());
        }
        k kVar2 = new k() { // from class: com.facebook.fresco.animation.factory.c
            @Override // k2.k
            public final Object get() {
                Integer lambda$createDrawableFactory$2;
                lambda$createDrawableFactory$2 = AnimatedFactoryV2Impl.lambda$createDrawableFactory$2();
                return lambda$createDrawableFactory$2;
            }
        };
        k<Boolean> kVar3 = l.f60584b;
        return new DefaultBitmapAnimationDrawableFactory(getAnimatedDrawableBackendProvider(), i.g(), executorService, RealtimeSinceBootClock.get(), this.mPlatformBitmapFactory, this.mBackingCache, kVar, kVar2, kVar3, l.a(Boolean.valueOf(this.mUseBufferLoaderStrategy)), l.a(Boolean.valueOf(this.mDownscaleFrameToDrawableDimensions)), l.a(Integer.valueOf(this.mAnimationFpsLimit)), l.a(Integer.valueOf(this.mBufferLengthMilliseconds)));
    }

    private n3.b getAnimatedDrawableBackendProvider() {
        if (this.mAnimatedDrawableBackendProvider == null) {
            this.mAnimatedDrawableBackendProvider = new n3.b() { // from class: com.facebook.fresco.animation.factory.AnimatedFactoryV2Impl.2
                @Override // n3.b
                public l3.a get(l3.d dVar, Rect rect) {
                    return new n3.a(AnimatedFactoryV2Impl.this.getAnimatedDrawableUtil(), dVar, rect, AnimatedFactoryV2Impl.this.mDownscaleFrameToDrawableDimensions);
                }
            };
        }
        return this.mAnimatedDrawableBackendProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public o3.a getAnimatedDrawableUtil() {
        if (this.mAnimatedDrawableUtil == null) {
            this.mAnimatedDrawableUtil = new o3.a();
        }
        return this.mAnimatedDrawableUtil;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public m3.d getAnimatedImageFactory() {
        if (this.mAnimatedImageFactory == null) {
            this.mAnimatedImageFactory = buildAnimatedImageFactory();
        }
        return this.mAnimatedImageFactory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$createDrawableFactory$1() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$createDrawableFactory$2() {
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ e lambda$getWebPDecoder$0(y3.k kVar, int i10, p pVar, s3.d dVar) {
        return getAnimatedImageFactory().a(kVar, dVar, dVar.f66274i);
    }

    @Override // m3.a
    public x3.a getAnimatedDrawableFactory(Context context) {
        if (this.mAnimatedDrawableFactory == null) {
            this.mAnimatedDrawableFactory = createDrawableFactory();
        }
        return this.mAnimatedDrawableFactory;
    }

    @Override // m3.a
    public w3.b getGifDecoder() {
        return new w3.b() { // from class: com.facebook.fresco.animation.factory.AnimatedFactoryV2Impl.1
            @Override // w3.b
            public e decode(y3.k kVar, int i10, p pVar, s3.d dVar) {
                return AnimatedFactoryV2Impl.this.getAnimatedImageFactory().b(kVar, dVar, dVar.f66274i);
            }
        };
    }

    @Override // m3.a
    public w3.b getWebPDecoder() {
        return new w3.b() { // from class: com.facebook.fresco.animation.factory.a
            @Override // w3.b
            public final e decode(y3.k kVar, int i10, p pVar, s3.d dVar) {
                e lambda$getWebPDecoder$0;
                lambda$getWebPDecoder$0 = AnimatedFactoryV2Impl.this.lambda$getWebPDecoder$0(kVar, i10, pVar, dVar);
                return lambda$getWebPDecoder$0;
            }
        };
    }
}
