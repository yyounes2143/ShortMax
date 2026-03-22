package com.facebook.fresco.animation.bitmap.preparation;

import android.graphics.Bitmap;
import com.facebook.fresco.animation.backend.AnimationBackend;
import com.facebook.fresco.animation.bitmap.BitmapFrameCache;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BitmapFramePreparationStrategy.kt */
@Metadata
/* loaded from: classes3.dex */
public interface BitmapFramePreparationStrategy {

    /* compiled from: BitmapFramePreparationStrategy.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        @Nullable
        public static o2.a<Bitmap> getBitmapFrame(@NotNull BitmapFramePreparationStrategy bitmapFramePreparationStrategy, int i10, int i11, int i12) {
            return null;
        }

        public static void prepareFrames(@NotNull BitmapFramePreparationStrategy bitmapFramePreparationStrategy, int i10, int i11, @Nullable Function0<Unit> function0) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void prepareFrames$default(BitmapFramePreparationStrategy bitmapFramePreparationStrategy, BitmapFramePreparer bitmapFramePreparer, BitmapFrameCache bitmapFrameCache, AnimationBackend animationBackend, int i10, Function0 function0, int i11, Object obj) {
            if (obj == null) {
                Function0<Unit> function02 = function0;
                if ((i11 & 16) != 0) {
                    function02 = null;
                }
                bitmapFramePreparationStrategy.prepareFrames(bitmapFramePreparer, bitmapFrameCache, animationBackend, i10, function02);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: prepareFrames");
        }

        public static void prepareFrames(@NotNull BitmapFramePreparationStrategy bitmapFramePreparationStrategy, @NotNull BitmapFramePreparer bitmapFramePreparer, @NotNull BitmapFrameCache bitmapFrameCache, @NotNull AnimationBackend animationBackend, int i10, @Nullable Function0<Unit> function0) {
            Intrinsics.checkNotNullParameter(bitmapFramePreparer, "bitmapFramePreparer");
            Intrinsics.checkNotNullParameter(bitmapFrameCache, "bitmapFrameCache");
            Intrinsics.checkNotNullParameter(animationBackend, "animationBackend");
        }

        public static void clearFrames(@NotNull BitmapFramePreparationStrategy bitmapFramePreparationStrategy) {
        }

        public static void onStop(@NotNull BitmapFramePreparationStrategy bitmapFramePreparationStrategy) {
        }
    }

    void clearFrames();

    @Nullable
    o2.a<Bitmap> getBitmapFrame(int i10, int i11, int i12);

    void onStop();

    void prepareFrames(int i10, int i11, @Nullable Function0<Unit> function0);

    void prepareFrames(@NotNull BitmapFramePreparer bitmapFramePreparer, @NotNull BitmapFrameCache bitmapFrameCache, @NotNull AnimationBackend animationBackend, int i10, @Nullable Function0<Unit> function0);
}
