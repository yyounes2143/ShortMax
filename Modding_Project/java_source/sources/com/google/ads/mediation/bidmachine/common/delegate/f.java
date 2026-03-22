package com.google.ads.mediation.bidmachine.common.delegate;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import io.bidmachine.AdFullScreenListener;
import io.bidmachine.AdListener;
import io.bidmachine.AdRewardedListener;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public final class f extends com.google.ads.mediation.bidmachine.common.delegate.a implements MediationRewardedAd, AdListener, AdFullScreenListener, AdRewardedListener {

    /* renamed from: f  reason: collision with root package name */
    private vq.a f16952f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class a implements RewardItem {
        @Override // com.google.android.gms.ads.rewarded.RewardItem
        public int getAmount() {
            return 0;
        }

        @Override // com.google.android.gms.ads.rewarded.RewardItem
        public String getType() {
            return "";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(String tag, MediationAdLoadCallback loadCallback, com.google.ads.mediation.bidmachine.common.auction.a auctionResultHandler) {
        super(tag, loadCallback, auctionResultHandler);
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(loadCallback, "loadCallback");
        Intrinsics.checkNotNullParameter(auctionResultHandler, "auctionResultHandler");
    }

    @Override // com.google.ads.mediation.bidmachine.common.delegate.a
    public void a() {
        vq.a aVar = this.f16952f;
        if (aVar != null) {
            aVar.setListener(null);
            aVar.destroy();
        }
        this.f16952f = null;
        a((MediationAdCallback) null);
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: b */
    public void onAdExpired(vq.a rewardedAd) {
        Intrinsics.checkNotNullParameter(rewardedAd, "rewardedAd");
        d();
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: c */
    public void onAdImpression(vq.a rewardedAd) {
        Intrinsics.checkNotNullParameter(rewardedAd, "rewardedAd");
        MediationRewardedAdCallback mediationRewardedAdCallback = (MediationRewardedAdCallback) b();
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onAdOpened();
            mediationRewardedAdCallback.onVideoStart();
            mediationRewardedAdCallback.reportAdImpression();
        }
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: d */
    public void onAdLoaded(vq.a rewardedAd) {
        Intrinsics.checkNotNullParameter(rewardedAd, "rewardedAd");
        a(this, rewardedAd.getAuctionResult());
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        vq.a aVar = this.f16952f;
        if (aVar != null) {
            if (aVar.canShow()) {
                aVar.show();
                return;
            }
            return;
        }
        fr.a i10 = fr.a.i("RewardedAd is null or can't be shown");
        Intrinsics.checkNotNullExpressionValue(i10, "internal(...)");
        a(i10, new Function1() { // from class: com.google.ads.mediation.bidmachine.common.delegate.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit b10;
                b10 = f.b(f.this, (AdError) obj);
                return b10;
            }
        });
    }

    public void a(Context context, vq.c adRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Log.d(c(), "Requesting rewarded ad");
        this.f16952f = (vq.a) ((vq.a) new vq.a(context).setListener(this)).load(adRequest);
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: b */
    public void onAdShowFailed(vq.a rewardedAd, fr.a bmError) {
        Intrinsics.checkNotNullParameter(rewardedAd, "rewardedAd");
        Intrinsics.checkNotNullParameter(bmError, "bmError");
        a(bmError, new Function1() { // from class: com.google.ads.mediation.bidmachine.common.delegate.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit a10;
                a10 = f.a(f.this, (AdError) obj);
                return a10;
            }
        });
    }

    @Override // io.bidmachine.AdRewardedListener
    /* renamed from: e */
    public void onAdRewarded(vq.a rewardedAd) {
        Intrinsics.checkNotNullParameter(rewardedAd, "rewardedAd");
        MediationRewardedAdCallback mediationRewardedAdCallback = (MediationRewardedAdCallback) b();
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onVideoComplete();
            mediationRewardedAdCallback.onUserEarnedReward(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b(f fVar, AdError it) {
        Intrinsics.checkNotNullParameter(it, "it");
        MediationRewardedAdCallback mediationRewardedAdCallback = (MediationRewardedAdCallback) fVar.b();
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onAdFailedToShow(it);
        }
        return Unit.f60915a;
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: a */
    public void onAdClicked(vq.a rewardedAd) {
        Intrinsics.checkNotNullParameter(rewardedAd, "rewardedAd");
        MediationRewardedAdCallback mediationRewardedAdCallback = (MediationRewardedAdCallback) b();
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.reportAdClicked();
        }
    }

    @Override // io.bidmachine.AdFullScreenListener
    /* renamed from: a */
    public void onAdClosed(vq.a rewardedAd, boolean z10) {
        Intrinsics.checkNotNullParameter(rewardedAd, "rewardedAd");
        MediationRewardedAdCallback mediationRewardedAdCallback = (MediationRewardedAdCallback) b();
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onAdClosed();
        }
        a();
    }

    @Override // io.bidmachine.AdListener
    /* renamed from: a */
    public void onAdLoadFailed(vq.a rewardedAd, fr.a bmError) {
        Intrinsics.checkNotNullParameter(rewardedAd, "rewardedAd");
        Intrinsics.checkNotNullParameter(bmError, "bmError");
        a(bmError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(f fVar, AdError it) {
        Intrinsics.checkNotNullParameter(it, "it");
        MediationRewardedAdCallback mediationRewardedAdCallback = (MediationRewardedAdCallback) fVar.b();
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onAdFailedToShow(it);
        }
        return Unit.f60915a;
    }
}
