package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidGetAdPlayerContext.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidGetAdPlayerContext {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String KEY_GAME_ID = "gameId";
    @NotNull
    private final DeviceInfoRepository deviceInfoRepository;
    @NotNull
    private final SessionRepository sessionRepository;

    /* compiled from: AndroidGetAdPlayerContext.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AndroidGetAdPlayerContext(@NotNull DeviceInfoRepository deviceInfoRepository, @NotNull SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.deviceInfoRepository = deviceInfoRepository;
        this.sessionRepository = sessionRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005a  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(@org.jetbrains.annotations.NotNull rs.c<? super java.util.Map<java.lang.String, ? extends java.lang.Object>> r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            boolean r2 = r1 instanceof com.unity3d.ads.core.domain.AndroidGetAdPlayerContext$invoke$1
            if (r2 == 0) goto L17
            r2 = r1
            com.unity3d.ads.core.domain.AndroidGetAdPlayerContext$invoke$1 r2 = (com.unity3d.ads.core.domain.AndroidGetAdPlayerContext$invoke$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.label = r3
            goto L1c
        L17:
            com.unity3d.ads.core.domain.AndroidGetAdPlayerContext$invoke$1 r2 = new com.unity3d.ads.core.domain.AndroidGetAdPlayerContext$invoke$1
            r2.<init>(r0, r1)
        L1c:
            java.lang.Object r1 = r2.result
            java.lang.Object r3 = kotlin.coroutines.intrinsics.a.f()
            int r4 = r2.label
            r5 = 1
            if (r4 == 0) goto L39
            if (r4 != r5) goto L31
            java.lang.Object r2 = r2.L$0
            com.unity3d.ads.core.domain.AndroidGetAdPlayerContext r2 = (com.unity3d.ads.core.domain.AndroidGetAdPlayerContext) r2
            kotlin.f.b(r1)
            goto L4a
        L31:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L39:
            kotlin.f.b(r1)
            com.unity3d.ads.core.data.repository.DeviceInfoRepository r1 = r0.deviceInfoRepository
            r2.L$0 = r0
            r2.label = r5
            java.lang.Object r1 = r1.staticDeviceInfo(r2)
            if (r1 != r3) goto L49
            return r3
        L49:
            r2 = r0
        L4a:
            gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo r1 = (gatewayprotocol.v1.StaticDeviceInfoOuterClass.StaticDeviceInfo) r1
            com.unity3d.ads.core.data.repository.DeviceInfoRepository r3 = r2.deviceInfoRepository
            gatewayprotocol.v1.DynamicDeviceInfoOuterClass$DynamicDeviceInfo r3 = r3.getDynamicDeviceInfo()
            com.unity3d.ads.core.data.repository.SessionRepository r2 = r2.sessionRepository
            java.lang.String r2 = r2.getGameId()
            if (r2 != 0) goto L5c
            java.lang.String r2 = ""
        L5c:
            java.lang.String r4 = r1.getBundleId()
            java.lang.String r5 = "bundleId"
            kotlin.Pair r6 = ms.k.a(r5, r4)
            java.lang.String r4 = "bundleVersion"
            java.lang.String r5 = r1.getBundleVersion()
            kotlin.Pair r7 = ms.k.a(r4, r5)
            java.lang.String r4 = "webviewHash"
            java.lang.String r5 = "unknown"
            kotlin.Pair r8 = ms.k.a(r4, r5)
            int r4 = com.unity3d.services.core.properties.SdkProperties.getVersionCode()
            java.lang.Integer r4 = kotlin.coroutines.jvm.internal.a.d(r4)
            java.lang.String r5 = "sdkVersion"
            kotlin.Pair r9 = ms.k.a(r5, r4)
            java.lang.String r4 = "sdkVersionName"
            java.lang.String r5 = com.unity3d.services.core.properties.SdkProperties.getVersionName()
            kotlin.Pair r10 = ms.k.a(r4, r5)
            java.lang.String r4 = "osVersion"
            java.lang.String r5 = r1.getOsVersion()
            kotlin.Pair r11 = ms.k.a(r4, r5)
            java.util.Locale r4 = java.util.Locale.getDefault()
            java.lang.String r4 = r4.toString()
            java.lang.String r5 = "systemLanguage"
            kotlin.Pair r12 = ms.k.a(r5, r4)
            java.lang.String r4 = "deviceModel"
            java.lang.String r1 = r1.getDeviceModel()
            kotlin.Pair r13 = ms.k.a(r4, r1)
            boolean r1 = r3.getLimitedTracking()
            java.lang.Boolean r1 = kotlin.coroutines.jvm.internal.a.a(r1)
            java.lang.String r4 = "limitAdTracking"
            kotlin.Pair r14 = ms.k.a(r4, r1)
            gatewayprotocol.v1.DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android r1 = r3.getAndroid()
            double r3 = r1.getMaxVolume()
            java.lang.Double r1 = kotlin.coroutines.jvm.internal.a.b(r3)
            java.lang.String r3 = "maxVolume"
            kotlin.Pair r15 = ms.k.a(r3, r1)
            java.lang.String r1 = "gameId"
            kotlin.Pair r16 = ms.k.a(r1, r2)
            kotlin.Pair[] r1 = new kotlin.Pair[]{r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16}
            java.util.Map r1 = kotlin.collections.p0.m(r1)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidGetAdPlayerContext.invoke(rs.c):java.lang.Object");
    }
}
