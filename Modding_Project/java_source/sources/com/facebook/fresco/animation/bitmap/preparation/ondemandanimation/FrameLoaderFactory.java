package com.facebook.fresco.animation.bitmap.preparation.ondemandanimation;

import com.facebook.fresco.animation.backend.AnimationInformation;
import com.facebook.fresco.animation.bitmap.BitmapFrameRenderer;
import com.facebook.fresco.animation.bitmap.preparation.loadframe.FpsCompressorInfo;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimationLoaderFactory.kt */
@Metadata
/* loaded from: classes3.dex */
public final class FrameLoaderFactory {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ConcurrentHashMap<String, UnusedFrameLoader> UNUSED_FRAME_LOADERS = new ConcurrentHashMap<>();
    private final int bufferLengthMilliseconds;
    private final int maxFpsRender;
    @NotNull
    private final q3.d platformBitmapFactory;

    /* compiled from: AnimationLoaderFactory.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAnimationLoaderFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationLoaderFactory.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,65:1\n535#2:66\n520#2,6:67\n216#3,2:73\n*S KotlinDebug\n*F\n+ 1 AnimationLoaderFactory.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion\n*L\n53#1:66\n53#1:67,6\n55#1:73,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void clearUnusedUntil(@NotNull Date until) {
            Intrinsics.checkNotNullParameter(until, "until");
            synchronized (FrameLoaderFactory.UNUSED_FRAME_LOADERS) {
                try {
                    ConcurrentHashMap concurrentHashMap = FrameLoaderFactory.UNUSED_FRAME_LOADERS;
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (Map.Entry entry : concurrentHashMap.entrySet()) {
                        if (((UnusedFrameLoader) entry.getValue()).getInsertedTime().compareTo(until) < 0) {
                            linkedHashMap.put(entry.getKey(), entry.getValue());
                        }
                    }
                    for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                        ((UnusedFrameLoader) entry2.getValue()).getFrameLoader().clear();
                        FrameLoaderFactory.UNUSED_FRAME_LOADERS.remove(entry2.getKey());
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public final void saveUnusedFrame(@NotNull String cacheKey, @NotNull FrameLoader frameLoader) {
            Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
            Intrinsics.checkNotNullParameter(frameLoader, "frameLoader");
            FrameLoaderFactory.UNUSED_FRAME_LOADERS.put(cacheKey, new UnusedFrameLoader(frameLoader, new Date()));
        }

        private Companion() {
        }
    }

    public FrameLoaderFactory(@NotNull q3.d platformBitmapFactory, int i10, int i11) {
        Intrinsics.checkNotNullParameter(platformBitmapFactory, "platformBitmapFactory");
        this.platformBitmapFactory = platformBitmapFactory;
        this.maxFpsRender = i10;
        this.bufferLengthMilliseconds = i11;
    }

    @NotNull
    public final FrameLoader createBufferLoader(@NotNull String cacheKey, @NotNull BitmapFrameRenderer bitmapFrameRenderer, @NotNull AnimationInformation animationInformation) {
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        Intrinsics.checkNotNullParameter(bitmapFrameRenderer, "bitmapFrameRenderer");
        Intrinsics.checkNotNullParameter(animationInformation, "animationInformation");
        ConcurrentHashMap<String, UnusedFrameLoader> concurrentHashMap = UNUSED_FRAME_LOADERS;
        synchronized (concurrentHashMap) {
            UnusedFrameLoader unusedFrameLoader = concurrentHashMap.get(cacheKey);
            if (unusedFrameLoader != null) {
                concurrentHashMap.remove(cacheKey);
                return unusedFrameLoader.getFrameLoader();
            }
            Unit unit = Unit.f60915a;
            return new BufferFrameLoader(this.platformBitmapFactory, bitmapFrameRenderer, new FpsCompressorInfo(this.maxFpsRender), animationInformation, this.bufferLengthMilliseconds);
        }
    }
}
