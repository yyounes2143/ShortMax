package com.facebook.fresco.animation.drawable;

import com.facebook.fresco.animation.backend.AnimationBackend;
import com.facebook.fresco.animation.drawable.AnimatedDrawable2;
import com.facebook.fresco.animation.frame.FrameScheduler;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimatedDrawable2DebugDrawListener.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AnimatedDrawable2DebugDrawListener implements AnimatedDrawable2.DrawListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Class<?> TAG = AnimatedDrawable2DebugDrawListener.class;
    private int drawCalls;
    private int duplicateFrames;
    private int lastFrameNumber = -1;
    private int skippedFrames;

    /* compiled from: AnimatedDrawable2DebugDrawListener.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // com.facebook.fresco.animation.drawable.AnimatedDrawable2.DrawListener
    public void onDraw(@NotNull AnimatedDrawable2 animatedDrawable, @NotNull FrameScheduler frameScheduler, int i10, boolean z10, boolean z11, long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
        Intrinsics.checkNotNullParameter(animatedDrawable, "animatedDrawable");
        Intrinsics.checkNotNullParameter(frameScheduler, "frameScheduler");
        AnimationBackend animationBackend = animatedDrawable.getAnimationBackend();
        if (animationBackend != null) {
            int frameCount = animationBackend.getFrameCount();
            long j17 = j11 - j12;
            this.drawCalls++;
            int i11 = this.lastFrameNumber;
            int i12 = (i11 + 1) % frameCount;
            if (i12 != i10) {
                if (i11 == i10) {
                    this.duplicateFrames++;
                } else {
                    int i13 = (i10 - i12) % frameCount;
                    if (i13 < 0) {
                        i13 += frameCount;
                    }
                    this.skippedFrames += i13;
                }
            }
            this.lastFrameNumber = i10;
            l2.a.b(TAG, "draw: frame: %2d, drawn: %b, delay: %3d ms, rendering: %3d ms, prev: %3d ms ago, duplicates: %3d, skipped: %3d, draw calls: %4d, anim time: %6d ms, next start: %6d ms, next scheduled: %6d ms", Integer.valueOf(i10), Boolean.valueOf(z10), Long.valueOf((j11 % frameScheduler.getLoopDurationMs()) - frameScheduler.getTargetRenderTimeMs(i10)), Long.valueOf(j14 - j13), Long.valueOf(j17), Integer.valueOf(this.duplicateFrames), Integer.valueOf(this.skippedFrames), Integer.valueOf(this.drawCalls), Long.valueOf(j11), Long.valueOf(j15), Long.valueOf(j16));
        }
    }
}
