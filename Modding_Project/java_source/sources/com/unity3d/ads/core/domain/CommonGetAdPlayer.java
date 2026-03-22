package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer;
import com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer;
import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.adplayer.WebViewAdPlayer;
import com.unity3d.ads.adplayer.WebViewBridge;
import com.unity3d.ads.core.data.datasource.LifecycleDataSource;
import com.unity3d.ads.core.data.manager.OfferwallManager;
import com.unity3d.ads.core.data.manager.ScarManager;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.OpenMeasurementRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.services.banners.BannerViewCache;
import gt.c0;
import gt.g0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CommonGetAdPlayer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonGetAdPlayer implements GetAdPlayer {
    @NotNull
    private final g0 adPlayerScope;
    @NotNull
    private final AdRepository adRepository;
    @NotNull
    private final c0 defaultDispatcher;
    @NotNull
    private final DeviceInfoRepository deviceInfoRepository;
    @NotNull
    private final LifecycleDataSource lifecycleDataSource;
    @NotNull
    private final OfferwallManager offerwallManager;
    @NotNull
    private final OpenMeasurementRepository openMeasurementRepository;
    @NotNull
    private final ScarManager scarManager;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final SessionRepository sessionRepository;

    public CommonGetAdPlayer(@NotNull DeviceInfoRepository deviceInfoRepository, @NotNull SessionRepository sessionRepository, @NotNull SendDiagnosticEvent sendDiagnosticEvent, @NotNull c0 defaultDispatcher, @NotNull g0 adPlayerScope, @NotNull OpenMeasurementRepository openMeasurementRepository, @NotNull ScarManager scarManager, @NotNull OfferwallManager offerwallManager, @NotNull AdRepository adRepository, @NotNull LifecycleDataSource lifecycleDataSource) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(adPlayerScope, "adPlayerScope");
        Intrinsics.checkNotNullParameter(openMeasurementRepository, "openMeasurementRepository");
        Intrinsics.checkNotNullParameter(scarManager, "scarManager");
        Intrinsics.checkNotNullParameter(offerwallManager, "offerwallManager");
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(lifecycleDataSource, "lifecycleDataSource");
        this.deviceInfoRepository = deviceInfoRepository;
        this.sessionRepository = sessionRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.defaultDispatcher = defaultDispatcher;
        this.adPlayerScope = adPlayerScope;
        this.openMeasurementRepository = openMeasurementRepository;
        this.scarManager = scarManager;
        this.offerwallManager = offerwallManager;
        this.adRepository = adRepository;
        this.lifecycleDataSource = lifecycleDataSource;
    }

    @Override // com.unity3d.ads.core.domain.GetAdPlayer
    @NotNull
    public AdPlayer invoke(@NotNull WebViewBridge webviewBridge, @NotNull AndroidWebViewContainer webviewContainer, @NotNull ByteString opportunityId) {
        Intrinsics.checkNotNullParameter(webviewBridge, "webviewBridge");
        Intrinsics.checkNotNullParameter(webviewContainer, "webviewContainer");
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        WebViewAdPlayer webViewAdPlayer = new WebViewAdPlayer(webviewBridge, this.deviceInfoRepository, this.sessionRepository, this.defaultDispatcher, this.sendDiagnosticEvent, webviewContainer, this.adPlayerScope);
        if (BannerViewCache.getInstance().getBannerView(ProtobufExtensionsKt.toUUID(opportunityId).toString()) == null) {
            String uuid = ProtobufExtensionsKt.toUUID(opportunityId).toString();
            DeviceInfoRepository deviceInfoRepository = this.deviceInfoRepository;
            SessionRepository sessionRepository = this.sessionRepository;
            OpenMeasurementRepository openMeasurementRepository = this.openMeasurementRepository;
            ScarManager scarManager = this.scarManager;
            OfferwallManager offerwallManager = this.offerwallManager;
            SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
            AdRepository adRepository = this.adRepository;
            Intrinsics.checkNotNullExpressionValue(uuid, "toString()");
            return new AndroidFullscreenWebViewAdPlayer(webViewAdPlayer, uuid, webviewContainer, deviceInfoRepository, sessionRepository, openMeasurementRepository, scarManager, offerwallManager, sendDiagnosticEvent, adRepository);
        }
        String uuid2 = ProtobufExtensionsKt.toUUID(opportunityId).toString();
        OpenMeasurementRepository openMeasurementRepository2 = this.openMeasurementRepository;
        ScarManager scarManager2 = this.scarManager;
        LifecycleDataSource lifecycleDataSource = this.lifecycleDataSource;
        Intrinsics.checkNotNullExpressionValue(uuid2, "toString()");
        return new AndroidEmbeddableWebViewAdPlayer(webViewAdPlayer, uuid2, webviewContainer, openMeasurementRepository2, scarManager2, lifecycleDataSource);
    }
}
