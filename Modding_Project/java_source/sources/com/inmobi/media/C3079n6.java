package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiInterstitial;
import com.inmobi.ads.controllers.PublisherCallbacks;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* renamed from: com.inmobi.media.n6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C3079n6 extends PublisherCallbacks {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public WeakReference<InMobiInterstitial> f25052a;

    public C3079n6(InMobiInterstitial interstitial) {
        Intrinsics.checkNotNullParameter(interstitial, "interstitial");
        this.f25052a = new WeakReference<>(interstitial);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public byte getType() {
        return (byte) 1;
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdClicked(@NotNull Map<Object, ? extends Object> params) {
        AbstractC2983h6 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(params, "params");
        InMobiInterstitial inMobiInterstitial = this.f25052a.get();
        if (inMobiInterstitial != null && (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) != null) {
            mPubListener$media_release.a(inMobiInterstitial, params);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDismissed() {
        AbstractC2983h6 mPubListener$media_release;
        InMobiInterstitial ad2 = this.f25052a.get();
        if (ad2 != null && (mPubListener$media_release = ad2.getMPubListener$media_release()) != null) {
            Intrinsics.checkNotNullParameter(ad2, "ad");
            ((C2999i6) mPubListener$media_release).f24855a.onAdDismissed(ad2);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDisplayFailed() {
        AbstractC2983h6 mPubListener$media_release;
        InMobiInterstitial ad2 = this.f25052a.get();
        if (ad2 != null && (mPubListener$media_release = ad2.getMPubListener$media_release()) != null) {
            Intrinsics.checkNotNullParameter(ad2, "ad");
            ((C2999i6) mPubListener$media_release).f24855a.onAdDisplayFailed(ad2);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdDisplayed(@NotNull AdMetaInfo info) {
        AbstractC2983h6 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiInterstitial ad2 = this.f25052a.get();
        if (ad2 != null && (mPubListener$media_release = ad2.getMPubListener$media_release()) != null) {
            Intrinsics.checkNotNullParameter(ad2, "ad");
            Intrinsics.checkNotNullParameter(info, "info");
            ((C2999i6) mPubListener$media_release).f24855a.onAdDisplayed(ad2, info);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdFetchFailed(InMobiAdRequestStatus status) {
        AbstractC2983h6 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(status, "status");
        InMobiInterstitial ad2 = this.f25052a.get();
        if (ad2 != null && (mPubListener$media_release = ad2.getMPubListener$media_release()) != null) {
            Intrinsics.checkNotNullParameter(ad2, "ad");
            Intrinsics.checkNotNullParameter(status, "status");
            ((C2999i6) mPubListener$media_release).f24855a.onAdFetchFailed(ad2, status);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdFetchSuccessful(AdMetaInfo info) {
        AbstractC2983h6 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiInterstitial inMobiInterstitial = this.f25052a.get();
        if (inMobiInterstitial != null && (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) != null) {
            mPubListener$media_release.a(inMobiInterstitial, info);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdImpression(@Nullable Yd yd2) {
        AbstractC2983h6 abstractC2983h6;
        InMobiInterstitial inMobiInterstitial = this.f25052a.get();
        if (inMobiInterstitial != null) {
            abstractC2983h6 = inMobiInterstitial.getMPubListener$media_release();
        } else {
            abstractC2983h6 = null;
        }
        if (abstractC2983h6 == null) {
            if (yd2 != null) {
                yd2.c();
                return;
            }
            return;
        }
        abstractC2983h6.a(inMobiInterstitial);
        if (yd2 != null) {
            yd2.d();
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdLoadFailed(@NotNull InMobiAdRequestStatus status) {
        AbstractC2983h6 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(status, "status");
        InMobiInterstitial inMobiInterstitial = this.f25052a.get();
        if (inMobiInterstitial != null && (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) != null) {
            mPubListener$media_release.a(inMobiInterstitial, status);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdLoadSucceeded(@NotNull AdMetaInfo info) {
        AbstractC2983h6 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(info, "info");
        InMobiInterstitial inMobiInterstitial = this.f25052a.get();
        if (inMobiInterstitial != null && (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) != null) {
            mPubListener$media_release.b(inMobiInterstitial, info);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onAdWillDisplay() {
        AbstractC2983h6 mPubListener$media_release;
        InMobiInterstitial ad2 = this.f25052a.get();
        if (ad2 != null && (mPubListener$media_release = ad2.getMPubListener$media_release()) != null) {
            Intrinsics.checkNotNullParameter(ad2, "ad");
            ((C2999i6) mPubListener$media_release).f24855a.onAdWillDisplay(ad2);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onImraidLog(@NotNull String log) {
        AbstractC2983h6 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(log, "log");
        InMobiInterstitial inMobiInterstitial = this.f25052a.get();
        if (inMobiInterstitial == null || (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) == null) {
            return;
        }
        mPubListener$media_release.a(inMobiInterstitial, log);
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRequestPayloadCreated(@NotNull byte[] request) {
        AbstractC2983h6 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(request, "request");
        InMobiInterstitial inMobiInterstitial = this.f25052a.get();
        if (inMobiInterstitial != null && (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) != null) {
            ((C2999i6) mPubListener$media_release).f24855a.onRequestPayloadCreated(request);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRequestPayloadCreationFailed(@NotNull InMobiAdRequestStatus status) {
        AbstractC2983h6 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(status, "reason");
        InMobiInterstitial inMobiInterstitial = this.f25052a.get();
        if (inMobiInterstitial != null && (mPubListener$media_release = inMobiInterstitial.getMPubListener$media_release()) != null) {
            Intrinsics.checkNotNullParameter(status, "status");
            ((C2999i6) mPubListener$media_release).f24855a.onRequestPayloadCreationFailed(status);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onRewardsUnlocked(@NotNull Map<Object, ? extends Object> rewards) {
        AbstractC2983h6 mPubListener$media_release;
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        InMobiInterstitial ad2 = this.f25052a.get();
        if (ad2 != null && (mPubListener$media_release = ad2.getMPubListener$media_release()) != null) {
            Intrinsics.checkNotNullParameter(ad2, "ad");
            Intrinsics.checkNotNullParameter(rewards, "rewards");
            ((C2999i6) mPubListener$media_release).f24855a.onRewardsUnlocked(ad2, rewards);
        }
    }

    @Override // com.inmobi.ads.controllers.PublisherCallbacks
    public void onUserLeftApplication() {
        AbstractC2983h6 mPubListener$media_release;
        InMobiInterstitial ad2 = this.f25052a.get();
        if (ad2 != null && (mPubListener$media_release = ad2.getMPubListener$media_release()) != null) {
            Intrinsics.checkNotNullParameter(ad2, "ad");
            ((C2999i6) mPubListener$media_release).f24855a.onUserLeftApplication(ad2);
        }
    }
}
