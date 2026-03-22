package com.google.ads.mediation.bidmachine.waterfall;

import android.content.Context;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import io.bidmachine.AdsType;
import io.bidmachine.nativead.NativeRequest;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public final class e extends b {

    /* renamed from: g  reason: collision with root package name */
    public static final a f16987g = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private final com.google.ads.mediation.bidmachine.common.delegate.e f16988f;

    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(MediationAdLoadCallback adLoadCallback) {
        super("AdMobBMNativeWaterfallAd", AdsType.Native, adLoadCallback, new com.google.ads.mediation.bidmachine.waterfall.request.d());
        Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
        this.f16988f = new com.google.ads.mediation.bidmachine.common.delegate.e("AdMobBMNativeWaterfallAd", adLoadCallback, new com.google.ads.mediation.bidmachine.waterfall.auction.a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.ads.mediation.bidmachine.common.a
    public void a(Context context, NativeRequest adRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        this.f16988f.a(context, adRequest);
    }
}
