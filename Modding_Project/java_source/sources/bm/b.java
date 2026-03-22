package bm;

import android.content.Context;
import io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingAdapterKt;
import io.bidmachine.rendering.ad.view.AdView;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.view.PrivacySheetDialog;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdaptiveRenderingBannerAdListener.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b implements sp.p {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final xq.f f2674a;

    public b(@NotNull xq.f callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f2674a = callback;
    }

    @Override // qp.a
    /* renamed from: k */
    public void d(@NotNull AdView adView) {
        Intrinsics.checkNotNullParameter(adView, "adView");
    }

    @Override // qp.a
    /* renamed from: l */
    public void i(@NotNull AdView adView) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        this.f2674a.onAdClicked();
    }

    @Override // qp.a
    /* renamed from: m */
    public void c(@NotNull AdView adView) {
        Intrinsics.checkNotNullParameter(adView, "adView");
    }

    @Override // qp.a
    /* renamed from: n */
    public void b(@NotNull AdView adView) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        this.f2674a.onAdExpired();
    }

    @Override // qp.a
    /* renamed from: o */
    public void h(@NotNull AdView adView, @NotNull rq.t error) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(error, "error");
        xq.f fVar = this.f2674a;
        fr.a NoFill = fr.a.f51921q;
        Intrinsics.checkNotNullExpressionValue(NoFill, "NoFill");
        fVar.onAdLoadFailed(AdaptiveRenderingAdapterKt.a(error, NoFill));
    }

    @Override // qp.a
    /* renamed from: p */
    public void g(@NotNull AdView adView, @NotNull rq.t error) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(error, "error");
        xq.f fVar = this.f2674a;
        fr.a InternalUnknownError = fr.a.f51922r;
        Intrinsics.checkNotNullExpressionValue(InternalUnknownError, "InternalUnknownError");
        fVar.onAdShowFailed(AdaptiveRenderingAdapterKt.a(error, InternalUnknownError));
    }

    @Override // qp.a
    /* renamed from: q */
    public void j(@NotNull AdView adView) {
        Intrinsics.checkNotNullParameter(adView, "adView");
    }

    @Override // qp.a
    /* renamed from: r */
    public void onAdLoaded(@NotNull AdView adView) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        this.f2674a.onAdLoaded(adView);
    }

    @Override // qp.a
    /* renamed from: s */
    public void a(@NotNull AdView adView) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        this.f2674a.onAdShown();
    }

    @Override // qp.a
    /* renamed from: t */
    public void f(@NotNull AdView adView, @NotNull rq.n brokenCreativeEvent) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(brokenCreativeEvent, "brokenCreativeEvent");
        this.f2674a.onBrokenCreativeEvent(AdaptiveRenderingAdapterKt.b(brokenCreativeEvent));
    }

    @Override // qp.a
    /* renamed from: u */
    public void e(@NotNull AdView adView, @NotNull PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
        PrivacySheetDialog.d dVar = PrivacySheetDialog.f58589c;
        Context o10 = io.bidmachine.core.g.o(adView.getContext(), adView);
        Intrinsics.checkNotNullExpressionValue(o10, "findDialogContext(adView.context, adView)");
        dVar.a(o10, privacySheetParams);
    }
}
