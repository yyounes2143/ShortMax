package com.facebook.fresco.animation.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import c3.d;
import com.facebook.fresco.animation.backend.AnimationBackend;
import com.facebook.fresco.animation.frame.DropFramesFrameScheduler;
import com.facebook.fresco.animation.frame.FrameScheduler;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KAnimatedDrawable2.kt */
@Metadata
@SourceDebugExtension({"SMAP\nKAnimatedDrawable2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KAnimatedDrawable2.kt\ncom/facebook/fresco/animation/drawable/KAnimatedDrawable2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,222:1\n1#2:223\n*E\n"})
/* loaded from: classes3.dex */
public class KAnimatedDrawable2 extends Drawable implements Animatable, u2.a {
    @NotNull
    private final AnimationFrameScheduler animatedFrameScheduler;
    @NotNull
    private AnimationBackend animationBackend;
    @NotNull
    private AnimationListener animationListener;
    @Nullable
    private DrawListener drawListener;
    @NotNull
    private final d drawableProperties;
    @NotNull
    private final KAnimatedDrawable2$invalidateRunnable$1 invalidateRunnable;
    private volatile boolean isRunning;

    /* compiled from: KAnimatedDrawable2.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface DrawListener {
        void onDraw(@NotNull KAnimatedDrawable2 kAnimatedDrawable2, @NotNull FrameScheduler frameScheduler, int i10, boolean z10, boolean z11, long j10, long j11, long j12, long j13, long j14, long j15, long j16);
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [com.facebook.fresco.animation.drawable.KAnimatedDrawable2$invalidateRunnable$1] */
    public KAnimatedDrawable2(@NotNull AnimationBackend animationBackend) {
        Intrinsics.checkNotNullParameter(animationBackend, "animationBackend");
        this.animationBackend = animationBackend;
        this.animatedFrameScheduler = new AnimationFrameScheduler(new DropFramesFrameScheduler(this.animationBackend));
        this.animationListener = new BaseAnimationListener();
        d dVar = new d();
        dVar.a(this);
        this.drawableProperties = dVar;
        this.invalidateRunnable = new Runnable() { // from class: com.facebook.fresco.animation.drawable.KAnimatedDrawable2$invalidateRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                KAnimatedDrawable2.this.unscheduleSelf(this);
                KAnimatedDrawable2.this.invalidateSelf();
            }
        };
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        int frameToDraw = this.animatedFrameScheduler.frameToDraw();
        if (frameToDraw == -1) {
            frameToDraw = this.animationBackend.getFrameCount() - 1;
            this.animatedFrameScheduler.setRunning(false);
            this.animationListener.onAnimationStop(this);
        } else if (frameToDraw == 0 && this.animatedFrameScheduler.shouldRepeatAnimation()) {
            this.animationListener.onAnimationRepeat(this);
        }
        if (this.animationBackend.drawFrame(this, canvas, frameToDraw)) {
            this.animationListener.onAnimationFrame(this, frameToDraw);
            this.animatedFrameScheduler.setLastDrawnFrameNumber(frameToDraw);
        } else {
            this.animatedFrameScheduler.onFrameDropped();
        }
        long nextRenderTime = this.animatedFrameScheduler.nextRenderTime();
        if (nextRenderTime != -1) {
            scheduleSelf(this.invalidateRunnable, nextRenderTime);
            return;
        }
        this.animationListener.onAnimationStop(this);
        this.animatedFrameScheduler.setRunning(false);
    }

    @Override // u2.a
    public void dropCaches() {
        this.animationBackend.clear();
    }

    public final int getFrameCount() {
        return this.animationBackend.getFrameCount();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.animationBackend.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.animationBackend.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.animatedFrameScheduler.getRunning();
    }

    public final int loopCount() {
        return this.animationBackend.getLoopCount();
    }

    public final int loopDurationMs() {
        return this.animationBackend.getLoopDurationMs();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(@NotNull Rect bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        this.animationBackend.setBounds(bounds);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.drawableProperties.b(i10);
        this.animationBackend.setAlpha(i10);
    }

    public final void setAnimationBackend(@Nullable AnimationBackend animationBackend) {
        if (animationBackend == null) {
            return;
        }
        stop();
        animationBackend.setBounds(getBounds());
        this.drawableProperties.a(this);
        this.animationBackend = animationBackend;
    }

    public final void setAnimationListener(@Nullable AnimationListener animationListener) {
        if (animationListener == null) {
            animationListener = this.animationListener;
        }
        this.animationListener = animationListener;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.drawableProperties.c(colorFilter);
        this.animationBackend.setColorFilter(colorFilter);
    }

    public final void setDrawListener(@Nullable DrawListener drawListener) {
        this.drawListener = drawListener;
    }

    public final void setFrameSchedulingDelayMs(long j10) {
        this.animatedFrameScheduler.setFrameSchedulingDelayMs(j10);
    }

    public final void setFrameSchedulingOffsetMs(long j10) {
        this.animatedFrameScheduler.setFrameSchedulingOffsetMs(j10);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.animationBackend.getFrameCount() <= 0) {
            return;
        }
        this.animatedFrameScheduler.start();
        this.animationListener.onAnimationStart(this);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.animatedFrameScheduler.stop();
        this.animationListener.onAnimationStop(this);
        unscheduleSelf(this.invalidateRunnable);
    }
}
