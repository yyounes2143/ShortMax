package com.ss.ttvideoengine.preRender;

import com.ss.ttvideoengine.preRender.Timer;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes6.dex */
public final class TimerDefault implements Timer {
    private ScheduledExecutorService mExecutor;
    private int mInternal;
    private final CopyOnWriteArrayList<Timer.TimerListener> mListeners;

    /* loaded from: classes6.dex */
    private static class Holder {
        private static final TimerDefault TIMER_DEFAULT = new TimerDefault();

        private Holder() {
        }
    }

    public static TimerDefault instance() {
        return Holder.TIMER_DEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void run() {
        Iterator<Timer.TimerListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            Timer.TimerListener next = it.next();
            if (next != null) {
                next.trigger();
            }
        }
    }

    @Override // com.ss.ttvideoengine.preRender.Timer
    public synchronized void addTimerListener(Timer.TimerListener timerListener) {
        if (timerListener == null) {
            return;
        }
        this.mListeners.addIfAbsent(timerListener);
    }

    @Override // com.ss.ttvideoengine.preRender.Timer
    public synchronized void removeTimerListener(Timer.TimerListener timerListener) {
        this.mListeners.remove(timerListener);
        if (this.mListeners.isEmpty()) {
            stopTimer();
        }
    }

    public void setInternal(int i10) {
        this.mInternal = i10;
    }

    @Override // com.ss.ttvideoengine.preRender.Timer
    public synchronized void start() {
        if (this.mListeners.isEmpty()) {
            stopTimer();
            return;
        }
        ScheduledExecutorService scheduledExecutorService = this.mExecutor;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
            this.mExecutor = newSingleThreadScheduledExecutor;
            newSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: com.ss.ttvideoengine.preRender.e
                @Override // java.lang.Runnable
                public final void run() {
                    TimerDefault.this.run();
                }
            }, 0L, this.mInternal, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.ss.ttvideoengine.preRender.Timer
    public synchronized void stop() {
    }

    public void stopTimer() {
        ScheduledExecutorService scheduledExecutorService = this.mExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
            this.mExecutor = null;
        }
    }

    private TimerDefault() {
        this.mInternal = 300;
        this.mListeners = new CopyOnWriteArrayList<>();
    }
}
