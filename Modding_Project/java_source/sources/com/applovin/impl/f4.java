package com.applovin.impl;

import android.webkit.WebView;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.CreativeType;
import com.iab.omid.library.applovin.adsession.ImpressionType;
import com.iab.omid.library.applovin.adsession.Owner;
/* loaded from: classes2.dex */
public class f4 extends c4 {
    public f4(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        super(appLovinNativeAdImpl);
    }

    @Override // com.applovin.impl.c4
    protected AdSessionContext a(WebView webView) {
        try {
            return AdSessionContext.createNativeAdSessionContext(this.f7696b.e0().b(), this.f7696b.e0().a(), this.f7695a.getOpenMeasurementVerificationScriptResources(), this.f7695a.getOpenMeasurementContentUrl(), this.f7695a.getOpenMeasurementCustomReferenceData());
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7697c.a(this.f7698d, "Failed to create ad session context", th2);
            }
            return null;
        }
    }

    @Override // com.applovin.impl.c4
    protected AdSessionConfiguration a() {
        try {
            return AdSessionConfiguration.createAdSessionConfiguration(CreativeType.NATIVE_DISPLAY, ImpressionType.BEGIN_TO_RENDER, Owner.NATIVE, Owner.NONE, false);
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7697c.a(this.f7698d, "Failed to create ad session configuration", th2);
            }
            return null;
        }
    }
}
