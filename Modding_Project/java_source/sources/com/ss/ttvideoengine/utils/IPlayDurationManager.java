package com.ss.ttvideoengine.utils;

import android.content.Context;
/* loaded from: classes6.dex */
public interface IPlayDurationManager {
    void clear();

    int getPlayedDuration();

    long getWiredPlayedDuration();

    long getWirelessPlayedDuration(Context context);

    void reset();

    void start();

    void stop();

    default void release() {
    }
}
