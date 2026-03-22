package com.unity3d.ads.core.data.repository;

import gatewayprotocol.v1.ClientInfoOuterClass;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MediationRepository.kt */
@Metadata
/* loaded from: classes7.dex */
public interface MediationRepository {
    @NotNull
    Function0<ClientInfoOuterClass.MediationProvider> getMediationProvider();

    @Nullable
    String getName();

    @Nullable
    String getVersion();
}
