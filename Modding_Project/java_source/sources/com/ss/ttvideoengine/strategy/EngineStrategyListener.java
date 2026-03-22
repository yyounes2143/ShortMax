package com.ss.ttvideoengine.strategy;

import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.strategy.source.StrategySource;
/* loaded from: classes6.dex */
public interface EngineStrategyListener {
    default TTVideoEngine createPreRenderEngine(StrategySource strategySource) {
        return null;
    }

    default void onPreRenderEngineCreated(TTVideoEngine tTVideoEngine) {
    }

    default void onPreRenderEngineCreated(TTVideoEngine tTVideoEngine, StrategySource strategySource) {
        onPreRenderEngineCreated(tTVideoEngine);
    }
}
