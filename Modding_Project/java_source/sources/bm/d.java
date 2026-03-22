package bm;

import android.content.Context;
import io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingAdapterKt;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.view.PrivacySheetDialog;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdaptiveRenderingFullscreenAdListener.kt */
@Metadata
/* loaded from: classes7.dex */
public final class d implements rp.n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final xq.i f2678a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Context f2679b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f2680c;

    public d(@NotNull Context context, @NotNull xq.i callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f2678a = callback;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.f2679b = applicationContext;
    }

    @Override // qp.a
    /* renamed from: k */
    public void d(@NotNull rp.m fullScreenAd) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
    }

    @Override // qp.a
    /* renamed from: l */
    public void i(@NotNull rp.m fullScreenAd) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        this.f2678a.onAdClicked();
    }

    @Override // qp.a
    /* renamed from: m */
    public void c(@NotNull rp.m fullScreenAd) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
    }

    @Override // qp.a
    /* renamed from: n */
    public void b(@NotNull rp.m fullScreenAd) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        this.f2678a.onAdExpired();
    }

    @Override // qp.a
    /* renamed from: o */
    public void h(@NotNull rp.m fullScreenAd, @NotNull rq.t error) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        Intrinsics.checkNotNullParameter(error, "error");
        xq.i iVar = this.f2678a;
        fr.a NoFill = fr.a.f51921q;
        Intrinsics.checkNotNullExpressionValue(NoFill, "NoFill");
        iVar.onAdLoadFailed(AdaptiveRenderingAdapterKt.a(error, NoFill));
    }

    @Override // qp.a
    /* renamed from: p */
    public void g(@NotNull rp.m fullScreenAd, @NotNull rq.t error) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        Intrinsics.checkNotNullParameter(error, "error");
        xq.i iVar = this.f2678a;
        fr.a InternalUnknownError = fr.a.f51922r;
        Intrinsics.checkNotNullExpressionValue(InternalUnknownError, "InternalUnknownError");
        iVar.onAdShowFailed(AdaptiveRenderingAdapterKt.a(error, InternalUnknownError));
    }

    @Override // qp.a
    /* renamed from: q */
    public void j(@NotNull rp.m fullScreenAd) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        if (this.f2680c) {
            this.f2678a.b();
        }
        this.f2678a.onAdClosed();
    }

    @Override // qp.a
    /* renamed from: r */
    public void onAdLoaded(@NotNull rp.m fullScreenAd) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        this.f2678a.onAdLoaded();
    }

    @Override // qp.a
    /* renamed from: s */
    public void a(@NotNull rp.m fullScreenAd) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        this.f2680c = true;
        this.f2678a.onAdShown();
    }

    @Override // qp.a
    /* renamed from: t */
    public void f(@NotNull rp.m fullScreenAd, @NotNull rq.n brokenCreativeEvent) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        Intrinsics.checkNotNullParameter(brokenCreativeEvent, "brokenCreativeEvent");
        this.f2678a.onBrokenCreativeEvent(AdaptiveRenderingAdapterKt.b(brokenCreativeEvent));
    }

    @Override // qp.a
    /* renamed from: u */
    public void e(@NotNull rp.m fullScreenAd, @NotNull PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(fullScreenAd, "fullScreenAd");
        Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
        PrivacySheetDialog.d dVar = PrivacySheetDialog.f58589c;
        Context n10 = io.bidmachine.core.g.n(this.f2679b);
        Intrinsics.checkNotNullExpressionValue(n10, "findDialogContext(applicationContext)");
        dVar.a(n10, privacySheetParams);
    }
}
