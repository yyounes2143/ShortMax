package com.moloco.sdk.internal.services.config;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.ConfigsOuterClass$Configs;
import com.moloco.sdk.Init$SDKInitResponse;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.o;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.q;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nRemoteConfigService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteConfigService.kt\ncom/moloco/sdk/internal/services/config/RemoteConfigService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,102:1\n1863#2,2:103\n1863#2,2:105\n1557#2:107\n1628#2,3:108\n*S KotlinDebug\n*F\n+ 1 RemoteConfigService.kt\ncom/moloco/sdk/internal/services/config/RemoteConfigService\n*L\n47#1:103,2\n57#1:105,2\n65#1:107\n65#1:108,3\n*E\n"})
/* loaded from: classes6.dex */
public final class b implements a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f33336a = "RemoteConfigService";
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final Map<String, Object> f33337b = new LinkedHashMap();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, String> f33338c = new LinkedHashMap();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final List<com.moloco.sdk.internal.services.config.handlers.a> f33339d = CollectionsKt.e(new com.moloco.sdk.internal.services.config.handlers.b());

    @Override // com.moloco.sdk.internal.services.config.a
    public void a(@NotNull Init$SDKInitResponse sdkInitResponse) {
        Intrinsics.checkNotNullParameter(sdkInitResponse, "sdkInitResponse");
        c(sdkInitResponse);
        d(sdkInitResponse);
    }

    @Override // com.moloco.sdk.internal.services.config.a
    @Nullable
    public String b(@NotNull String featureFlagName) {
        Intrinsics.checkNotNullParameter(featureFlagName, "featureFlagName");
        return this.f33338c.get(featureFlagName);
    }

    public final void c(Init$SDKInitResponse init$SDKInitResponse) {
        for (com.moloco.sdk.internal.services.config.handlers.a aVar : this.f33339d) {
            this.f33337b.put(aVar.a().getName(), aVar.a(init$SDKInitResponse));
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            String str = this.f33336a;
            MolocoLogger.info$default(molocoLogger, str, "Adding config: " + aVar.a().getName(), null, false, 12, null);
        }
        this.f33337b.put(o.class.getName(), e(init$SDKInitResponse));
    }

    public final void d(Init$SDKInitResponse init$SDKInitResponse) {
        String str;
        List<Init$SDKInitResponse.ExperimentalFeatureFlag> experimentalFeatureFlagsList = init$SDKInitResponse.getExperimentalFeatureFlagsList();
        Intrinsics.checkNotNullExpressionValue(experimentalFeatureFlagsList, "getExperimentalFeatureFlagsList(...)");
        for (Init$SDKInitResponse.ExperimentalFeatureFlag experimentalFeatureFlag : experimentalFeatureFlagsList) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            String str2 = this.f33336a;
            MolocoLogger.info$default(molocoLogger, str2, "Adding ExperimentalFeatureFlag: " + experimentalFeatureFlag.getName(), null, false, 12, null);
            Map<String, String> map = this.f33338c;
            String name = experimentalFeatureFlag.getName();
            String value = experimentalFeatureFlag.getValue();
            if (value != null && value.length() != 0) {
                str = experimentalFeatureFlag.getValue();
            } else {
                str = null;
            }
            map.put(name, str);
        }
    }

    public final o e(Init$SDKInitResponse init$SDKInitResponse) {
        o oVar;
        int a10;
        double c10;
        List<Init$SDKInitResponse.ExperimentalFeatureFlag> experimentalFeatureFlagsList = init$SDKInitResponse.getExperimentalFeatureFlagsList();
        Intrinsics.checkNotNullExpressionValue(experimentalFeatureFlagsList, "getExperimentalFeatureFlagsList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt.z(experimentalFeatureFlagsList, 10));
        for (Init$SDKInitResponse.ExperimentalFeatureFlag experimentalFeatureFlag : experimentalFeatureFlagsList) {
            arrayList.add(experimentalFeatureFlag.getName());
        }
        boolean contains = arrayList.contains("ANDROID_STREAMING_ENABLED");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        String str = this.f33336a;
        MolocoLogger.info$default(molocoLogger, str, "Adding StreamingEnabled: " + contains, null, false, 12, null);
        if (init$SDKInitResponse.hasConfigs() && init$SDKInitResponse.getConfigs().hasCommonConfigs() && init$SDKInitResponse.getConfigs().getCommonConfigs().hasMediaConfig()) {
            ConfigsOuterClass$Configs.CommonConfigs.MediaConfig mediaConfig = init$SDKInitResponse.getConfigs().getCommonConfigs().getMediaConfig();
            if (((int) init$SDKInitResponse.getConfigs().getCommonConfigs().getMediaConfig().getStreamingChunkSizeKilobytes()) > 0) {
                a10 = ((int) mediaConfig.getStreamingChunkSizeKilobytes()) * 1024;
            } else {
                a10 = q.a().a();
            }
            int i10 = a10;
            if (init$SDKInitResponse.getConfigs().getCommonConfigs().getMediaConfig().getMinStreamingPlayableDurationOnTimeoutSecs() > 0.0d) {
                c10 = mediaConfig.getMinStreamingPlayableDurationOnTimeoutSecs();
            } else {
                c10 = q.a().c();
            }
            oVar = new o(i10, contains, c10, q.a().b());
        } else {
            oVar = new o(q.a().a(), contains, q.a().c(), q.a().b());
        }
        String str2 = this.f33336a;
        MolocoLogger.debug$default(molocoLogger, str2, "Parsed and adding MediaConfig: " + oVar.a() + ", " + oVar.d() + ", " + oVar.c() + ", " + oVar.b() + ' ', false, 4, null);
        return oVar;
    }

    @Override // com.moloco.sdk.internal.services.config.a
    public <T> T b(@NotNull Class<T> configType, T t10) {
        Intrinsics.checkNotNullParameter(configType, "configType");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        String str = this.f33336a;
        MolocoLogger.debug$default(molocoLogger, str, "Retrieving config: " + configType, false, 4, null);
        T t11 = (T) this.f33337b.get(configType.getName());
        return t11 == null ? t10 : t11;
    }

    @Override // com.moloco.sdk.internal.services.config.a
    public boolean a(@NotNull String featureFlagName) {
        Intrinsics.checkNotNullParameter(featureFlagName, "featureFlagName");
        return this.f33338c.containsKey(featureFlagName);
    }
}
