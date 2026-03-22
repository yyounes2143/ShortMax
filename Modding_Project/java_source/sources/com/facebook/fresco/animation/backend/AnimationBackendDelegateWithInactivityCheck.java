package com.facebook.fresco.animation.backend;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import com.facebook.fresco.animation.backend.AnimationBackend;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import q2.b;
/* loaded from: classes3.dex */
public class AnimationBackendDelegateWithInactivityCheck<T extends AnimationBackend> extends AnimationBackendDelegate<T> {
    @VisibleForTesting
    static final long INACTIVITY_CHECK_POLLING_TIME_MS = 1000;
    @VisibleForTesting
    static final long INACTIVITY_THRESHOLD_MS = 2000;
    private long mInactivityCheckPollingTimeMs;
    private boolean mInactivityCheckScheduled;
    private InactivityListener mInactivityListener;
    private long mInactivityThresholdMs;
    private final Runnable mIsInactiveCheck;
    private long mLastDrawnTimeMs;
    private final b mMonotonicClock;
    private final ScheduledExecutorService mScheduledExecutorServiceForUiThread;

    /* loaded from: classes3.dex */
    public interface InactivityListener {
        void onInactive();
    }

    private AnimationBackendDelegateWithInactivityCheck(T t10, InactivityListener inactivityListener, b bVar, ScheduledExecutorService scheduledExecutorService) {
        super(t10);
        this.mInactivityCheckScheduled = false;
        this.mInactivityThresholdMs = 2000L;
        this.mInactivityCheckPollingTimeMs = 1000L;
        this.mIsInactiveCheck = new Runnable() { // from class: com.facebook.fresco.animation.backend.AnimationBackendDelegateWithInactivityCheck.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (AnimationBackendDelegateWithInactivityCheck.this) {
                    try {
                        AnimationBackendDelegateWithInactivityCheck.this.mInactivityCheckScheduled = false;
                        if (!AnimationBackendDelegateWithInactivityCheck.this.isInactive()) {
                            AnimationBackendDelegateWithInactivityCheck.this.maybeScheduleInactivityCheck();
                        } else if (AnimationBackendDelegateWithInactivityCheck.this.mInactivityListener != null) {
                            AnimationBackendDelegateWithInactivityCheck.this.mInactivityListener.onInactive();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        };
        this.mInactivityListener = inactivityListener;
        this.mMonotonicClock = bVar;
        this.mScheduledExecutorServiceForUiThread = scheduledExecutorService;
    }

    public static <T extends AnimationBackend & InactivityListener> AnimationBackendDelegate<T> createForBackend(T t10, b bVar, ScheduledExecutorService scheduledExecutorService) {
        return createForBackend(t10, (InactivityListener) t10, bVar, scheduledExecutorService);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInactive() {
        if (this.mMonotonicClock.now() - this.mLastDrawnTimeMs > this.mInactivityThresholdMs) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void maybeScheduleInactivityCheck() {
        if (!this.mInactivityCheckScheduled) {
            this.mInactivityCheckScheduled = true;
            this.mScheduledExecutorServiceForUiThread.schedule(this.mIsInactiveCheck, this.mInactivityCheckPollingTimeMs, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackendDelegate, com.facebook.fresco.animation.backend.AnimationBackend
    public boolean drawFrame(Drawable drawable, Canvas canvas, int i10) {
        this.mLastDrawnTimeMs = this.mMonotonicClock.now();
        boolean drawFrame = super.drawFrame(drawable, canvas, i10);
        maybeScheduleInactivityCheck();
        return drawFrame;
    }

    public long getInactivityCheckPollingTimeMs() {
        return this.mInactivityCheckPollingTimeMs;
    }

    public long getInactivityThresholdMs() {
        return this.mInactivityThresholdMs;
    }

    public void setInactivityCheckPollingTimeMs(long j10) {
        this.mInactivityCheckPollingTimeMs = j10;
    }

    public void setInactivityListener(InactivityListener inactivityListener) {
        this.mInactivityListener = inactivityListener;
    }

    public void setInactivityThresholdMs(long j10) {
        this.mInactivityThresholdMs = j10;
    }

    public static <T extends AnimationBackend> AnimationBackendDelegate<T> createForBackend(T t10, InactivityListener inactivityListener, b bVar, ScheduledExecutorService scheduledExecutorService) {
        return new AnimationBackendDelegateWithInactivityCheck(t10, inactivityListener, bVar, scheduledExecutorService);
    }
}
