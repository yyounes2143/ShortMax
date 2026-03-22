package com.ss.ttvideoengine.info;
/* loaded from: classes6.dex */
public interface networkRTTLevelListener {
    default int getNetworkRTTMs() {
        return -1;
    }

    default int onNetworkLog() {
        return -1;
    }
}
