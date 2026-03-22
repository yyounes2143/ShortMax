package com.unity3d.ads.core.data.repository;

import com.google.ads.mediation.moloco.MolocoMediationAdapter;
import com.unity3d.ads.core.data.datasource.MediationDataSource;
import gatewayprotocol.v1.ClientInfoOuterClass;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidMediationRepository.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidMediationRepository implements MediationRepository {
    @NotNull
    private final MediationDataSource mediationDataSource;

    public AndroidMediationRepository(@NotNull MediationDataSource mediationDataSource) {
        Intrinsics.checkNotNullParameter(mediationDataSource, "mediationDataSource");
        this.mediationDataSource = mediationDataSource;
    }

    @Override // com.unity3d.ads.core.data.repository.MediationRepository
    @NotNull
    public Function0<ClientInfoOuterClass.MediationProvider> getMediationProvider() {
        return new Function0<ClientInfoOuterClass.MediationProvider>() { // from class: com.unity3d.ads.core.data.repository.AndroidMediationRepository$mediationProvider$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ClientInfoOuterClass.MediationProvider invoke() {
                ClientInfoOuterClass.MediationProvider mediationProvider;
                String name = AndroidMediationRepository.this.getName();
                if (name != null) {
                    if (StringsKt.V(name, "AppLovinSdk_", false, 2, null)) {
                        mediationProvider = ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_MAX;
                    } else if (StringsKt.G(name, MolocoMediationAdapter.MEDIATION_PLATFORM_NAME, true)) {
                        mediationProvider = ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_ADMOB;
                    } else if (StringsKt.G(name, "MAX", true)) {
                        mediationProvider = ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_MAX;
                    } else {
                        mediationProvider = StringsKt.G(name, "ironSource", true) ? ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_LEVELPLAY : ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_CUSTOM;
                    }
                    if (mediationProvider != null) {
                        return mediationProvider;
                    }
                }
                return ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_UNSPECIFIED;
            }
        };
    }

    @Override // com.unity3d.ads.core.data.repository.MediationRepository
    @Nullable
    public String getName() {
        return this.mediationDataSource.getName();
    }

    @Override // com.unity3d.ads.core.data.repository.MediationRepository
    @Nullable
    public String getVersion() {
        return this.mediationDataSource.getVersion();
    }
}
