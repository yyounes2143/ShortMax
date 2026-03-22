package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.TelemetryConfig;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class Oa {

    /* renamed from: a  reason: collision with root package name */
    public static TelemetryConfig f23948a;

    /* renamed from: b  reason: collision with root package name */
    public static final Pc f23949b;

    static {
        Na na2 = new Na();
        LinkedHashMap linkedHashMap = O2.f23923a;
        Config a10 = M2.a("telemetry", Uc.b(), na2);
        Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig");
        TelemetryConfig telemetryConfig = (TelemetryConfig) a10;
        f23948a = telemetryConfig;
        f23949b = new Pc(1 - telemetryConfig.getPingSamplingFactor());
    }

    public static void a(String eventType, Map keyValueMap) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(keyValueMap, "keyValueMap");
        if (Intrinsics.areEqual(eventType, "PingDBMaxLimitReached")) {
            Pd pd2 = Pd.f23988a;
            Pd.b(eventType, keyValueMap, Td.f24224a);
        } else if (f23949b.a()) {
            double d10 = 1;
            keyValueMap.put("samplingRate", Integer.valueOf((int) ((d10 - f23948a.getSamplingFactor()) * (d10 - f23948a.getPingSamplingFactor()) * 100)));
            Pd pd3 = Pd.f23988a;
            Pd.b(eventType, keyValueMap, Td.f24224a);
        }
    }
}
