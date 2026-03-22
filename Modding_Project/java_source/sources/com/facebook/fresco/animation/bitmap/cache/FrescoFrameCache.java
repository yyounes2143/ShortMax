package com.facebook.fresco.animation.bitmap.cache;

import android.graphics.Bitmap;
import android.util.SparseArray;
import androidx.annotation.VisibleForTesting;
import com.facebook.fresco.animation.bitmap.BitmapFrameCache;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import n3.c;
import o2.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.d;
import y3.e;
import y3.f;
import y3.o;
/* compiled from: FrescoFrameCache.kt */
@Metadata
/* loaded from: classes3.dex */
public final class FrescoFrameCache implements BitmapFrameCache {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Class<?> TAG = FrescoFrameCache.class;
    @NotNull
    private final c animatedFrameCache;
    private final boolean enableBitmapReusing;
    @Nullable
    private a<e> lastRenderedItem;
    @NotNull
    private final SparseArray<a<e>> preparedPendingFrames;

    /* compiled from: FrescoFrameCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final a<e> createImageReference(a<Bitmap> aVar) {
            f U = f.U(aVar, o.f70637d, 0);
            Intrinsics.checkNotNullExpressionValue(U, "of(...)");
            return a.w(U);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int getBitmapSizeBytes(a<e> aVar) {
            if (a.v(aVar)) {
                Intrinsics.checkNotNull(aVar);
                return getBitmapSizeBytes(aVar.s());
            }
            return 0;
        }

        @VisibleForTesting
        @Nullable
        public final a<Bitmap> convertToBitmapReferenceAndClose(@Nullable a<e> aVar) {
            try {
                if (a.v(aVar)) {
                    Intrinsics.checkNotNull(aVar);
                    if (aVar.s() instanceof f) {
                        e s10 = aVar.s();
                        Intrinsics.checkNotNull(s10, "null cannot be cast to non-null type com.facebook.imagepipeline.image.CloseableStaticBitmap");
                        return ((f) s10).E();
                    }
                }
                a.r(aVar);
                return null;
            } finally {
                a.r(aVar);
            }
        }

        private Companion() {
        }

        private final int getBitmapSizeBytes(e eVar) {
            if (eVar instanceof d) {
                return com.facebook.imageutils.d.j(((d) eVar).B0());
            }
            return 0;
        }
    }

    public FrescoFrameCache(@NotNull c animatedFrameCache, boolean z10) {
        Intrinsics.checkNotNullParameter(animatedFrameCache, "animatedFrameCache");
        this.animatedFrameCache = animatedFrameCache;
        this.enableBitmapReusing = z10;
        this.preparedPendingFrames = new SparseArray<>();
    }

    @VisibleForTesting
    @Nullable
    public static final a<Bitmap> convertToBitmapReferenceAndClose(@Nullable a<e> aVar) {
        return Companion.convertToBitmapReferenceAndClose(aVar);
    }

    private final synchronized int getPreparedPendingFramesSizeBytes() {
        int i10;
        int size = this.preparedPendingFrames.size();
        i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += Companion.getBitmapSizeBytes(this.preparedPendingFrames.valueAt(i11));
        }
        return i10;
    }

    private final synchronized void removePreparedReference(int i10) {
        a<e> aVar = this.preparedPendingFrames.get(i10);
        if (aVar != null) {
            this.preparedPendingFrames.delete(i10);
            a.r(aVar);
            l2.a.q(TAG, "removePreparedReference(%d) removed. Pending frames: %s", Integer.valueOf(i10), this.preparedPendingFrames);
        }
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized void clear() {
        try {
            a.r(this.lastRenderedItem);
            this.lastRenderedItem = null;
            int size = this.preparedPendingFrames.size();
            for (int i10 = 0; i10 < size; i10++) {
                a.r(this.preparedPendingFrames.valueAt(i10));
            }
            this.preparedPendingFrames.clear();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized boolean contains(int i10) {
        return this.animatedFrameCache.b(i10);
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    @Nullable
    public synchronized a<Bitmap> getBitmapToReuseForFrame(int i10, int i11, int i12) {
        if (!this.enableBitmapReusing) {
            return null;
        }
        return Companion.convertToBitmapReferenceAndClose(this.animatedFrameCache.d());
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    @Nullable
    public synchronized a<Bitmap> getCachedFrame(int i10) {
        return Companion.convertToBitmapReferenceAndClose(this.animatedFrameCache.c(i10));
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    @Nullable
    public synchronized a<Bitmap> getFallbackFrame(int i10) {
        return Companion.convertToBitmapReferenceAndClose(a.p(this.lastRenderedItem));
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized int getSizeInBytes() {
        return Companion.getBitmapSizeBytes(this.lastRenderedItem) + getPreparedPendingFramesSizeBytes();
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public boolean isAnimationReady() {
        return false;
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public boolean onAnimationPrepared(@NotNull Map<Integer, ? extends a<Bitmap>> frameBitmaps) {
        Intrinsics.checkNotNullParameter(frameBitmaps, "frameBitmaps");
        return true;
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized void onFramePrepared(int i10, @NotNull a<Bitmap> bitmapReference, int i11) {
        Intrinsics.checkNotNullParameter(bitmapReference, "bitmapReference");
        a<e> createImageReference = Companion.createImageReference(bitmapReference);
        if (createImageReference == null) {
            a.r(createImageReference);
            return;
        }
        a<e> a10 = this.animatedFrameCache.a(i10, createImageReference);
        if (a.v(a10)) {
            a.r(this.preparedPendingFrames.get(i10));
            this.preparedPendingFrames.put(i10, a10);
            l2.a.q(TAG, "cachePreparedFrame(%d) cached. Pending frames: %s", Integer.valueOf(i10), this.preparedPendingFrames);
        }
        a.r(createImageReference);
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized void onFrameRendered(int i10, @NotNull a<Bitmap> bitmapReference, int i11) {
        Intrinsics.checkNotNullParameter(bitmapReference, "bitmapReference");
        removePreparedReference(i10);
        a<e> createImageReference = Companion.createImageReference(bitmapReference);
        if (createImageReference != null) {
            a.r(this.lastRenderedItem);
            this.lastRenderedItem = this.animatedFrameCache.a(i10, createImageReference);
        }
        a.r(createImageReference);
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public void setFrameCacheListener(@Nullable BitmapFrameCache.FrameCacheListener frameCacheListener) {
    }
}
