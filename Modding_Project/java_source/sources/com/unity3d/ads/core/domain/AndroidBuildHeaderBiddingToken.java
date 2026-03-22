package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.manager.OfferwallManager;
import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.data.repository.TcfRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidBuildHeaderBiddingToken.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidBuildHeaderBiddingToken.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidBuildHeaderBiddingToken.kt\ncom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken\n+ 2 HeaderBiddingTokenKt.kt\ngatewayprotocol/v1/HeaderBiddingTokenKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TokenCountersKt.kt\ngatewayprotocol/v1/TokenCountersKtKt\n*L\n1#1,76:1\n10#2:77\n1#3:78\n1#3:79\n1#3:81\n10#4:80\n*S KotlinDebug\n*F\n+ 1 AndroidBuildHeaderBiddingToken.kt\ncom/unity3d/ads/core/domain/AndroidBuildHeaderBiddingToken\n*L\n36#1:77\n36#1:78\n69#1:81\n69#1:80\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidBuildHeaderBiddingToken implements BuildHeaderBiddingToken {
    @NotNull
    private final CampaignRepository campaignRepository;
    @NotNull
    private final DeviceInfoRepository deviceInfoRepository;
    @NotNull
    private final GetByteStringId generateId;
    @NotNull
    private final GetClientInfo getClientInfo;
    @NotNull
    private final GetInitializationData getInitializationData;
    @NotNull
    private final GetLimitedSessionToken getLimitedSessionToken;
    @NotNull
    private final GetSharedDataTimestamps getTimestamps;
    @NotNull
    private final OfferwallManager offerwallManager;
    @NotNull
    private final SessionRepository sessionRepository;
    @NotNull
    private final TcfRepository tcfRepository;
    @NotNull
    private final AndroidTestDataInfo testDataInfo;

    public AndroidBuildHeaderBiddingToken(@NotNull GetByteStringId generateId, @NotNull GetClientInfo getClientInfo, @NotNull GetSharedDataTimestamps getTimestamps, @NotNull GetLimitedSessionToken getLimitedSessionToken, @NotNull GetInitializationData getInitializationData, @NotNull DeviceInfoRepository deviceInfoRepository, @NotNull SessionRepository sessionRepository, @NotNull CampaignRepository campaignRepository, @NotNull TcfRepository tcfRepository, @NotNull AndroidTestDataInfo testDataInfo, @NotNull OfferwallManager offerwallManager) {
        Intrinsics.checkNotNullParameter(generateId, "generateId");
        Intrinsics.checkNotNullParameter(getClientInfo, "getClientInfo");
        Intrinsics.checkNotNullParameter(getTimestamps, "getTimestamps");
        Intrinsics.checkNotNullParameter(getLimitedSessionToken, "getLimitedSessionToken");
        Intrinsics.checkNotNullParameter(getInitializationData, "getInitializationData");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(campaignRepository, "campaignRepository");
        Intrinsics.checkNotNullParameter(tcfRepository, "tcfRepository");
        Intrinsics.checkNotNullParameter(testDataInfo, "testDataInfo");
        Intrinsics.checkNotNullParameter(offerwallManager, "offerwallManager");
        this.generateId = generateId;
        this.getClientInfo = getClientInfo;
        this.getTimestamps = getTimestamps;
        this.getLimitedSessionToken = getLimitedSessionToken;
        this.getInitializationData = getInitializationData;
        this.deviceInfoRepository = deviceInfoRepository;
        this.sessionRepository = sessionRepository;
        this.campaignRepository = campaignRepository;
        this.tcfRepository = tcfRepository;
        this.testDataInfo = testDataInfo;
        this.offerwallManager = offerwallManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01a3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x021d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0246  */
    @Override // com.unity3d.ads.core.domain.BuildHeaderBiddingToken
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(int r18, @org.jetbrains.annotations.Nullable com.unity3d.ads.TokenConfiguration r19, boolean r20, @org.jetbrains.annotations.NotNull rs.c<? super gatewayprotocol.v1.HeaderBiddingTokenOuterClass.HeaderBiddingToken> r21) {
        /*
            Method dump skipped, instructions count: 631
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidBuildHeaderBiddingToken.invoke(int, com.unity3d.ads.TokenConfiguration, boolean, rs.c):java.lang.Object");
    }
}
