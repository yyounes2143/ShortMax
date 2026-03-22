package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.datasource.WebviewConfigurationDataSource;
import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.data.repository.TcfRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidGetAdRequest.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidGetAdRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetAdRequest.kt\ncom/unity3d/ads/core/domain/AndroidGetAdRequest\n+ 2 AdRequestKt.kt\ngatewayprotocol/v1/AdRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n*L\n1#1,59:1\n10#2:60\n1#3:61\n1#3:62\n1#3:64\n484#4:63\n*S KotlinDebug\n*F\n+ 1 AndroidGetAdRequest.kt\ncom/unity3d/ads/core/domain/AndroidGetAdRequest\n*L\n31#1:60\n31#1:61\n52#1:64\n52#1:63\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidGetAdRequest implements GetAdRequest {
    @NotNull
    private final CampaignRepository campaignRepository;
    @NotNull
    private final DeviceInfoRepository deviceInfoRepository;
    @NotNull
    private final GetUniversalRequestForPayLoad getUniversalRequestForPayLoad;
    @NotNull
    private final SessionRepository sessionRepository;
    @NotNull
    private final TcfRepository tcfRepository;
    @NotNull
    private final WebviewConfigurationDataSource webViewConfigurationDataSource;

    public AndroidGetAdRequest(@NotNull GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, @NotNull SessionRepository sessionRepository, @NotNull DeviceInfoRepository deviceInfoRepository, @NotNull CampaignRepository campaignRepository, @NotNull WebviewConfigurationDataSource webViewConfigurationDataSource, @NotNull TcfRepository tcfRepository) {
        Intrinsics.checkNotNullParameter(getUniversalRequestForPayLoad, "getUniversalRequestForPayLoad");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(campaignRepository, "campaignRepository");
        Intrinsics.checkNotNullParameter(webViewConfigurationDataSource, "webViewConfigurationDataSource");
        Intrinsics.checkNotNullParameter(tcfRepository, "tcfRepository");
        this.getUniversalRequestForPayLoad = getUniversalRequestForPayLoad;
        this.sessionRepository = sessionRepository;
        this.deviceInfoRepository = deviceInfoRepository;
        this.campaignRepository = campaignRepository;
        this.webViewConfigurationDataSource = webViewConfigurationDataSource;
        this.tcfRepository = tcfRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x014d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x014e A[PHI: r1 
      PHI: (r1v26 java.lang.Object) = (r1v23 java.lang.Object), (r1v1 java.lang.Object) binds: [B:34:0x014b, B:13:0x0032] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    @Override // com.unity3d.ads.core.domain.GetAdRequest
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.NotNull java.lang.String r18, @org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r19, @org.jetbrains.annotations.Nullable gatewayprotocol.v1.AdRequestOuterClass.BannerSize r20, @org.jetbrains.annotations.NotNull rs.c<? super gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest> r21) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidGetAdRequest.invoke(java.lang.String, com.google.protobuf.ByteString, gatewayprotocol.v1.AdRequestOuterClass$BannerSize, rs.c):java.lang.Object");
    }
}
