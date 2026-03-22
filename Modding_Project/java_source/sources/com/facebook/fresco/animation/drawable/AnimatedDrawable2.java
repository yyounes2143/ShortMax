package com.facebook.fresco.animation.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import c3.d;
import com.facebook.fresco.animation.backend.AnimationBackend;
import com.facebook.fresco.animation.frame.DropFramesFrameScheduler;
import com.facebook.fresco.animation.frame.FrameScheduler;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimatedDrawable2.kt */
@Metadata
/* loaded from: classes3.dex */
public class AnimatedDrawable2 extends Drawable implements Animatable, u2.a {
    private static final int DEFAULT_FRAME_SCHEDULING_DELAY_MS = 8;
    private static final int DEFAULT_FRAME_SCHEDULING_OFFSET_MS = 0;
    @Nullable
    private AnimationBackend _animationBackend;
    private int _droppedFrames;
    private volatile boolean _isRunning;
    @NotNull
    private final AnimationBackend.Listener animationBackendListener;
    @NotNull
    private volatile AnimationListener animationListener;
    @Nullable
    private volatile DrawListener drawListener;
    @Nullable
    private d drawableProperties;
    private long expectedRenderTimeMs;
    @Nullable
    private FrameScheduler frameScheduler;
    private long frameSchedulingDelayMs;
    private long frameSchedulingOffsetMs;
    @NotNull
    private final Runnable invalidateRunnable;
    private int lastDrawnFrameNumber;
    private long lastFrameAnimationTimeMs;
    private int pausedLastDrawnFrameNumber;
    private long pausedLastFrameAnimationTimeMsDifference;
    private long pausedStartTimeMsDifference;
    private long startTimeMs;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Class<?> TAG = AnimatedDrawable2.class;
    @NotNull
    private static final AnimationListener NO_OP_LISTENER = new BaseAnimationListener();

    /* compiled from: AnimatedDrawable2.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final FrameScheduler createSchedulerForBackendAndDelayMethod(AnimationBackend animationBackend) {
            if (animationBackend == null) {
                return null;
            }
            return new DropFramesFrameScheduler(animationBackend);
        }

        private Companion() {
        }
    }

    /* compiled from: AnimatedDrawable2.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface DrawListener {
        void onDraw(@NotNull AnimatedDrawable2 animatedDrawable2, @NotNull FrameScheduler frameScheduler, int i10, boolean z10, boolean z11, long j10, long j11, long j12, long j13, long j14, long j15, long j16);
    }

    public AnimatedDrawable2() {
        this(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void animationBackendListener$lambda$0(AnimatedDrawable2 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.animationListener.onAnimationLoaded();
    }

    private final long now() {
        return SystemClock.uptimeMillis();
    }

    private final void onFrameDropped() {
        this._droppedFrames++;
        if (l2.a.n(2)) {
            l2.a.p(TAG, "Dropped a frame. Count: %s", Integer.valueOf(this._droppedFrames));
        }
    }

    private final void scheduleNextFrame(long j10) {
        long j11 = this.startTimeMs + j10;
        this.expectedRenderTimeMs = j11;
        scheduleSelf(this.invalidateRunnable, j11);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        long max;
        long j10;
        long j11;
        AnimatedDrawable2 animatedDrawable2;
        long j12;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this._animationBackend != null && this.frameScheduler != null) {
            long now = now();
            if (this._isRunning) {
                max = (now - this.startTimeMs) + this.frameSchedulingOffsetMs;
            } else {
                max = (long) Math.max(this.lastFrameAnimationTimeMs, 0.0d);
            }
            long j13 = max;
            FrameScheduler frameScheduler = this.frameScheduler;
            Intrinsics.checkNotNull(frameScheduler);
            int frameNumberToRender = frameScheduler.getFrameNumberToRender(j13, this.lastFrameAnimationTimeMs);
            if (frameNumberToRender != -1) {
                if (frameNumberToRender == 0 && this.lastDrawnFrameNumber != -1 && now >= this.expectedRenderTimeMs) {
                    this.animationListener.onAnimationRepeat(this);
                }
            } else {
                AnimationBackend animationBackend = this._animationBackend;
                Intrinsics.checkNotNull(animationBackend);
                frameNumberToRender = animationBackend.getFrameCount() - 1;
                this.animationListener.onAnimationStop(this);
                this._isRunning = false;
            }
            int i10 = frameNumberToRender;
            AnimationBackend animationBackend2 = this._animationBackend;
            Intrinsics.checkNotNull(animationBackend2);
            boolean drawFrame = animationBackend2.drawFrame(this, canvas, i10);
            if (drawFrame) {
                this.animationListener.onAnimationFrame(this, i10);
                this.lastDrawnFrameNumber = i10;
            }
            if (!drawFrame) {
                onFrameDropped();
            }
            long now2 = now();
            long j14 = -1;
            if (this._isRunning) {
                FrameScheduler frameScheduler2 = this.frameScheduler;
                Intrinsics.checkNotNull(frameScheduler2);
                long targetRenderTimeForNextFrameMs = frameScheduler2.getTargetRenderTimeForNextFrameMs(now2 - this.startTimeMs);
                if (targetRenderTimeForNextFrameMs != -1) {
                    j14 = this.frameSchedulingDelayMs + targetRenderTimeForNextFrameMs;
                    scheduleNextFrame(j14);
                } else {
                    this.animationListener.onAnimationStop(this);
                    this._isRunning = false;
                }
                j10 = targetRenderTimeForNextFrameMs;
                j11 = j14;
            } else {
                j10 = -1;
                j11 = -1;
            }
            DrawListener drawListener = this.drawListener;
            if (drawListener != null) {
                FrameScheduler frameScheduler3 = this.frameScheduler;
                if (frameScheduler3 != null) {
                    drawListener.onDraw(this, frameScheduler3, i10, drawFrame, this._isRunning, this.startTimeMs, j13, this.lastFrameAnimationTimeMs, now, now2, j10, j11);
                    animatedDrawable2 = this;
                    j12 = j13;
                } else {
                    throw new IllegalStateException("Required value was null.");
                }
            } else {
                animatedDrawable2 = this;
                j12 = j13;
            }
            animatedDrawable2.lastFrameAnimationTimeMs = j12;
        }
    }

    @Override // u2.a
    public void dropCaches() {
        AnimationBackend animationBackend = this._animationBackend;
        if (animationBackend != null) {
            animationBackend.clear();
        }
    }

    @Nullable
    public final AnimationBackend getAnimationBackend() {
        return this._animationBackend;
    }

    public final long getDroppedFrames() {
        return this._droppedFrames;
    }

    public final int getFrameCount() {
        AnimationBackend animationBackend = this._animationBackend;
        if (animationBackend == null) {
            return 0;
        }
        Intrinsics.checkNotNull(animationBackend);
        return animationBackend.getFrameCount();
    }

    public final int getFrameDurationMs(int i10) {
        AnimationBackend animationBackend = this._animationBackend;
        if (animationBackend == null) {
            return 0;
        }
        Intrinsics.checkNotNull(animationBackend);
        return animationBackend.getFrameDurationMs(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        AnimationBackend animationBackend = this._animationBackend;
        if (animationBackend != null) {
            return animationBackend.getIntrinsicHeight();
        }
        return super.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        AnimationBackend animationBackend = this._animationBackend;
        if (animationBackend != null) {
            return animationBackend.getIntrinsicWidth();
        }
        return super.getIntrinsicWidth();
    }

    public final int getLoopCount() {
        AnimationBackend animationBackend = this._animationBackend;
        if (animationBackend == null) {
            return 0;
        }
        Intrinsics.checkNotNull(animationBackend);
        return animationBackend.getLoopCount();
    }

    public final long getLoopDurationMs() {
        AnimationBackend animationBackend = this._animationBackend;
        if (animationBackend == null) {
            return 0L;
        }
        FrameScheduler frameScheduler = this.frameScheduler;
        if (frameScheduler != null) {
            Intrinsics.checkNotNull(frameScheduler);
            return frameScheduler.getLoopDurationMs();
        }
        Intrinsics.checkNotNull(animationBackend);
        int frameCount = animationBackend.getFrameCount();
        int i10 = 0;
        for (int i11 = 0; i11 < frameCount; i11++) {
            AnimationBackend animationBackend2 = this._animationBackend;
            Intrinsics.checkNotNull(animationBackend2);
            i10 += animationBackend2.getFrameDurationMs(i11);
        }
        return i10;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public final long getStartTimeMs() {
        return this.startTimeMs;
    }

    public final boolean isInfiniteAnimation() {
        FrameScheduler frameScheduler = this.frameScheduler;
        if (frameScheduler == null || !frameScheduler.isInfiniteAnimation()) {
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this._isRunning;
    }

    public final void jumpToFrame(int i10) {
        FrameScheduler frameScheduler;
        if (this._animationBackend != null && (frameScheduler = this.frameScheduler) != null) {
            Intrinsics.checkNotNull(frameScheduler);
            this.lastFrameAnimationTimeMs = frameScheduler.getTargetRenderTimeMs(i10);
            this.pausedLastDrawnFrameNumber = i10;
            this.pausedStartTimeMsDifference = 0L;
            this.pausedLastFrameAnimationTimeMsDifference = 0L;
            long now = now() - this.lastFrameAnimationTimeMs;
            this.startTimeMs = now;
            this.expectedRenderTimeMs = now;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(@NotNull Rect bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        super.onBoundsChange(bounds);
        AnimationBackend animationBackend = this._animationBackend;
        if (animationBackend != null) {
            animationBackend.setBounds(bounds);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        if (this._isRunning) {
            return false;
        }
        long j10 = i10;
        if (this.lastFrameAnimationTimeMs == j10) {
            return false;
        }
        this.lastFrameAnimationTimeMs = j10;
        invalidateSelf();
        return true;
    }

    public final void preloadAnimation() {
        AnimationBackend animationBackend = this._animationBackend;
        if (animationBackend != null) {
            animationBackend.preloadAnimation();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (this.drawableProperties == null) {
            this.drawableProperties = new d();
        }
        d dVar = this.drawableProperties;
        Intrinsics.checkNotNull(dVar);
        dVar.b(i10);
        AnimationBackend animationBackend = this._animationBackend;
        if (animationBackend != null) {
            animationBackend.setAlpha(i10);
        }
    }

    public final void setAnimationBackend(@Nullable AnimationBackend animationBackend) {
        AnimationBackend animationBackend2 = this._animationBackend;
        if (animationBackend2 != null) {
            Intrinsics.checkNotNull(animationBackend2);
            animationBackend2.setAnimationListener(null);
        }
        this._animationBackend = animationBackend;
        if (animationBackend != null) {
            AnimationBackend animationBackend3 = this._animationBackend;
            Intrinsics.checkNotNull(animationBackend3);
            this.frameScheduler = new DropFramesFrameScheduler(animationBackend3);
            AnimationBackend animationBackend4 = this._animationBackend;
            Intrinsics.checkNotNull(animationBackend4);
            animationBackend4.setAnimationListener(this.animationBackendListener);
            AnimationBackend animationBackend5 = this._animationBackend;
            Intrinsics.checkNotNull(animationBackend5);
            animationBackend5.setBounds(getBounds());
            d dVar = this.drawableProperties;
            if (dVar != null) {
                dVar.a(this);
            }
        }
        this.frameScheduler = Companion.createSchedulerForBackendAndDelayMethod(this._animationBackend);
        stop();
    }

    public final void setAnimationListener(@Nullable AnimationListener animationListener) {
        if (animationListener == null) {
            animationListener = NO_OP_LISTENER;
        }
        this.animationListener = animationListener;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.drawableProperties == null) {
            this.drawableProperties = new d();
        }
        d dVar = this.drawableProperties;
        Intrinsics.checkNotNull(dVar);
        dVar.c(colorFilter);
        AnimationBackend animationBackend = this._animationBackend;
        if (animationBackend != null) {
            animationBackend.setColorFilter(colorFilter);
        }
    }

    public final void setDrawListener(@Nullable DrawListener drawListener) {
        this.drawListener = drawListener;
    }

    public final void setFrameSchedulingDelayMs(long j10) {
        this.frameSchedulingDelayMs = j10;
    }

    public final void setFrameSchedulingOffsetMs(long j10) {
        this.frameSchedulingOffsetMs = j10;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        AnimationBackend animationBackend;
        if (!this._isRunning && (animationBackend = this._animationBackend) != null) {
            Intrinsics.checkNotNull(animationBackend);
            if (animationBackend.getFrameCount() > 1) {
                this._isRunning = true;
                long now = now();
                long j10 = now - this.pausedStartTimeMsDifference;
                this.startTimeMs = j10;
                this.expectedRenderTimeMs = j10;
                this.lastFrameAnimationTimeMs = now - this.pausedLastFrameAnimationTimeMsDifference;
                this.lastDrawnFrameNumber = this.pausedLastDrawnFrameNumber;
                invalidateSelf();
                this.animationListener.onAnimationStart(this);
            }
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (!this._isRunning) {
            return;
        }
        long now = now();
        this.pausedStartTimeMsDifference = now - this.startTimeMs;
        this.pausedLastFrameAnimationTimeMsDifference = now - this.lastFrameAnimationTimeMs;
        this.pausedLastDrawnFrameNumber = this.lastDrawnFrameNumber;
        this._isRunning = false;
        this.startTimeMs = 0L;
        this.expectedRenderTimeMs = 0L;
        this.lastFrameAnimationTimeMs = -1L;
        this.lastDrawnFrameNumber = -1;
        unscheduleSelf(this.invalidateRunnable);
        this.animationListener.onAnimationStop(this);
    }

    public /* synthetic */ AnimatedDrawable2(AnimationBackend animationBackend, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : animationBackend);
    }

    public AnimatedDrawable2(@Nullable AnimationBackend animationBackend) {
        this._animationBackend = animationBackend;
        this.frameSchedulingDelayMs = 8L;
        this.animationListener = NO_OP_LISTENER;
        AnimationBackend.Listener listener = new AnimationBackend.Listener() { // from class: com.facebook.fresco.animation.drawable.a
            @Override // com.facebook.fresco.animation.backend.AnimationBackend.Listener
            public final void onAnimationLoaded() {
                AnimatedDrawable2.animationBackendListener$lambda$0(AnimatedDrawable2.this);
            }
        };
        this.animationBackendListener = listener;
        this.invalidateRunnable = new Runnable() { // from class: com.facebook.fresco.animation.drawable.AnimatedDrawable2$invalidateRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                AnimatedDrawable2.this.unscheduleSelf(this);
                AnimatedDrawable2.this.invalidateSelf();
            }
        };
        this.frameScheduler = Companion.createSchedulerForBackendAndDelayMethod(this._animationBackend);
        AnimationBackend animationBackend2 = this._animationBackend;
        if (animationBackend2 != null) {
            animationBackend2.setAnimationListener(listener);
        }
    }
}
