package com.facebook.fresco.animation.bitmap.cache;

import android.graphics.Bitmap;
import com.facebook.fresco.animation.bitmap.BitmapFrameCache;
import com.facebook.imageutils.d;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o2.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KeepLastFrameCache.kt */
@Metadata
/* loaded from: classes3.dex */
public final class KeepLastFrameCache implements BitmapFrameCache {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int FRAME_NUMBER_UNSET = -1;
    @Nullable
    private BitmapFrameCache.FrameCacheListener frameCacheListener;
    @Nullable
    private a<Bitmap> lastBitmapReference;
    private int lastFrameNumber = -1;

    /* compiled from: KeepLastFrameCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private final synchronized void closeAndResetLastBitmapReference() {
        BitmapFrameCache.FrameCacheListener frameCacheListener;
        try {
            int i10 = this.lastFrameNumber;
            if (i10 != -1 && (frameCacheListener = this.frameCacheListener) != null) {
                frameCacheListener.onFrameEvicted(this, i10);
            }
            a.r(this.lastBitmapReference);
            this.lastBitmapReference = null;
            this.lastFrameNumber = -1;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized void clear() {
        closeAndResetLastBitmapReference();
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized boolean contains(int i10) {
        boolean z10;
        if (i10 == this.lastFrameNumber) {
            if (a.v(this.lastBitmapReference)) {
                z10 = true;
            }
        }
        z10 = false;
        return z10;
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    @Nullable
    public synchronized a<Bitmap> getBitmapToReuseForFrame(int i10, int i11, int i12) {
        a<Bitmap> p10;
        p10 = a.p(this.lastBitmapReference);
        closeAndResetLastBitmapReference();
        return p10;
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    @Nullable
    public synchronized a<Bitmap> getCachedFrame(int i10) {
        a<Bitmap> aVar;
        if (this.lastFrameNumber == i10) {
            aVar = a.p(this.lastBitmapReference);
        } else {
            aVar = null;
        }
        return aVar;
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    @Nullable
    public synchronized a<Bitmap> getFallbackFrame(int i10) {
        return a.p(this.lastBitmapReference);
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized int getSizeInBytes() {
        int j10;
        a<Bitmap> aVar = this.lastBitmapReference;
        if (aVar == null) {
            j10 = 0;
        } else {
            Intrinsics.checkNotNull(aVar);
            j10 = d.j(aVar.s());
        }
        return j10;
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
    public synchronized void onFrameRendered(int i10, @NotNull a<Bitmap> bitmapReference, int i11) {
        BitmapFrameCache.FrameCacheListener frameCacheListener;
        Bitmap bitmap;
        try {
            Intrinsics.checkNotNullParameter(bitmapReference, "bitmapReference");
            if (this.lastBitmapReference != null) {
                Bitmap s10 = bitmapReference.s();
                a<Bitmap> aVar = this.lastBitmapReference;
                if (aVar != null) {
                    bitmap = aVar.s();
                } else {
                    bitmap = null;
                }
                if (Intrinsics.areEqual(s10, bitmap)) {
                    return;
                }
            }
            a.r(this.lastBitmapReference);
            int i12 = this.lastFrameNumber;
            if (i12 != -1 && (frameCacheListener = this.frameCacheListener) != null) {
                frameCacheListener.onFrameEvicted(this, i12);
            }
            this.lastBitmapReference = a.p(bitmapReference);
            BitmapFrameCache.FrameCacheListener frameCacheListener2 = this.frameCacheListener;
            if (frameCacheListener2 != null) {
                frameCacheListener2.onFrameCached(this, i10);
            }
            this.lastFrameNumber = i10;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public void setFrameCacheListener(@Nullable BitmapFrameCache.FrameCacheListener frameCacheListener) {
        this.frameCacheListener = frameCacheListener;
    }
}
