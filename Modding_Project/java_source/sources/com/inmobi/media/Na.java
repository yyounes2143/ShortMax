package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.TelemetryConfig;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Na implements N2 {
    @Override // com.inmobi.media.N2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof TelemetryConfig) {
            Oa.f23948a = (TelemetryConfig) config;
            Oa.f23949b.f23986a = 1 - Oa.f23948a.getPingSamplingFactor();
        }
    }
}
