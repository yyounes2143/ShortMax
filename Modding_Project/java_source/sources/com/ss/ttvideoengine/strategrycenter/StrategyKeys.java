package com.ss.ttvideoengine.strategrycenter;
/* loaded from: classes6.dex */
public class StrategyKeys {
    public static int mInteractionBlockDurationNonPreloaded = 800;
    public static int mInteractionBlockDurationPreloaded = 400;

    public static void setIntValue(int i10, int i11) {
        if (i10 != 120) {
            if (i10 == 121) {
                mInteractionBlockDurationNonPreloaded = i11;
                return;
            }
            return;
        }
        mInteractionBlockDurationPreloaded = i11;
    }
}
