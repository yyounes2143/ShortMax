package com.facebook.fresco.animation.bitmap.wrapper;

import android.graphics.Bitmap;
import android.graphics.Rect;
import com.facebook.fresco.animation.bitmap.BitmapFrameCache;
import com.facebook.fresco.animation.bitmap.BitmapFrameRenderer;
import com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import l3.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimatedDrawableBackendFrameRenderer.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AnimatedDrawableBackendFrameRenderer implements BitmapFrameRenderer {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Class<?> TAG = AnimatedDrawableBackendFrameRenderer.class;
    @NotNull
    private a animatedDrawableBackend;
    @NotNull
    private AnimatedImageCompositor animatedImageCompositor;
    @NotNull
    private final BitmapFrameCache bitmapFrameCache;
    @NotNull
    private final AnimatedImageCompositor.b callback;
    private final boolean isNewRenderImplementation;

    /* compiled from: AnimatedDrawableBackendFrameRenderer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AnimatedDrawableBackendFrameRenderer(@NotNull BitmapFrameCache bitmapFrameCache, @NotNull a animatedDrawableBackend, boolean z10) {
        Intrinsics.checkNotNullParameter(bitmapFrameCache, "bitmapFrameCache");
        Intrinsics.checkNotNullParameter(animatedDrawableBackend, "animatedDrawableBackend");
        this.bitmapFrameCache = bitmapFrameCache;
        this.animatedDrawableBackend = animatedDrawableBackend;
        this.isNewRenderImplementation = z10;
        AnimatedImageCompositor.b bVar = new AnimatedImageCompositor.b() { // from class: com.facebook.fresco.animation.bitmap.wrapper.AnimatedDrawableBackendFrameRenderer$callback$1
            @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
            public o2.a<Bitmap> getCachedBitmap(int i10) {
                BitmapFrameCache bitmapFrameCache2;
                bitmapFrameCache2 = AnimatedDrawableBackendFrameRenderer.this.bitmapFrameCache;
                return bitmapFrameCache2.getCachedFrame(i10);
            }

            @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
            public void onIntermediateResult(int i10, Bitmap bitmap) {
                Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            }
        };
        this.callback = bVar;
        this.animatedImageCompositor = new AnimatedImageCompositor(this.animatedDrawableBackend, z10, bVar);
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameRenderer
    public int getIntrinsicHeight() {
        return this.animatedDrawableBackend.getHeight();
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameRenderer
    public int getIntrinsicWidth() {
        return this.animatedDrawableBackend.getWidth();
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameRenderer
    public boolean renderFrame(int i10, @NotNull Bitmap targetBitmap) {
        Intrinsics.checkNotNullParameter(targetBitmap, "targetBitmap");
        try {
            this.animatedImageCompositor.h(i10, targetBitmap);
            return true;
        } catch (IllegalStateException e10) {
            l2.a.h(TAG, e10, "Rendering of frame unsuccessful. Frame number: %d", Integer.valueOf(i10));
            return false;
        }
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameRenderer
    public void setBounds(@Nullable Rect rect) {
        a g10 = this.animatedDrawableBackend.g(rect);
        Intrinsics.checkNotNullExpressionValue(g10, "forNewBounds(...)");
        if (g10 != this.animatedDrawableBackend) {
            this.animatedDrawableBackend = g10;
            this.animatedImageCompositor = new AnimatedImageCompositor(g10, this.isNewRenderImplementation, this.callback);
        }
    }
}
