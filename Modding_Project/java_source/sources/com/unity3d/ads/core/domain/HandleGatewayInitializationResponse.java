package com.unity3d.ads.core.domain;

import gatewayprotocol.v1.InitializationResponseOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: HandleGatewayInitializationResponse.kt */
@Metadata
/* loaded from: classes7.dex */
public interface HandleGatewayInitializationResponse {
    @Nullable
    Object invoke(@NotNull InitializationResponseOuterClass.InitializationResponse initializationResponse, @NotNull c<? super Unit> cVar);
}
