package com.ss.ttvideoengine.selector.shift;

import androidx.annotation.Nullable;
import java.util.List;
/* loaded from: classes6.dex */
public interface SpeedShiftConfig {
    @Nullable
    IAutoBitrateSet getIAutoBitrateSet();

    @Nullable
    List<? extends IBandwidthSet> getIBandwidthSets();

    @Nullable
    IGearConfig getIGearConfig();

    @Nullable
    List<? extends IGearSet> getIGearSets();
}
