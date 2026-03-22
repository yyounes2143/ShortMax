package com.google.ads.mediation.bidmachine.common.delegate;

import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import io.bidmachine.AdListener;
import io.bidmachine.nativead.view.NativeMediaView;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public final class g extends c implements AdListener {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(String tag, MediationAdLoadCallback loadCallback, com.google.ads.mediation.bidmachine.common.auction.a auctionResultHandler) {
        super(tag, loadCallback, auctionResultHandler);
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(loadCallback, "loadCallback");
        Intrinsics.checkNotNullParameter(auctionResultHandler, "auctionResultHandler");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.ads.mediation.bidmachine.common.delegate.c
    /* renamed from: b */
    public UnifiedNativeAdMapper a(mp.b nativeAd, NativeMediaView mediaView) {
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        Intrinsics.checkNotNullParameter(mediaView, "mediaView");
        return new com.google.ads.mediation.bidmachine.common.g(nativeAd, mediaView);
    }
}
