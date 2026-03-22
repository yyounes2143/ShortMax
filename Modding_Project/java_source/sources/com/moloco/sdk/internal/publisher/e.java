package com.moloco.sdk.internal.publisher;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.AdShowListener;
import com.moloco.sdk.publisher.MolocoAd;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class e<T extends AdShowListener> implements t0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ t0 f32630a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final T f32631b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.r f32632c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f32633d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final AdFormatType f32634e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f32635f;

    public e(@NotNull T adShowListener, @NotNull com.moloco.sdk.internal.services.r appLifecycleTrackerService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull Function0<com.moloco.sdk.internal.ortb.model.r> provideSdkEvents, @NotNull Function0<e0> provideBUrlData, @NotNull AdFormatType adFormatType, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(adShowListener, "adShowListener");
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(provideSdkEvents, "provideSdkEvents");
        Intrinsics.checkNotNullParameter(provideBUrlData, "provideBUrlData");
        Intrinsics.checkNotNullParameter(adFormatType, "adFormatType");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f32630a = a.b(adShowListener, appLifecycleTrackerService, customUserEventBuilderService, provideSdkEvents, provideBUrlData, null, null, adFormatType, metricsRecorder, 96, null);
        this.f32631b = adShowListener;
        this.f32632c = appLifecycleTrackerService;
        this.f32633d = customUserEventBuilderService;
        this.f32634e = adFormatType;
        this.f32635f = metricsRecorder;
    }

    @Override // com.moloco.sdk.internal.publisher.t0
    public void a(@NotNull com.moloco.sdk.internal.c0 internalError) {
        Intrinsics.checkNotNullParameter(internalError, "internalError");
        this.f32630a.a(internalError);
    }

    @Override // com.moloco.sdk.internal.publisher.t0
    public void onAdClicked(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        this.f32630a.onAdClicked(molocoAd);
    }

    @Override // com.moloco.sdk.internal.publisher.t0
    public void onAdHidden(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        this.f32630a.onAdHidden(molocoAd);
    }

    @Override // com.moloco.sdk.internal.publisher.t0
    public void onAdShowSuccess(@NotNull MolocoAd molocoAd) {
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        this.f32630a.onAdShowSuccess(molocoAd);
    }
}
