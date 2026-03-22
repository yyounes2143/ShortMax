package com.google.ads.mediation.bidmachine.waterfall;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import io.bidmachine.AdsType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public final class c extends b implements MediationBannerAd {

    /* renamed from: g  reason: collision with root package name */
    public static final a f16983g = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private final com.google.ads.mediation.bidmachine.common.delegate.b f16984f;

    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(MediationAdLoadCallback adLoadCallback) {
        super("AdMobBMBannerWaterfallAd", AdsType.Banner, adLoadCallback, new com.google.ads.mediation.bidmachine.waterfall.request.b());
        Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
        this.f16984f = new com.google.ads.mediation.bidmachine.common.delegate.b("AdMobBMBannerWaterfallAd", adLoadCallback, new com.google.ads.mediation.bidmachine.waterfall.auction.a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.ads.mediation.bidmachine.common.a
    public void a(Context context, nm.b adRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        this.f16984f.a(context, adRequest);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAd
    public View getView() {
        return this.f16984f.getView();
    }
}
