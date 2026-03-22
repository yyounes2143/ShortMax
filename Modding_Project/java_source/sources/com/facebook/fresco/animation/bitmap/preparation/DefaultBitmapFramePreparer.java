package com.facebook.fresco.animation.bitmap.preparation;

import android.graphics.Bitmap;
import android.util.SparseArray;
import com.facebook.fresco.animation.backend.AnimationBackend;
import com.facebook.fresco.animation.bitmap.BitmapFrameCache;
import com.facebook.fresco.animation.bitmap.BitmapFrameRenderer;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import q3.d;
/* compiled from: DefaultBitmapFramePreparer.kt */
@Metadata
/* loaded from: classes3.dex */
public final class DefaultBitmapFramePreparer implements BitmapFramePreparer {
    @NotNull
    private final Class<DefaultBitmapFramePreparer> TAG;
    @NotNull
    private final Bitmap.Config bitmapConfig;
    @NotNull
    private final BitmapFrameRenderer bitmapFrameRenderer;
    @NotNull
    private final ExecutorService executorService;
    @NotNull
    private final SparseArray<Runnable> pendingFrameDecodeJobs;
    @NotNull
    private final d platformBitmapFactory;

    /* compiled from: DefaultBitmapFramePreparer.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDefaultBitmapFramePreparer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultBitmapFramePreparer.kt\ncom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n1#2:160\n*E\n"})
    /* loaded from: classes3.dex */
    private final class FrameDecodeRunnable implements Runnable {
        @NotNull
        private final AnimationBackend animationBackend;
        @NotNull
        private final BitmapFrameCache bitmapFrameCache;
        private final int frameId;
        private final int frameNumber;
        final /* synthetic */ DefaultBitmapFramePreparer this$0;

        public FrameDecodeRunnable(@NotNull DefaultBitmapFramePreparer defaultBitmapFramePreparer, @NotNull AnimationBackend animationBackend, BitmapFrameCache bitmapFrameCache, int i10, int i11) {
            Intrinsics.checkNotNullParameter(animationBackend, "animationBackend");
            Intrinsics.checkNotNullParameter(bitmapFrameCache, "bitmapFrameCache");
            this.this$0 = defaultBitmapFramePreparer;
            this.animationBackend = animationBackend;
            this.bitmapFrameCache = bitmapFrameCache;
            this.frameNumber = i10;
            this.frameId = i11;
        }

        private final boolean prepareFrameAndCache(int i10, int i11) {
            o2.a<Bitmap> bitmapToReuseForFrame;
            int i12 = 2;
            try {
                if (i11 != 1) {
                    if (i11 != 2) {
                        return false;
                    }
                    bitmapToReuseForFrame = this.this$0.platformBitmapFactory.b(this.animationBackend.getIntrinsicWidth(), this.animationBackend.getIntrinsicHeight(), this.this$0.bitmapConfig);
                    i12 = -1;
                } else {
                    bitmapToReuseForFrame = this.bitmapFrameCache.getBitmapToReuseForFrame(i10, this.animationBackend.getIntrinsicWidth(), this.animationBackend.getIntrinsicHeight());
                }
                boolean renderFrameAndCache = renderFrameAndCache(i10, bitmapToReuseForFrame, i11);
                o2.a.r(bitmapToReuseForFrame);
                if (!renderFrameAndCache && i12 != -1) {
                    return prepareFrameAndCache(i10, i12);
                }
                return renderFrameAndCache;
            } catch (RuntimeException e10) {
                l2.a.w(this.this$0.TAG, "Failed to create frame bitmap", e10);
                return false;
            } finally {
                o2.a.r(null);
            }
        }

        private final boolean renderFrameAndCache(int i10, o2.a<Bitmap> aVar, int i11) {
            if (o2.a.v(aVar) && aVar != null) {
                BitmapFrameRenderer bitmapFrameRenderer = this.this$0.bitmapFrameRenderer;
                Bitmap s10 = aVar.s();
                Intrinsics.checkNotNullExpressionValue(s10, "get(...)");
                if (bitmapFrameRenderer.renderFrame(i10, s10)) {
                    l2.a.p(this.this$0.TAG, "Frame %d ready.", Integer.valueOf(i10));
                    synchronized (this.this$0.pendingFrameDecodeJobs) {
                        this.bitmapFrameCache.onFramePrepared(i10, aVar, i11);
                        Unit unit = Unit.f60915a;
                    }
                    return true;
                }
            }
            return false;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.bitmapFrameCache.contains(this.frameNumber)) {
                    l2.a.p(this.this$0.TAG, "Frame %d is cached already.", Integer.valueOf(this.frameNumber));
                    SparseArray sparseArray = this.this$0.pendingFrameDecodeJobs;
                    DefaultBitmapFramePreparer defaultBitmapFramePreparer = this.this$0;
                    synchronized (sparseArray) {
                        defaultBitmapFramePreparer.pendingFrameDecodeJobs.remove(this.frameId);
                        Unit unit = Unit.f60915a;
                    }
                    return;
                }
                if (prepareFrameAndCache(this.frameNumber, 1)) {
                    l2.a.p(this.this$0.TAG, "Prepared frame %d.", Integer.valueOf(this.frameNumber));
                } else {
                    l2.a.g(this.this$0.TAG, "Could not prepare frame %d.", Integer.valueOf(this.frameNumber));
                }
                SparseArray sparseArray2 = this.this$0.pendingFrameDecodeJobs;
                DefaultBitmapFramePreparer defaultBitmapFramePreparer2 = this.this$0;
                synchronized (sparseArray2) {
                    defaultBitmapFramePreparer2.pendingFrameDecodeJobs.remove(this.frameId);
                    Unit unit2 = Unit.f60915a;
                }
            } catch (Throwable th2) {
                SparseArray sparseArray3 = this.this$0.pendingFrameDecodeJobs;
                DefaultBitmapFramePreparer defaultBitmapFramePreparer3 = this.this$0;
                synchronized (sparseArray3) {
                    defaultBitmapFramePreparer3.pendingFrameDecodeJobs.remove(this.frameId);
                    Unit unit3 = Unit.f60915a;
                    throw th2;
                }
            }
        }
    }

    public DefaultBitmapFramePreparer(@NotNull d platformBitmapFactory, @NotNull BitmapFrameRenderer bitmapFrameRenderer, @NotNull Bitmap.Config bitmapConfig, @NotNull ExecutorService executorService) {
        Intrinsics.checkNotNullParameter(platformBitmapFactory, "platformBitmapFactory");
        Intrinsics.checkNotNullParameter(bitmapFrameRenderer, "bitmapFrameRenderer");
        Intrinsics.checkNotNullParameter(bitmapConfig, "bitmapConfig");
        Intrinsics.checkNotNullParameter(executorService, "executorService");
        this.platformBitmapFactory = platformBitmapFactory;
        this.bitmapFrameRenderer = bitmapFrameRenderer;
        this.bitmapConfig = bitmapConfig;
        this.executorService = executorService;
        this.TAG = DefaultBitmapFramePreparer.class;
        this.pendingFrameDecodeJobs = new SparseArray<>();
    }

    private final int getUniqueId(AnimationBackend animationBackend, int i10) {
        return (animationBackend.hashCode() * 31) + i10;
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparer
    public boolean prepareFrame(@NotNull BitmapFrameCache bitmapFrameCache, @NotNull AnimationBackend animationBackend, int i10) {
        Intrinsics.checkNotNullParameter(bitmapFrameCache, "bitmapFrameCache");
        Intrinsics.checkNotNullParameter(animationBackend, "animationBackend");
        int uniqueId = getUniqueId(animationBackend, i10);
        synchronized (this.pendingFrameDecodeJobs) {
            if (this.pendingFrameDecodeJobs.get(uniqueId) != null) {
                l2.a.p(this.TAG, "Already scheduled decode job for frame %d", Integer.valueOf(i10));
                return true;
            } else if (bitmapFrameCache.contains(i10)) {
                l2.a.p(this.TAG, "Frame %d is cached already.", Integer.valueOf(i10));
                return true;
            } else {
                FrameDecodeRunnable frameDecodeRunnable = new FrameDecodeRunnable(this, animationBackend, bitmapFrameCache, i10, uniqueId);
                this.pendingFrameDecodeJobs.put(uniqueId, frameDecodeRunnable);
                this.executorService.execute(frameDecodeRunnable);
                Unit unit = Unit.f60915a;
                return true;
            }
        }
    }
}
