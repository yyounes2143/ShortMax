package com.facebook.fresco.animation.drawable;

import android.os.SystemClock;
import com.facebook.fresco.animation.frame.FrameScheduler;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimationFrameScheduler.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AnimationFrameScheduler {
    private long expectedRenderTimeMs;
    @NotNull
    private final FrameScheduler frameScheduler;
    private long frameSchedulingDelayMs;
    private long frameSchedulingOffsetMs;
    private int framesDropped;
    private int lastDrawnFrameNumber;
    private long lastFrameAnimationTimeDifferenceMs;
    private long lastFrameAnimationTimeMs;
    private long pauseTimeMs;
    private int pausedLastDrawnFrameNumber;
    private boolean running;
    private long startMs;

    public AnimationFrameScheduler(@NotNull FrameScheduler frameScheduler) {
        Intrinsics.checkNotNullParameter(frameScheduler, "frameScheduler");
        this.frameScheduler = frameScheduler;
        this.frameSchedulingDelayMs = 8L;
        this.lastDrawnFrameNumber = -1;
        this.pausedLastDrawnFrameNumber = -1;
    }

    private final long now() {
        return SystemClock.uptimeMillis();
    }

    public final int frameToDraw() {
        long max;
        long now = now();
        if (this.running) {
            max = (now - this.startMs) + this.frameSchedulingOffsetMs;
        } else {
            max = Math.max(this.lastFrameAnimationTimeMs, 0L);
        }
        int frameNumberToRender = this.frameScheduler.getFrameNumberToRender(max, this.lastFrameAnimationTimeMs);
        this.lastFrameAnimationTimeMs = max;
        return frameNumberToRender;
    }

    public final long getFrameSchedulingDelayMs() {
        return this.frameSchedulingDelayMs;
    }

    public final long getFrameSchedulingOffsetMs() {
        return this.frameSchedulingOffsetMs;
    }

    public final int getLastDrawnFrameNumber() {
        return this.lastDrawnFrameNumber;
    }

    public final boolean getRunning() {
        return this.running;
    }

    public final boolean infinite() {
        return this.frameScheduler.isInfiniteAnimation();
    }

    public final long loopDuration() {
        return this.frameScheduler.getLoopDurationMs();
    }

    public final long nextRenderTime() {
        if (!this.running) {
            return -1L;
        }
        long targetRenderTimeForNextFrameMs = this.frameScheduler.getTargetRenderTimeForNextFrameMs(now() - this.startMs);
        if (targetRenderTimeForNextFrameMs != -1) {
            long j10 = targetRenderTimeForNextFrameMs + this.frameSchedulingDelayMs;
            this.expectedRenderTimeMs = this.startMs + j10;
            return j10;
        }
        this.running = false;
        return -1L;
    }

    public final void onFrameDropped() {
        this.framesDropped++;
    }

    public final void setFrameSchedulingDelayMs(long j10) {
        this.frameSchedulingDelayMs = j10;
    }

    public final void setFrameSchedulingOffsetMs(long j10) {
        this.frameSchedulingOffsetMs = j10;
    }

    public final void setLastDrawnFrameNumber(int i10) {
        this.lastDrawnFrameNumber = i10;
    }

    public final void setRunning(boolean z10) {
        this.running = z10;
    }

    public final boolean shouldRepeatAnimation() {
        if (this.lastDrawnFrameNumber != -1 && now() >= this.expectedRenderTimeMs) {
            return true;
        }
        return false;
    }

    public final void start() {
        if (!this.running) {
            long now = now();
            long j10 = now - this.pauseTimeMs;
            this.startMs = j10;
            this.expectedRenderTimeMs = j10;
            this.lastFrameAnimationTimeMs = now - this.lastFrameAnimationTimeDifferenceMs;
            this.lastDrawnFrameNumber = this.pausedLastDrawnFrameNumber;
            this.running = true;
        }
    }

    public final void stop() {
        if (this.running) {
            long now = now();
            this.pauseTimeMs = now - this.startMs;
            this.lastFrameAnimationTimeDifferenceMs = now - this.lastFrameAnimationTimeMs;
            this.startMs = 0L;
            this.expectedRenderTimeMs = 0L;
            this.lastFrameAnimationTimeMs = -1L;
            this.lastDrawnFrameNumber = -1;
            this.running = false;
        }
    }
}
