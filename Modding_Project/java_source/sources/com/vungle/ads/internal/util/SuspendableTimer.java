package com.vungle.ads.internal.util;

import android.os.CountDownTimer;
import androidx.annotation.VisibleForTesting;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SuspendableTimer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SuspendableTimer {
    private final double durationSecs;
    private boolean isCanceled;
    private boolean isPaused;
    private double nextDurationSecs;
    @NotNull
    private final Function0<Unit> onFinish;
    @NotNull
    private final Function0<Unit> onTick;
    private final boolean repeats;
    private long startTimeMillis;
    @Nullable
    private CountDownTimer timer;

    public SuspendableTimer(double d10, boolean z10, @NotNull Function0<Unit> onTick, @NotNull Function0<Unit> onFinish) {
        Intrinsics.checkNotNullParameter(onTick, "onTick");
        Intrinsics.checkNotNullParameter(onFinish, "onFinish");
        this.durationSecs = d10;
        this.repeats = z10;
        this.onTick = onTick;
        this.onFinish = onFinish;
        this.nextDurationSecs = d10;
    }

    private final CountDownTimer createCountdown(final long j10) {
        return new CountDownTimer(j10, this) { // from class: com.vungle.ads.internal.util.SuspendableTimer$createCountdown$1
            final /* synthetic */ SuspendableTimer this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(j10, j10);
                this.this$0 = this;
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                Function0 function0;
                boolean z10;
                boolean z11;
                double d10;
                SuspendableTimer suspendableTimer = this.this$0;
                function0 = suspendableTimer.onFinish;
                function0.invoke();
                z10 = suspendableTimer.repeats;
                if (z10) {
                    z11 = suspendableTimer.isCanceled;
                    if (!z11) {
                        d10 = suspendableTimer.durationSecs;
                        suspendableTimer.setNextDurationSecs$vungle_ads_release(d10);
                        suspendableTimer.start();
                        return;
                    }
                }
                suspendableTimer.cancel();
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j11) {
                Function0 function0;
                function0 = this.this$0.onTick;
                function0.invoke();
            }
        };
    }

    private final long getDurationMillis() {
        return (long) (this.durationSecs * 1000);
    }

    private final double getElapsedSecs() {
        return getElapsedMillis$vungle_ads_release() / 1000;
    }

    private final long getNextDurationMillis() {
        return (long) (this.nextDurationSecs * 1000);
    }

    public final void cancel() {
        this.isPaused = false;
        this.isCanceled = true;
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.timer = null;
    }

    public final long getElapsedMillis$vungle_ads_release() {
        long currentTimeMillis;
        long j10;
        if (this.isPaused) {
            currentTimeMillis = getDurationMillis();
            j10 = getNextDurationMillis();
        } else {
            currentTimeMillis = System.currentTimeMillis();
            j10 = this.startTimeMillis;
        }
        return currentTimeMillis - j10;
    }

    public final double getNextDurationSecs$vungle_ads_release() {
        return this.nextDurationSecs;
    }

    public final long getStartTimeMillis$vungle_ads_release() {
        return this.startTimeMillis;
    }

    @Nullable
    public final CountDownTimer getTimer$vungle_ads_release() {
        return this.timer;
    }

    public final void pause() {
        if (this.timer == null) {
            return;
        }
        this.nextDurationSecs -= getElapsedSecs();
        this.isPaused = true;
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.timer = null;
    }

    public final void reset() {
        cancel();
        start();
    }

    public final void resume() {
        if (!this.isPaused) {
            return;
        }
        this.isPaused = false;
        start();
    }

    public final void setNextDurationSecs$vungle_ads_release(double d10) {
        this.nextDurationSecs = d10;
    }

    public final void setStartTimeMillis$vungle_ads_release(long j10) {
        this.startTimeMillis = j10;
    }

    public final void setTimer$vungle_ads_release(@Nullable CountDownTimer countDownTimer) {
        this.timer = countDownTimer;
    }

    public final void start() {
        this.startTimeMillis = System.currentTimeMillis();
        CountDownTimer createCountdown = createCountdown(getNextDurationMillis());
        this.timer = createCountdown;
        if (createCountdown != null) {
            createCountdown.start();
        }
    }

    public /* synthetic */ SuspendableTimer(double d10, boolean z10, Function0 function0, Function0 function02, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(d10, z10, (i10 & 4) != 0 ? new Function0<Unit>() { // from class: com.vungle.ads.internal.util.SuspendableTimer.1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }
        } : function0, function02);
    }

    @VisibleForTesting
    public static /* synthetic */ void getElapsedMillis$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getNextDurationSecs$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getStartTimeMillis$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getTimer$vungle_ads_release$annotations() {
    }
}
