package com.google.ads.mediation.bidmachine.waterfall;

import android.content.Context;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import io.bidmachine.AdsType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public final class f extends b implements MediationRewardedAd {

    /* renamed from: g  reason: collision with root package name */
    public static final a f16989g = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private final com.google.ads.mediation.bidmachine.common.delegate.f f16990f;

    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(MediationAdLoadCallback adLoadCallback) {
        super("AdMobBMRewardedWaterfallAd", AdsType.Rewarded, adLoadCallback, new com.google.ads.mediation.bidmachine.waterfall.request.e());
        Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
        this.f16990f = new com.google.ads.mediation.bidmachine.common.delegate.f("AdMobBMRewardedWaterfallAd", adLoadCallback, new com.google.ads.mediation.bidmachine.waterfall.auction.a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.ads.mediation.bidmachine.common.a
    public void a(Context context, vq.c adRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        this.f16990f.a(context, adRequest);
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f16990f.showAd(context);
    }
}
