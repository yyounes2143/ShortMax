package com.ss.ttvideoengine;

import java.util.List;
/* loaded from: classes6.dex */
public interface NativeThreadInterface {
    void carethreadList(List<Integer> list);

    default int getPowerMode() {
        return 0;
    }

    float getProcessCpuUsage();

    default int getThermalStatus() {
        return 0;
    }

    float getThreadCpuUsage(int i10);

    default void onLowPowerModeChanged(int i10) {
    }

    default void onTempStatusChanged(int i10) {
    }
}
