package com.facebook.fresco.animation.frame;

import androidx.annotation.VisibleForTesting;
import com.facebook.fresco.animation.backend.AnimationInformation;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DropFramesFrameScheduler.kt */
@Metadata
/* loaded from: classes3.dex */
public final class DropFramesFrameScheduler implements FrameScheduler {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int UNSET = -1;
    private long _loopDurationMs;
    @NotNull
    private final AnimationInformation animationInformation;

    /* compiled from: DropFramesFrameScheduler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public DropFramesFrameScheduler(@NotNull AnimationInformation animationInformation) {
        Intrinsics.checkNotNullParameter(animationInformation, "animationInformation");
        this.animationInformation = animationInformation;
        this._loopDurationMs = -1L;
    }

    @Override // com.facebook.fresco.animation.frame.FrameScheduler
    public int getFrameNumberToRender(long j10, long j11) {
        long loopDurationMs = getLoopDurationMs();
        if (loopDurationMs == 0) {
            return getFrameNumberWithinLoop(0L);
        }
        if (!isInfiniteAnimation() && j10 / loopDurationMs >= this.animationInformation.getLoopCount()) {
            return -1;
        }
        return getFrameNumberWithinLoop(j10 % loopDurationMs);
    }

    @VisibleForTesting
    public final int getFrameNumberWithinLoop(long j10) {
        int i10 = 0;
        long j11 = 0;
        while (true) {
            j11 += this.animationInformation.getFrameDurationMs(i10);
            int i11 = i10 + 1;
            if (j10 < j11) {
                return i10;
            }
            i10 = i11;
        }
    }

    @Override // com.facebook.fresco.animation.frame.FrameScheduler
    public long getLoopDurationMs() {
        long j10 = this._loopDurationMs;
        if (j10 != -1) {
            return j10;
        }
        this._loopDurationMs = 0L;
        int frameCount = this.animationInformation.getFrameCount();
        for (int i10 = 0; i10 < frameCount; i10++) {
            this._loopDurationMs += this.animationInformation.getFrameDurationMs(i10);
        }
        return this._loopDurationMs;
    }

    @Override // com.facebook.fresco.animation.frame.FrameScheduler
    public long getTargetRenderTimeForNextFrameMs(long j10) {
        long loopDurationMs = getLoopDurationMs();
        long j11 = 0;
        if (loopDurationMs == 0) {
            return -1L;
        }
        if (!isInfiniteAnimation() && j10 / loopDurationMs >= this.animationInformation.getLoopCount()) {
            return -1L;
        }
        long j12 = j10 % loopDurationMs;
        int frameCount = this.animationInformation.getFrameCount();
        for (int i10 = 0; i10 < frameCount && j11 <= j12; i10++) {
            j11 += this.animationInformation.getFrameDurationMs(i10);
        }
        return j10 + (j11 - j12);
    }

    @Override // com.facebook.fresco.animation.frame.FrameScheduler
    public long getTargetRenderTimeMs(int i10) {
        long j10 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j10 += this.animationInformation.getFrameDurationMs(i10);
        }
        return j10;
    }

    @Override // com.facebook.fresco.animation.frame.FrameScheduler
    public boolean isInfiniteAnimation() {
        if (this.animationInformation.getLoopCount() == 0) {
            return true;
        }
        return false;
    }
}
