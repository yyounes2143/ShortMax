package com.ss.ttvideoengine.strategrycenter;

import java.util.Map;
/* loaded from: classes6.dex */
public class BaseStrategyStateSupplier implements IStrategyStateSupplier {
    @Override // com.ss.ttvideoengine.strategrycenter.IStrategyStateSupplier
    public double getNetworkSpeed() {
        return 0.0d;
    }

    @Override // com.ss.ttvideoengine.strategrycenter.IStrategyStateSupplier
    public Map<String, Object> mediaInfo(String str) {
        return null;
    }

    @Override // com.ss.ttvideoengine.strategrycenter.IStrategyStateSupplier
    public Map<String, Integer> selectBitrate(StrategyMediaParam strategyMediaParam) {
        return null;
    }

    @Override // com.ss.ttvideoengine.strategrycenter.IStrategyStateSupplier
    public Map<String, Integer> selectBitrate(String str, int i10) {
        return null;
    }
}
