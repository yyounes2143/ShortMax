package com.unity3d.services.core.webview;

import com.unity3d.services.core.request.metrics.Metric;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: WebViewMetric.kt */
@Metadata
/* loaded from: classes7.dex */
public final class WebViewMetricKt {
    @NotNull
    public static final Metric webMessageListenerDisabledMetric() {
        return new Metric("web_message_listener_disabled", null, null, 6, null);
    }

    @NotNull
    public static final Metric webMessageListenerEnabledMetric() {
        return new Metric("web_message_listener_enabled", null, null, 6, null);
    }

    @NotNull
    public static final Metric webMessageListenerSupportedMetric() {
        return new Metric("web_message_listener_supported", null, null, 6, null);
    }

    @NotNull
    public static final Metric webMessageListenerUnsupportedMetric() {
        return new Metric("web_message_listener_unsupported", null, null, 6, null);
    }
}
