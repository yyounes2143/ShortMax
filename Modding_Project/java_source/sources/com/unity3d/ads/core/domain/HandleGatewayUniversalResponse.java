package com.unity3d.ads.core.domain;

import gatewayprotocol.v1.UniversalResponseOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: HandleGatewayUniversalResponse.kt */
@Metadata
/* loaded from: classes7.dex */
public interface HandleGatewayUniversalResponse {
    @Nullable
    Object invoke(@NotNull UniversalResponseOuterClass.UniversalResponse universalResponse, @NotNull c<? super Unit> cVar);
}
