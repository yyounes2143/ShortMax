package com.ss.ttvideoengine.selector.shift;

import android.util.Pair;
import androidx.annotation.Nullable;
import java.util.Set;
/* loaded from: classes6.dex */
public interface IGearConfig {
    @Nullable
    Pair<Double, Double> getBitrateInterval();

    double getDefaultBitrate();

    @Nullable
    String getDefaultGearName();

    @Nullable
    Set<String> getGearGroup();
}
