package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.configuration.MediationInitBlobMetadataReader;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.LegacyUserConsentRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidGetInitializationRequestPayload.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidGetInitializationRequestPayload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetInitializationRequestPayload.kt\ncom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload\n+ 2 InitializationRequestKt.kt\ngatewayprotocol/v1/InitializationRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 InitializationDeviceInfoKt.kt\ngatewayprotocol/v1/InitializationDeviceInfoKtKt\n+ 5 MetadataReader.kt\ncom/unity3d/ads/core/configuration/MetadataReader\n*L\n1#1,70:1\n10#2:71\n1#3:72\n1#3:73\n1#3:75\n10#4:74\n7#5,7:76\n*S KotlinDebug\n*F\n+ 1 AndroidGetInitializationRequestPayload.kt\ncom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload\n*L\n20#1:71\n20#1:72\n28#1:75\n28#1:74\n65#1:76,7\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidGetInitializationRequestPayload implements GetInitializationRequestPayload {
    @NotNull
    private final DeviceInfoRepository deviceInfoRepository;
    @NotNull
    private final GetClientInfo getClientInfo;
    @NotNull
    private final LegacyUserConsentRepository legacyUserConsentRepository;
    @NotNull
    private final MediationInitBlobMetadataReader mediationInitBlobMetadataReader;
    @NotNull
    private final SessionRepository sessionRepository;

    public AndroidGetInitializationRequestPayload(@NotNull GetClientInfo getClientInfo, @NotNull SessionRepository sessionRepository, @NotNull DeviceInfoRepository deviceInfoRepository, @NotNull LegacyUserConsentRepository legacyUserConsentRepository, @NotNull MediationInitBlobMetadataReader mediationInitBlobMetadataReader) {
        Intrinsics.checkNotNullParameter(getClientInfo, "getClientInfo");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(legacyUserConsentRepository, "legacyUserConsentRepository");
        Intrinsics.checkNotNullParameter(mediationInitBlobMetadataReader, "mediationInitBlobMetadataReader");
        this.getClientInfo = getClientInfo;
        this.sessionRepository = sessionRepository;
        this.deviceInfoRepository = deviceInfoRepository;
        this.legacyUserConsentRepository = legacyUserConsentRepository;
        this.mediationInitBlobMetadataReader = mediationInitBlobMetadataReader;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0130 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x014c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01b1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01d9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x027e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x029a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02db A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x031c  */
    @Override // com.unity3d.ads.core.domain.GetInitializationRequestPayload
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.NotNull rs.c<? super gatewayprotocol.v1.InitializationRequestOuterClass.InitializationRequest> r24) {
        /*
            Method dump skipped, instructions count: 826
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload.invoke(rs.c):java.lang.Object");
    }
}
