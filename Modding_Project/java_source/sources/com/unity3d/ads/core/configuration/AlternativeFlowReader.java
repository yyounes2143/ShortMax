package com.unity3d.ads.core.configuration;

import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.services.core.configuration.ConfigurationReader;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.o;
import kt.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: AlternativeFlowReader.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAlternativeFlowReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlternativeFlowReader.kt\ncom/unity3d/ads/core/configuration/AlternativeFlowReader\n+ 2 MetadataReader.kt\ncom/unity3d/ads/core/configuration/MetadataReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n7#2,7:45\n1#3:52\n*S KotlinDebug\n*F\n+ 1 AlternativeFlowReader.kt\ncom/unity3d/ads/core/configuration/AlternativeFlowReader\n*L\n22#1:45,7\n*E\n"})
/* loaded from: classes7.dex */
public class AlternativeFlowReader {
    @NotNull
    private final ConfigurationReader configurationReader;
    @NotNull
    private final e<Boolean> isAlternativeFlowEnabled;
    @NotNull
    private final e<Boolean> isAlternativeFlowRead;
    @NotNull
    private final MediationTraitsMetadataReader mediationMetadataReader;
    @NotNull
    private final SessionRepository sessionRepository;

    public AlternativeFlowReader(@NotNull ConfigurationReader configurationReader, @NotNull SessionRepository sessionRepository, @NotNull MediationTraitsMetadataReader mediationMetadataReader) {
        Intrinsics.checkNotNullParameter(configurationReader, "configurationReader");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(mediationMetadataReader, "mediationMetadataReader");
        this.configurationReader = configurationReader;
        this.sessionRepository = sessionRepository;
        this.mediationMetadataReader = mediationMetadataReader;
        this.isAlternativeFlowRead = o.a(Boolean.FALSE);
        this.isAlternativeFlowEnabled = o.a(Boolean.TRUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0037, code lost:
        if (r0 == null) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean invoke() {
        /*
            r4 = this;
            kt.e<java.lang.Boolean> r0 = r4.isAlternativeFlowRead
            java.lang.Object r0 = r0.getValue()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L1b
            kt.e<java.lang.Boolean> r0 = r4.isAlternativeFlowEnabled
            java.lang.Object r0 = r0.getValue()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            return r0
        L1b:
            com.unity3d.ads.core.configuration.MediationTraitsMetadataReader r0 = r4.mediationMetadataReader
            com.unity3d.services.core.misc.JsonStorage r1 = r0.getJsonStorage()
            java.lang.String r0 = r0.getKey()
            java.lang.Object r0 = r1.get(r0)
            r1 = 0
            if (r0 == 0) goto L39
            java.lang.String r2 = "get(key)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            boolean r2 = r0 instanceof org.json.JSONObject
            if (r2 == 0) goto L36
            goto L37
        L36:
            r0 = r1
        L37:
            if (r0 != 0) goto L3a
        L39:
            r0 = r1
        L3a:
            org.json.JSONObject r0 = (org.json.JSONObject) r0
            if (r0 == 0) goto L5d
            java.lang.String r2 = "boldSdkEnabled"
            boolean r3 = r0.has(r2)
            if (r3 == 0) goto L47
            r1 = r0
        L47:
            if (r1 == 0) goto L5d
            kt.e<java.lang.Boolean> r0 = r4.isAlternativeFlowEnabled
            boolean r1 = r1.optBoolean(r2)
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.setValue(r1)
            kt.e<java.lang.Boolean> r0 = r4.isAlternativeFlowRead
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.setValue(r1)
        L5d:
            kt.e<java.lang.Boolean> r0 = r4.isAlternativeFlowRead
            java.lang.Object r0 = r0.getValue()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto La1
            com.unity3d.services.core.configuration.ConfigurationReader r0 = r4.configurationReader
            com.unity3d.services.core.configuration.Configuration r0 = r0.getCurrentConfiguration()
            com.unity3d.services.core.configuration.IExperiments r0 = r0.getExperiments()
            boolean r0 = r0.isBoldSdkNextSessionEnabled()
            if (r0 != 0) goto L83
            kt.e<java.lang.Boolean> r0 = r4.isAlternativeFlowEnabled
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r0.setValue(r1)
            goto L9a
        L83:
            kt.e<java.lang.Boolean> r0 = r4.isAlternativeFlowEnabled
            com.unity3d.ads.core.data.repository.SessionRepository r1 = r4.sessionRepository
            gatewayprotocol.v1.NativeConfigurationOuterClass$NativeConfiguration r1 = r1.getNativeConfiguration()
            gatewayprotocol.v1.NativeConfigurationOuterClass$FeatureFlags r1 = r1.getFeatureFlags()
            boolean r1 = r1.getBoldSdkNextSessionEnabled()
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.setValue(r1)
        L9a:
            kt.e<java.lang.Boolean> r0 = r4.isAlternativeFlowRead
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.setValue(r1)
        La1:
            kt.e<java.lang.Boolean> r0 = r4.isAlternativeFlowEnabled
            java.lang.Object r0 = r0.getValue()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.configuration.AlternativeFlowReader.invoke():boolean");
    }
}
