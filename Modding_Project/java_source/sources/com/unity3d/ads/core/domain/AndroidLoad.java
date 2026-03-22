package com.unity3d.ads.core.domain;

import android.content.Context;
import com.google.protobuf.ByteString;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.LoadResult;
import com.unity3d.ads.core.data.model.exception.GatewayException;
import com.unity3d.ads.core.data.model.exception.NetworkTimeoutException;
import com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.gatewayclient.GatewayClient;
import gatewayprotocol.v1.AdRequestOuterClass;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.HeaderBiddingAdMarkupOuterClass;
import gt.c0;
import gt.e;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidLoad.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidLoad implements Load {
    @NotNull
    private final AdRepository adRepository;
    @NotNull
    private final c0 defaultDispatcher;
    @NotNull
    private final GatewayClient gatewayClient;
    @NotNull
    private final GetAdPlayerConfigRequest getAdPlayerConfigRequest;
    @NotNull
    private final GetAdRequest getAdRequest;
    @NotNull
    private final GetRequestPolicy getRequestPolicy;
    @NotNull
    private final HandleGatewayAdResponse handleGatewayAdResponse;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final SessionRepository sessionRepository;

    public AndroidLoad(@NotNull c0 defaultDispatcher, @NotNull GetAdRequest getAdRequest, @NotNull GetAdPlayerConfigRequest getAdPlayerConfigRequest, @NotNull GetRequestPolicy getRequestPolicy, @NotNull HandleGatewayAdResponse handleGatewayAdResponse, @NotNull SessionRepository sessionRepository, @NotNull GatewayClient gatewayClient, @NotNull AdRepository adRepository, @NotNull SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(getAdRequest, "getAdRequest");
        Intrinsics.checkNotNullParameter(getAdPlayerConfigRequest, "getAdPlayerConfigRequest");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(handleGatewayAdResponse, "handleGatewayAdResponse");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.defaultDispatcher = defaultDispatcher;
        this.getAdRequest = getAdRequest;
        this.getAdPlayerConfigRequest = getAdPlayerConfigRequest;
        this.getRequestPolicy = getRequestPolicy;
        this.handleGatewayAdResponse = handleGatewayAdResponse;
        this.sessionRepository = sessionRepository;
        this.gatewayClient = gatewayClient;
        this.adRepository = adRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AdObject getTmpAdObject(ByteString byteString, String str, boolean z10, DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType, UnityAdsLoadOptions unityAdsLoadOptions) {
        ByteString EMPTY = ByteString.EMPTY;
        Intrinsics.checkNotNullExpressionValue(EMPTY, "EMPTY");
        return new AdObject(byteString, str, EMPTY, false, null, null, null, false, null, null, null, unityAdsLoadOptions, z10, diagnosticAdType, null, null, 50680, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LoadResult.Failure handleGatewayException(UnityAdsNetworkException unityAdsNetworkException) {
        UnityAds.UnityAdsLoadError unityAdsLoadError;
        String str;
        String str2;
        boolean z10 = unityAdsNetworkException instanceof NetworkTimeoutException;
        if (z10) {
            unityAdsLoadError = UnityAds.UnityAdsLoadError.TIMEOUT;
        } else {
            unityAdsLoadError = UnityAds.UnityAdsLoadError.INTERNAL_ERROR;
        }
        UnityAds.UnityAdsLoadError unityAdsLoadError2 = unityAdsLoadError;
        if (z10) {
            str = LoadResult.MSG_TIMEOUT;
        } else if (unityAdsNetworkException instanceof GatewayException) {
            str = unityAdsNetworkException.getMessage();
        } else {
            str = LoadResult.MSG_COMMUNICATION_FAILURE;
        }
        String str3 = str;
        if (z10) {
            str2 = "timeout";
        } else {
            str2 = "gateway";
        }
        return new LoadResult.Failure(unityAdsLoadError2, str3, unityAdsNetworkException, str2, unityAdsNetworkException.getMessage(), false, 32, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void incrementLoadRequestAdmCount(boolean z10) {
        if (z10) {
            this.sessionRepository.incrementBannerLoadRequestAdmCount();
        } else {
            this.sessionRepository.incrementLoadRequestAdmCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void incrementLoadRequestCount(boolean z10) {
        if (z10) {
            this.sessionRepository.incrementBannerLoadRequestCount();
        } else {
            this.sessionRepository.incrementLoadRequestCount();
        }
    }

    @Override // com.unity3d.ads.core.domain.Load
    @Nullable
    public Object invoke(@NotNull Context context, @NotNull String str, @NotNull ByteString byteString, @NotNull HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkup, @Nullable AdRequestOuterClass.BannerSize bannerSize, @NotNull UnityAdsLoadOptions unityAdsLoadOptions, @NotNull c<? super LoadResult> cVar) {
        return e.g(this.defaultDispatcher, new AndroidLoad$invoke$2(this, bannerSize, headerBiddingAdMarkup, byteString, str, unityAdsLoadOptions, context, null), cVar);
    }
}
