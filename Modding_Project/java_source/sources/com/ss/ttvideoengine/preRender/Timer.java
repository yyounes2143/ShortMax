package com.ss.ttvideoengine.preRender;
/* loaded from: classes6.dex */
public interface Timer {

    /* loaded from: classes6.dex */
    public interface TimerListener {
        void trigger();
    }

    void addTimerListener(TimerListener timerListener);

    void removeTimerListener(TimerListener timerListener);

    void start();

    void stop();
}
