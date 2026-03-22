package com.facebook.fresco.animation.bitmap.preparation;

import android.graphics.Bitmap;
import com.facebook.fresco.animation.backend.AnimationBackend;
import com.facebook.fresco.animation.bitmap.BitmapFrameCache;
import com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FixedNumberBitmapFramePreparationStrategy.kt */
@Metadata
/* loaded from: classes3.dex */
public final class FixedNumberBitmapFramePreparationStrategy implements BitmapFramePreparationStrategy {
    @NotNull
    private final Class<FixedNumberBitmapFramePreparationStrategy> TAG;
    private final int framesToPrepare;

    public FixedNumberBitmapFramePreparationStrategy() {
        this(0, 1, null);
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy
    public void clearFrames() {
        BitmapFramePreparationStrategy.DefaultImpls.clearFrames(this);
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy
    @Nullable
    public o2.a<Bitmap> getBitmapFrame(int i10, int i11, int i12) {
        return BitmapFramePreparationStrategy.DefaultImpls.getBitmapFrame(this, i10, i11, i12);
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy
    public void onStop() {
        BitmapFramePreparationStrategy.DefaultImpls.onStop(this);
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy
    public void prepareFrames(int i10, int i11, @Nullable Function0<Unit> function0) {
        BitmapFramePreparationStrategy.DefaultImpls.prepareFrames(this, i10, i11, function0);
    }

    public FixedNumberBitmapFramePreparationStrategy(int i10) {
        this.framesToPrepare = i10;
        this.TAG = FixedNumberBitmapFramePreparationStrategy.class;
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy
    public void prepareFrames(@NotNull BitmapFramePreparer bitmapFramePreparer, @NotNull BitmapFrameCache bitmapFrameCache, @NotNull AnimationBackend animationBackend, int i10, @Nullable Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(bitmapFramePreparer, "bitmapFramePreparer");
        Intrinsics.checkNotNullParameter(bitmapFrameCache, "bitmapFrameCache");
        Intrinsics.checkNotNullParameter(animationBackend, "animationBackend");
        int i11 = this.framesToPrepare;
        int i12 = 1;
        if (1 <= i11) {
            while (true) {
                int frameCount = (i10 + i12) % animationBackend.getFrameCount();
                if (l2.a.n(2)) {
                    l2.a.q(this.TAG, "Preparing frame %d, last drawn: %d", Integer.valueOf(frameCount), Integer.valueOf(i10));
                }
                if (!bitmapFramePreparer.prepareFrame(bitmapFrameCache, animationBackend, frameCount)) {
                    return;
                }
                if (i12 == i11) {
                    break;
                }
                i12++;
            }
        }
        if (function0 != null) {
            function0.invoke();
        }
    }

    public /* synthetic */ FixedNumberBitmapFramePreparationStrategy(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 3 : i10);
    }
}
