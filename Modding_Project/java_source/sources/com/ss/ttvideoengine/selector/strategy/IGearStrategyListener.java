package com.ss.ttvideoengine.selector.strategy;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.model.IVideoModel;
import java.util.Map;
/* loaded from: classes6.dex */
public interface IGearStrategyListener {
    @Nullable
    default Map<String, Integer> selectBitrate(IVideoModel iVideoModel, Map<String, String> map, int i10) {
        return null;
    }

    default void onAfterSelect(IVideoModel iVideoModel, Map<String, String> map, int i10, Object obj) {
    }

    default void onBeforeSelect(IVideoModel iVideoModel, Map<String, String> map, int i10, Object obj) {
    }
}
