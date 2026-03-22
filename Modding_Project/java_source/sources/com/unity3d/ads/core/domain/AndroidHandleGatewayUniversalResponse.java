package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidHandleGatewayUniversalResponse.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidHandleGatewayUniversalResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHandleGatewayUniversalResponse.kt\ncom/unity3d/ads/core/domain/AndroidHandleGatewayUniversalResponse\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,48:1\n230#2,5:49\n*S KotlinDebug\n*F\n+ 1 AndroidHandleGatewayUniversalResponse.kt\ncom/unity3d/ads/core/domain/AndroidHandleGatewayUniversalResponse\n*L\n27#1:49,5\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidHandleGatewayUniversalResponse implements HandleGatewayUniversalResponse {
    @NotNull
    private final DeviceInfoRepository deviceInfoRepository;
    @NotNull
    private final SessionRepository sessionRepository;

    public AndroidHandleGatewayUniversalResponse(@NotNull SessionRepository sessionRepository, @NotNull DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        this.sessionRepository = sessionRepository;
        this.deviceInfoRepository = deviceInfoRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f9  */
    @Override // com.unity3d.ads.core.domain.HandleGatewayUniversalResponse
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.NotNull gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse r9, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r10) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayUniversalResponse.invoke(gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse, rs.c):java.lang.Object");
    }
}
