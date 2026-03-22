package com.facebook.fresco.animation.bitmap.cache;

import android.graphics.Bitmap;
import com.facebook.fresco.animation.bitmap.BitmapFrameCache;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import o2.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NoOpCache.kt */
@Metadata
/* loaded from: classes3.dex */
public final class NoOpCache implements BitmapFrameCache {
    private final int sizeInBytes;

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public boolean contains(int i10) {
        return false;
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    @Nullable
    public a<Bitmap> getBitmapToReuseForFrame(int i10, int i11, int i12) {
        return null;
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    @Nullable
    public a<Bitmap> getCachedFrame(int i10) {
        return null;
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    @Nullable
    public a<Bitmap> getFallbackFrame(int i10) {
        return null;
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public int getSizeInBytes() {
        return this.sizeInBytes;
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public boolean isAnimationReady() {
        return BitmapFrameCache.DefaultImpls.isAnimationReady(this);
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public boolean onAnimationPrepared(@NotNull Map<Integer, ? extends a<Bitmap>> map) {
        return BitmapFrameCache.DefaultImpls.onAnimationPrepared(this, map);
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public void onFramePrepared(int i10, @NotNull a<Bitmap> bitmapReference, int i11) {
        Intrinsics.checkNotNullParameter(bitmapReference, "bitmapReference");
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public void onFrameRendered(int i10, @NotNull a<Bitmap> bitmapReference, int i11) {
        Intrinsics.checkNotNullParameter(bitmapReference, "bitmapReference");
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public void clear() {
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public void setFrameCacheListener(@Nullable BitmapFrameCache.FrameCacheListener frameCacheListener) {
    }
}
