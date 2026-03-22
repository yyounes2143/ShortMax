package com.moloco.sdk.internal.services.config.handlers;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.Init$SDKInitResponse;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class b implements a {
    @Override // com.moloco.sdk.internal.services.config.handlers.a
    @NotNull
    /* renamed from: b */
    public com.moloco.sdk.internal.configs.a a(@NotNull Init$SDKInitResponse sdkInitResponse) {
        Intrinsics.checkNotNullParameter(sdkInitResponse, "sdkInitResponse");
        if (sdkInitResponse.hasOperationalMetricsConfig()) {
            Init$SDKInitResponse.OperationalMetricsConfig operationalMetricsConfig = sdkInitResponse.getOperationalMetricsConfig();
            String url = operationalMetricsConfig.getUrl();
            Intrinsics.checkNotNullExpressionValue(url, "getUrl(...)");
            return new com.moloco.sdk.internal.configs.a(url, operationalMetricsConfig.getPollingIntervalSeconds());
        }
        return com.moloco.sdk.internal.configs.b.a();
    }

    @Override // com.moloco.sdk.internal.services.config.handlers.a
    @NotNull
    public Class<com.moloco.sdk.internal.configs.a> a() {
        return com.moloco.sdk.internal.configs.a.class;
    }
}
