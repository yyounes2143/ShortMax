package com.ss.ttvideoengine.playermetrcis;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public interface IMetricsInfo {
    default Map<String, Object> getMetricsInfo(String str) {
        return new HashMap();
    }
}
