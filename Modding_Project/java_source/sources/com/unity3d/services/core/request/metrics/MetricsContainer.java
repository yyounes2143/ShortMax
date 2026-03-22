package com.unity3d.services.core.request.metrics;

import com.unity3d.services.core.device.Device;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.core.properties.Session;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MetricsContainer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMetricsContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetricsContainer.kt\ncom/unity3d/services/core/request/metrics/MetricsContainer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1549#2:51\n1620#2,3:52\n1#3:55\n*S KotlinDebug\n*F\n+ 1 MetricsContainer.kt\ncom/unity3d/services/core/request/metrics/MetricsContainer\n*L\n20#1:51\n20#1:52,3\n*E\n"})
/* loaded from: classes7.dex */
public final class MetricsContainer {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String METRICS_CONTAINER = "m";
    @NotNull
    private static final String METRICS_CONTAINER_TAGS = "t";
    @NotNull
    private static final String METRIC_CONTAINER_API_LEVEL = "apil";
    @NotNull
    private static final String METRIC_CONTAINER_DEVICE_MAKE = "deviceMake";
    @NotNull
    private static final String METRIC_CONTAINER_DEVICE_MODEL = "deviceModel";
    @NotNull
    private static final String METRIC_CONTAINER_DEVICE_NAME = "deviceName";
    @NotNull
    private static final String METRIC_CONTAINER_GAME_ID = "gameId";
    @NotNull
    private static final String METRIC_CONTAINER_SAMPLE_RATE = "msr";
    @NotNull
    private static final String METRIC_CONTAINER_SESSION_TOKEN = "sTkn";
    @NotNull
    private static final String METRIC_CONTAINER_SHARED_SESSION_ID = "shSid";
    @NotNull
    private final String apiLevel;
    @NotNull
    private final MetricCommonTags commonTags;
    private final String deviceManufacturer;
    private final String deviceModel;
    private final String deviceName;
    private final String gameId;
    @NotNull
    private final String metricSampleRate;
    @NotNull
    private final List<Metric> metrics;
    @Nullable
    private final String sTkn;
    @NotNull
    private final String shSid;

    /* compiled from: MetricsContainer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public MetricsContainer(@NotNull String metricSampleRate, @NotNull MetricCommonTags commonTags, @NotNull List<Metric> metrics, @Nullable String str) {
        Intrinsics.checkNotNullParameter(metricSampleRate, "metricSampleRate");
        Intrinsics.checkNotNullParameter(commonTags, "commonTags");
        Intrinsics.checkNotNullParameter(metrics, "metrics");
        this.metricSampleRate = metricSampleRate;
        this.commonTags = commonTags;
        this.metrics = metrics;
        this.sTkn = str;
        this.shSid = Session.Default.getId();
        this.apiLevel = String.valueOf(Device.getApiLevel());
        this.deviceModel = Device.getModel();
        this.deviceName = Device.getDevice();
        this.deviceManufacturer = Device.getManufacturer();
        this.gameId = ClientProperties.getGameId();
    }

    @NotNull
    public final Map<String, Object> toMap() {
        List<Metric> list = this.metrics;
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
        for (Metric metric : list) {
            arrayList.add(metric.toMap());
        }
        Map c10 = p0.c();
        c10.put(METRIC_CONTAINER_SAMPLE_RATE, this.metricSampleRate);
        c10.put(METRICS_CONTAINER, arrayList);
        c10.put("t", this.commonTags.toMap());
        c10.put(METRIC_CONTAINER_SHARED_SESSION_ID, this.shSid);
        c10.put(METRIC_CONTAINER_API_LEVEL, this.apiLevel);
        String str = this.sTkn;
        if (str != null) {
            c10.put(METRIC_CONTAINER_SESSION_TOKEN, str);
        }
        String deviceModel = this.deviceModel;
        if (deviceModel != null) {
            Intrinsics.checkNotNullExpressionValue(deviceModel, "deviceModel");
            c10.put(METRIC_CONTAINER_DEVICE_MODEL, deviceModel);
        }
        String deviceName = this.deviceName;
        if (deviceName != null) {
            Intrinsics.checkNotNullExpressionValue(deviceName, "deviceName");
            c10.put(METRIC_CONTAINER_DEVICE_NAME, deviceName);
        }
        String deviceManufacturer = this.deviceManufacturer;
        if (deviceManufacturer != null) {
            Intrinsics.checkNotNullExpressionValue(deviceManufacturer, "deviceManufacturer");
            c10.put(METRIC_CONTAINER_DEVICE_MAKE, deviceManufacturer);
        }
        String gameId = this.gameId;
        if (gameId != null) {
            Intrinsics.checkNotNullExpressionValue(gameId, "gameId");
            c10.put("gameId", gameId);
        }
        return p0.b(c10);
    }
}
