package com.unity3d.ads.core.data.repository;

import com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.PrivacyDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.VolumeSettingsChange;
import gatewayprotocol.v1.AllowedPiiOuterClass;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.PiiOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.o;
import kt.b;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidDeviceInfoRepository.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidDeviceInfoRepository implements DeviceInfoRepository {
    @NotNull
    private final e<AllowedPiiOuterClass.AllowedPii> allowedPii;
    @Nullable
    private final String analyticsUserId;
    @NotNull
    private final DynamicDeviceInfoDataSource dynamicDeviceInfoDataSource;
    @NotNull
    private final PrivacyDeviceInfoDataSource privacyDeviceInfoDataSource;
    @NotNull
    private final SessionRepository sessionRepository;
    @NotNull
    private final StaticDeviceInfoDataSource staticDeviceInfoDataSource;
    @NotNull
    private final b<VolumeSettingsChange> volumeSettingsChange;

    public AndroidDeviceInfoRepository(@NotNull StaticDeviceInfoDataSource staticDeviceInfoDataSource, @NotNull DynamicDeviceInfoDataSource dynamicDeviceInfoDataSource, @NotNull PrivacyDeviceInfoDataSource privacyDeviceInfoDataSource, @NotNull SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(staticDeviceInfoDataSource, "staticDeviceInfoDataSource");
        Intrinsics.checkNotNullParameter(dynamicDeviceInfoDataSource, "dynamicDeviceInfoDataSource");
        Intrinsics.checkNotNullParameter(privacyDeviceInfoDataSource, "privacyDeviceInfoDataSource");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.staticDeviceInfoDataSource = staticDeviceInfoDataSource;
        this.dynamicDeviceInfoDataSource = dynamicDeviceInfoDataSource;
        this.privacyDeviceInfoDataSource = privacyDeviceInfoDataSource;
        this.sessionRepository = sessionRepository;
        AllowedPiiOuterClass.AllowedPii defaultInstance = AllowedPiiOuterClass.AllowedPii.getDefaultInstance();
        Intrinsics.checkNotNullExpressionValue(defaultInstance, "getDefaultInstance()");
        this.allowedPii = o.a(defaultInstance);
        this.analyticsUserId = staticDeviceInfoDataSource.getAnalyticsUserId();
        this.volumeSettingsChange = dynamicDeviceInfoDataSource.getVolumeSettingsChange();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @NotNull
    public StaticDeviceInfoOuterClass.StaticDeviceInfo cachedStaticDeviceInfo() {
        return this.staticDeviceInfoDataSource.fetchCached();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @NotNull
    public e<AllowedPiiOuterClass.AllowedPii> getAllowedPii() {
        return this.allowedPii;
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @Nullable
    public String getAnalyticsUserId() {
        return this.analyticsUserId;
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @NotNull
    public String getAppName() {
        return this.staticDeviceInfoDataSource.getAppName();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0042 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0043 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getAuidByteString(@org.jetbrains.annotations.NotNull rs.c<? super com.google.protobuf.ByteString> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.unity3d.ads.core.data.repository.AndroidDeviceInfoRepository$getAuidByteString$1
            if (r0 == 0) goto L13
            r0 = r5
            com.unity3d.ads.core.data.repository.AndroidDeviceInfoRepository$getAuidByteString$1 r0 = (com.unity3d.ads.core.data.repository.AndroidDeviceInfoRepository$getAuidByteString$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.data.repository.AndroidDeviceInfoRepository$getAuidByteString$1 r0 = new com.unity3d.ads.core.data.repository.AndroidDeviceInfoRepository$getAuidByteString$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r5)
            goto L3d
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.f.b(r5)
            r0.label = r3
            java.lang.Object r5 = r4.getAuidString(r0)
            if (r5 != r1) goto L3d
            return r1
        L3d:
            java.lang.String r5 = (java.lang.String) r5
            r0 = 0
            if (r5 != 0) goto L43
            return r0
        L43:
            java.util.UUID r5 = java.util.UUID.fromString(r5)     // Catch: java.lang.Throwable -> L50
            java.lang.String r1 = "fromString(auidString)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r1)     // Catch: java.lang.Throwable -> L50
            com.google.protobuf.ByteString r0 = com.unity3d.ads.core.extensions.ProtobufExtensionsKt.toByteString(r5)     // Catch: java.lang.Throwable -> L50
        L50:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidDeviceInfoRepository.getAuidByteString(rs.c):java.lang.Object");
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @Nullable
    public Object getAuidString(@NotNull c<? super String> cVar) {
        return this.staticDeviceInfoDataSource.getAuid(cVar);
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @NotNull
    public String getConnectionTypeStr() {
        return this.dynamicDeviceInfoDataSource.getConnectionTypeStr();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public int getCurrentUiTheme() {
        return this.dynamicDeviceInfoDataSource.getCurrentUiTheme();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @NotNull
    public DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfo() {
        return this.dynamicDeviceInfoDataSource.fetch();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public boolean getHasInternet() {
        return this.dynamicDeviceInfoDataSource.hasInternet();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @Nullable
    public Object getIdfi(@NotNull c<? super String> cVar) {
        return this.staticDeviceInfoDataSource.getIdfi(cVar);
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @NotNull
    public List<String> getLocaleList() {
        return this.dynamicDeviceInfoDataSource.getLocaleList();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @NotNull
    public String getManufacturer() {
        return this.staticDeviceInfoDataSource.getManufacturer();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @NotNull
    public String getModel() {
        return this.staticDeviceInfoDataSource.getModel();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @NotNull
    public String getOrientation() {
        return this.dynamicDeviceInfoDataSource.getOrientation();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @NotNull
    public String getOsVersion() {
        return this.staticDeviceInfoDataSource.getOsVersion();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @NotNull
    public PiiOuterClass.Pii getPiiData() {
        return this.privacyDeviceInfoDataSource.fetch(getAllowedPii().getValue());
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public int getRingerMode() {
        return this.dynamicDeviceInfoDataSource.getRingerMode();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    public long getSystemBootTime() {
        return this.staticDeviceInfoDataSource.getSystemBootTime();
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @NotNull
    public b<VolumeSettingsChange> getVolumeSettingsChange() {
        return this.volumeSettingsChange;
    }

    @Override // com.unity3d.ads.core.data.repository.DeviceInfoRepository
    @Nullable
    public Object staticDeviceInfo(@NotNull c<? super StaticDeviceInfoOuterClass.StaticDeviceInfo> cVar) {
        StaticDeviceInfoDataSource staticDeviceInfoDataSource = this.staticDeviceInfoDataSource;
        List<String> additionalStorePackagesList = this.sessionRepository.getNativeConfiguration().getAdditionalStorePackagesList();
        Intrinsics.checkNotNullExpressionValue(additionalStorePackagesList, "sessionRepository.native…ditionalStorePackagesList");
        return staticDeviceInfoDataSource.fetch(additionalStorePackagesList, cVar);
    }
}
