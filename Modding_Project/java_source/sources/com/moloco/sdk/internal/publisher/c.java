package com.moloco.sdk.internal.publisher;

import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.BannerAdShowListener;
import com.moloco.sdk.publisher.MolocoAd;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class c implements t0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ t0 f32581a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final BannerAdShowListener f32582b;

    public c(@Nullable BannerAdShowListener bannerAdShowListener, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull Function0<com.moloco.sdk.internal.ortb.model.r> provideSdkEvents, @NotNull Function0<e0> provideBUrlData, @NotNull AdFormatType adType, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(provideSdkEvents, "provideSdkEvents");
        Intrinsics.checkNotNullParameter(provideBUrlData, "provideBUrlData");
        Intrinsics.checkNotNullParameter(adType, "adType");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f32581a = a.b(bannerAdShowListener, appLifecycleTrackerService, customUserEventBuilderService, provideSdkEvents, provideBUrlData, null, null, adType, metricsRecorder, 96, null);
        this.f32582b = bannerAdShowListener;
    }

    @Override // com.moloco.sdk.internal.publisher.t0
    public void a(@NotNull com.moloco.sdk.internal.c0 internalError) {
        Intrinsics.checkNotNullParameter(internalError, "internalError");
        this.f32581a.a(internalError);
    }

    @Nullable
    public final BannerAdShowListener b() {
        return this.f32582b;
    }

    @Override // com.moloco.sdk.internal.publisher.t0
    public void onAdClicked(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        this.f32581a.onAdClicked(molocoAd);
    }

    @Override // com.moloco.sdk.internal.publisher.t0
    public void onAdHidden(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        this.f32581a.onAdHidden(molocoAd);
    }

    @Override // com.moloco.sdk.internal.publisher.t0
    public void onAdShowSuccess(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        this.f32581a.onAdShowSuccess(molocoAd);
    }
}
