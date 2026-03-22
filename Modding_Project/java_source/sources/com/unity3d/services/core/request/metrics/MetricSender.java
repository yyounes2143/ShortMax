package com.unity3d.services.core.request.metrics;

import bt.a;
import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.di.IServiceComponent;
import com.unity3d.services.core.di.IServiceProvider;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.properties.InitializationStatusReader;
import gt.d0;
import gt.g;
import gt.g0;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MetricSender.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMetricSender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetricSender.kt\ncom/unity3d/services/core/request/metrics/MetricSender\n+ 2 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n+ 3 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,79:1\n16#2,4:80\n16#2,4:84\n49#3,4:88\n*S KotlinDebug\n*F\n+ 1 MetricSender.kt\ncom/unity3d/services/core/request/metrics/MetricSender\n*L\n25#1:80,4\n26#1:84,4\n53#1:88,4\n*E\n"})
/* loaded from: classes7.dex */
public class MetricSender extends MetricSenderBase implements IServiceComponent {
    @NotNull
    private final MetricCommonTags commonTags;
    @NotNull
    private final ISDKDispatchers dispatchers;
    @NotNull
    private final HttpClient httpClient;
    @Nullable
    private final String metricEndPoint;
    @NotNull
    private final String metricSampleRate;
    @NotNull
    private final g0 scope;
    private final String sessionToken;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetricSender(@NotNull Configuration configuration, @NotNull InitializationStatusReader initializationStatusReader) {
        super(initializationStatusReader);
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(initializationStatusReader, "initializationStatusReader");
        MetricCommonTags metricCommonTags = new MetricCommonTags();
        metricCommonTags.updateWithConfig(configuration);
        this.commonTags = metricCommonTags;
        this.metricSampleRate = String.valueOf(a.b(configuration.getMetricSampleRate()));
        this.sessionToken = configuration.getSessionToken();
        ISDKDispatchers iSDKDispatchers = (ISDKDispatchers) getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class));
        this.dispatchers = iSDKDispatchers;
        this.httpClient = (HttpClient) getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(HttpClient.class));
        this.scope = i.a(iSDKDispatchers.getIo());
        this.metricEndPoint = configuration.getMetricsUrl();
    }

    @Override // com.unity3d.services.core.request.metrics.SDKMetricsSender
    @Nullable
    public String getMetricEndPoint() {
        return this.metricEndPoint;
    }

    @Override // com.unity3d.services.core.di.IServiceComponent
    @NotNull
    public IServiceProvider getServiceProvider() {
        return IServiceComponent.DefaultImpls.getServiceProvider(this);
    }

    @Override // com.unity3d.services.core.request.metrics.SDKMetricsSender
    public void sendEvent(@NotNull String event, @Nullable String str, @NotNull Map<String, String> tags) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(tags, "tags");
        if (event.length() == 0) {
            DeviceLog.debug("Metric event not sent due to being null or empty: " + event);
            return;
        }
        sendMetrics(CollectionsKt.e(new Metric(event, str, tags)));
    }

    @Override // com.unity3d.services.core.request.metrics.SDKMetricsSender
    public void sendMetric(@NotNull Metric metric) {
        Intrinsics.checkNotNullParameter(metric, "metric");
        sendMetrics(CollectionsKt.e(metric));
    }

    @Override // com.unity3d.services.core.request.metrics.SDKMetricsSender
    public void sendMetrics(@NotNull List<Metric> metrics) {
        Intrinsics.checkNotNullParameter(metrics, "metrics");
        if (metrics.isEmpty()) {
            DeviceLog.debug("Metrics event not send due to being empty");
            return;
        }
        String metricEndPoint = getMetricEndPoint();
        if (metricEndPoint != null && !StringsKt.t0(metricEndPoint)) {
            g.d(this.scope, new MetricSender$sendMetrics$$inlined$CoroutineExceptionHandler$1(d0.D8, metrics), null, new MetricSender$sendMetrics$1(this, metrics, null), 2, null);
            return;
        }
        DeviceLog.debug("Metrics: " + metrics + " was not sent to null or empty endpoint: " + getMetricEndPoint());
    }

    public final void shutdown() {
        this.commonTags.shutdown();
    }
}
