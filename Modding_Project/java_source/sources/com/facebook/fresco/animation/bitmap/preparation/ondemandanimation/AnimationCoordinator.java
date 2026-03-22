package com.facebook.fresco.animation.bitmap.preparation.ondemandanimation;

import android.os.Handler;
import android.os.HandlerThread;
import com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameResult;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.e;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimationCoordinator.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAnimationCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationCoordinator.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,130:1\n216#2,2:131\n216#2,2:133\n*S KotlinDebug\n*F\n+ 1 AnimationCoordinator.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator\n*L\n53#1:131,2\n58#1:133,2\n*E\n"})
/* loaded from: classes3.dex */
public final class AnimationCoordinator {
    private static final float FPS_STEP_PERCENTAGE = 0.2f;
    private static final long FREQUENCY_LOADERS_MS = 10000;
    private static final long FREQUENCY_PERFORMANCE_MS = 2000;
    @NotNull
    public static final AnimationCoordinator INSTANCE;
    private static final float MIN_RENDERING_FPS_PERCENTAGE = 0.5f;
    @NotNull
    private static final Runnable calculatePerformance;
    @NotNull
    private static final Runnable clearUnusedFrameLoaders;
    @NotNull
    private static final AtomicInteger criticalCounter;
    @NotNull
    private static final AtomicInteger failuresCounter;
    @NotNull
    private static final i handler$delegate;
    @NotNull
    private static final ConcurrentHashMap<DynamicRenderingFps, Integer> runningAnimations;
    @NotNull
    private static final AtomicInteger successCounter;

    /* compiled from: AnimationCoordinator.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FrameResult.FrameType.values().length];
            try {
                iArr[FrameResult.FrameType.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FrameResult.FrameType.NEAREST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FrameResult.FrameType.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        AnimationCoordinator animationCoordinator = new AnimationCoordinator();
        INSTANCE = animationCoordinator;
        successCounter = new AtomicInteger(0);
        failuresCounter = new AtomicInteger(0);
        criticalCounter = new AtomicInteger(0);
        runningAnimations = new ConcurrentHashMap<>();
        handler$delegate = kotlin.c.b(new Function0() { // from class: com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Handler handler_delegate$lambda$0;
                handler_delegate$lambda$0 = AnimationCoordinator.handler_delegate$lambda$0();
                return handler_delegate$lambda$0;
            }
        });
        Runnable runnable = new Runnable() { // from class: com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.b
            @Override // java.lang.Runnable
            public final void run() {
                AnimationCoordinator.calculatePerformance$lambda$3();
            }
        };
        calculatePerformance = runnable;
        Runnable runnable2 = new Runnable() { // from class: com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.c
            @Override // java.lang.Runnable
            public final void run() {
                AnimationCoordinator.clearUnusedFrameLoaders$lambda$4();
            }
        };
        clearUnusedFrameLoaders = runnable2;
        animationCoordinator.getHandler().post(runnable);
        animationCoordinator.getHandler().post(runnable2);
    }

    private AnimationCoordinator() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void calculatePerformance$lambda$3() {
        float andSet = successCounter.getAndSet(0);
        float andSet2 = failuresCounter.getAndSet(0);
        float andSet3 = criticalCounter.getAndSet(0);
        float f10 = andSet + andSet2 + andSet3;
        if (f10 > 0.0f) {
            float f11 = andSet / f10;
            float f12 = andSet3 / f10;
            if (andSet2 / f10 <= 0.25f && f12 <= 0.1f) {
                if (f11 > 0.98f) {
                    for (Map.Entry<DynamicRenderingFps, Integer> entry : runningAnimations.entrySet()) {
                        INSTANCE.updateRenderingFps(entry.getKey(), entry.getValue().intValue());
                    }
                }
            } else {
                for (Map.Entry<DynamicRenderingFps, Integer> entry2 : runningAnimations.entrySet()) {
                    INSTANCE.updateRenderingFps(entry2.getKey(), -entry2.getValue().intValue());
                }
            }
            runningAnimations.clear();
        }
        INSTANCE.schedulePerformance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearUnusedFrameLoaders$lambda$4() {
        FrameLoaderFactory.Companion.clearUnusedUntil(new Date(System.currentTimeMillis() - 10000));
        INSTANCE.scheduleLoaders();
    }

    private final Handler getHandler() {
        return (Handler) handler$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler handler_delegate$lambda$0() {
        HandlerThread handlerThread = new HandlerThread("FrescoAnimationWorker");
        handlerThread.start();
        return new Handler(handlerThread.getLooper());
    }

    private final boolean scheduleLoaders() {
        return getHandler().postDelayed(clearUnusedFrameLoaders, 10000L);
    }

    private final boolean schedulePerformance() {
        return getHandler().postDelayed(calculatePerformance, 2000L);
    }

    private final void updateRenderingFps(DynamicRenderingFps dynamicRenderingFps, int i10) {
        int n10 = e.n(dynamicRenderingFps.getRenderingFps() + i10, (int) e.d(dynamicRenderingFps.getAnimationFps() * 0.5f, 1.0f), dynamicRenderingFps.getAnimationFps());
        if (n10 != dynamicRenderingFps.getRenderingFps()) {
            dynamicRenderingFps.setRenderingFps(n10);
        }
    }

    public final void onRenderFrame(@NotNull DynamicRenderingFps animation, @NotNull FrameResult frameResult) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        Intrinsics.checkNotNullParameter(frameResult, "frameResult");
        ConcurrentHashMap<DynamicRenderingFps, Integer> concurrentHashMap = runningAnimations;
        if (!concurrentHashMap.contains(animation)) {
            concurrentHashMap.put(animation, Integer.valueOf((int) (animation.getAnimationFps() * 0.2f)));
        }
        int i10 = WhenMappings.$EnumSwitchMapping$0[frameResult.getType().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    criticalCounter.incrementAndGet();
                    return;
                }
                throw new NoWhenBranchMatchedException();
            }
            failuresCounter.incrementAndGet();
            return;
        }
        successCounter.incrementAndGet();
    }
}
