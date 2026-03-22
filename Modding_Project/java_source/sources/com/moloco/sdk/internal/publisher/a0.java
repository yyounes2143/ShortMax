package com.moloco.sdk.internal.publisher;

import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.h0;
import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.AdLoad;
import com.moloco.sdk.publisher.MolocoAd;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@VisibleForTesting
/* loaded from: classes6.dex */
public final class a0 implements s0 {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f32498f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    public static final int f32499g = 8;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final AdLoad.Listener f32500a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.h0 f32501b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.acm.e f32502c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final AdFormatType f32503d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f32504e;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public a0(@Nullable AdLoad.Listener listener, @NotNull com.moloco.sdk.internal.h0 sdkEventUrlTracker, @NotNull com.moloco.sdk.acm.e acmLoadTimerEvent, @NotNull AdFormatType adFormatType, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(sdkEventUrlTracker, "sdkEventUrlTracker");
        Intrinsics.checkNotNullParameter(acmLoadTimerEvent, "acmLoadTimerEvent");
        Intrinsics.checkNotNullParameter(adFormatType, "adFormatType");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f32500a = listener;
        this.f32501b = sdkEventUrlTracker;
        this.f32502c = acmLoadTimerEvent;
        this.f32503d = adFormatType;
        this.f32504e = metricsRecorder;
    }

    @Override // com.moloco.sdk.internal.publisher.s0
    public void a(@NotNull MolocoAd molocoAd, long j10, @Nullable com.moloco.sdk.internal.ortb.model.r rVar) {
        String e10;
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "AdLoadListenerTrackerImpl", "onAdLoadStarted: " + molocoAd + ", " + j10, null, false, 12, null);
        if (rVar != null && (e10 = rVar.e()) != null) {
            h0.a.a(this.f32501b, e10, j10, null, 4, null);
        }
    }

    @Override // com.moloco.sdk.internal.publisher.s0
    public void b(@NotNull MolocoAd molocoAd, @Nullable com.moloco.sdk.internal.ortb.model.r rVar) {
        String f10;
        Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "AdLoadListenerTrackerImpl", "onAdLoadSuccess: " + molocoAd, null, false, 12, null);
        if (rVar != null && (f10 = rVar.f()) != null) {
            h0.a.a(this.f32501b, f10, System.currentTimeMillis(), null, 4, null);
        }
        com.moloco.sdk.acm.recorder.a aVar = this.f32504e;
        com.moloco.sdk.acm.e f11 = this.f32502c.f(com.moloco.sdk.internal.client_metrics_data.c.f32057d.c(), "success");
        com.moloco.sdk.internal.client_metrics_data.c cVar = com.moloco.sdk.internal.client_metrics_data.c.f32056c;
        String c10 = cVar.c();
        String name = this.f32503d.name();
        Locale locale = Locale.ROOT;
        String lowerCase = name.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        aVar.a(f11.f(c10, lowerCase));
        com.moloco.sdk.acm.recorder.a aVar2 = this.f32504e;
        com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32039k.c());
        String c11 = cVar.c();
        String lowerCase2 = this.f32503d.name().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        aVar2.b(bVar.e(c11, lowerCase2));
        AdLoad.Listener listener = this.f32500a;
        if (listener != null) {
            listener.onAdLoadSuccess(molocoAd);
        }
    }

    @Override // com.moloco.sdk.internal.publisher.s0
    public void c(@NotNull com.moloco.sdk.internal.c0 internalError, @Nullable com.moloco.sdk.internal.ortb.model.r rVar) {
        String d10;
        Intrinsics.checkNotNullParameter(internalError, "internalError");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "AdLoadListenerTrackerImpl", "onAdLoadFailed: " + internalError, null, false, 12, null);
        if (rVar != null && (d10 = rVar.d()) != null) {
            this.f32501b.a(d10, System.currentTimeMillis(), internalError);
        }
        com.moloco.sdk.acm.recorder.a aVar = this.f32504e;
        com.moloco.sdk.acm.e f10 = this.f32502c.f(com.moloco.sdk.internal.client_metrics_data.c.f32057d.c(), "failure");
        com.moloco.sdk.internal.client_metrics_data.c cVar = com.moloco.sdk.internal.client_metrics_data.c.f32055b;
        com.moloco.sdk.acm.e f11 = f10.f(cVar.c(), internalError.b().a());
        com.moloco.sdk.internal.client_metrics_data.c cVar2 = com.moloco.sdk.internal.client_metrics_data.c.f32056c;
        String c10 = cVar2.c();
        String name = this.f32503d.name();
        Locale locale = Locale.ROOT;
        String lowerCase = name.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        aVar.a(f11.f(c10, lowerCase));
        com.moloco.sdk.acm.recorder.a aVar2 = this.f32504e;
        com.moloco.sdk.acm.b e10 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32040l.c()).e("network", internalError.a().getNetworkName()).e(cVar.c(), internalError.b().a());
        String c11 = cVar2.c();
        String lowerCase2 = this.f32503d.name().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        aVar2.b(e10.e(c11, lowerCase2));
        AdLoad.Listener listener = this.f32500a;
        if (listener != null) {
            listener.onAdLoadFailed(internalError.a());
        }
    }
}
