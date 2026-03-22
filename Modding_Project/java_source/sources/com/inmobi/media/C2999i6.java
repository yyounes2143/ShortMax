package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiInterstitial;
import com.inmobi.ads.listeners.InterstitialAdEventListener;
import java.lang.reflect.Method;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.i6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2999i6 extends AbstractC2983h6 {

    /* renamed from: a  reason: collision with root package name */
    public final InterstitialAdEventListener f24855a;

    public C2999i6(InterstitialAdEventListener adEventListener) {
        Intrinsics.checkNotNullParameter(adEventListener, "adEventListener");
        this.f24855a = adEventListener;
    }

    @Override // com.inmobi.media.AbstractC3263z
    public final void a(Object obj, Map params) {
        InMobiInterstitial ad2 = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(params, "params");
        this.f24855a.onAdClicked(ad2, params);
    }

    @Override // com.inmobi.media.AbstractC3263z
    public final void b(Object obj, AdMetaInfo info) {
        InMobiInterstitial ad2 = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f24855a.onAdLoadSucceeded(ad2, info);
    }

    @Override // com.inmobi.media.AbstractC3263z
    public final void a(Object obj, AdMetaInfo info) {
        InMobiInterstitial ad2 = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f24855a.onAdFetchSuccessful(ad2, info);
    }

    @Override // com.inmobi.media.AbstractC3263z
    public final void a(Object obj) {
        InMobiInterstitial ad2 = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad2, "ad");
        this.f24855a.onAdImpression(ad2);
    }

    @Override // com.inmobi.media.AbstractC3263z
    public final void a(Object obj, InMobiAdRequestStatus status) {
        InMobiInterstitial ad2 = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f24855a.onAdLoadFailed(ad2, status);
    }

    @Override // com.inmobi.media.AbstractC3263z
    public final void a(Object obj, String data) {
        InMobiInterstitial ad2 = (InMobiInterstitial) obj;
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            Class<?> cls = Class.forName("IMraidLog");
            Method declaredMethod = cls.getDeclaredMethod("imraidLog", InterstitialAdEventListener.class, InMobiInterstitial.class, String.class);
            Intrinsics.checkNotNullExpressionValue(declaredMethod, "getDeclaredMethod(...)");
            declaredMethod.invoke(cls.newInstance(), this.f24855a, ad2, data);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
