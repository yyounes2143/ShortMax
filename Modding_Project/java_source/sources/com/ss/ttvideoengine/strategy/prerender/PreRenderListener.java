package com.ss.ttvideoengine.strategy.prerender;

import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.strategy.source.StrategySource;
/* loaded from: classes6.dex */
public interface PreRenderListener {
    default TTVideoEngine createPreRenderEngine(StrategySource strategySource) {
        return null;
    }

    default void onPreRenderEngineCreated(TTVideoEngine tTVideoEngine, StrategySource strategySource) {
    }
}
