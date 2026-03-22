package com.facebook.fresco.animation.bitmap;

import android.graphics.Bitmap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import o2.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BitmapFrameCache.kt */
@Metadata
/* loaded from: classes3.dex */
public interface BitmapFrameCache {

    /* compiled from: BitmapFrameCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static boolean isAnimationReady(@NotNull BitmapFrameCache bitmapFrameCache) {
            return false;
        }

        public static boolean onAnimationPrepared(@NotNull BitmapFrameCache bitmapFrameCache, @NotNull Map<Integer, ? extends a<Bitmap>> frameBitmaps) {
            Intrinsics.checkNotNullParameter(frameBitmaps, "frameBitmaps");
            return true;
        }
    }

    /* compiled from: BitmapFrameCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface FrameCacheListener {
        void onFrameCached(@NotNull BitmapFrameCache bitmapFrameCache, int i10);

        void onFrameEvicted(@NotNull BitmapFrameCache bitmapFrameCache, int i10);
    }

    void clear();

    boolean contains(int i10);

    @Nullable
    a<Bitmap> getBitmapToReuseForFrame(int i10, int i11, int i12);

    @Nullable
    a<Bitmap> getCachedFrame(int i10);

    @Nullable
    a<Bitmap> getFallbackFrame(int i10);

    int getSizeInBytes();

    boolean isAnimationReady();

    boolean onAnimationPrepared(@NotNull Map<Integer, ? extends a<Bitmap>> map);

    void onFramePrepared(int i10, @NotNull a<Bitmap> aVar, int i11);

    void onFrameRendered(int i10, @NotNull a<Bitmap> aVar, int i11);

    void setFrameCacheListener(@Nullable FrameCacheListener frameCacheListener);
}
