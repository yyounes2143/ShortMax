package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdListener;
import com.facebook.ads.AdView;
/* renamed from: com.facebook.ads.redexgen.X.Ug  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1758Ug implements AdView.AdViewLoadConfigBuilder, AdView.AdViewLoadConfig {
    public String A00;
    public final C1675Qz A01;

    public C1758Ug(C1675Qz c1675Qz) {
        this.A01 = c1675Qz;
    }

    public final String A00() {
        return this.A00;
    }

    @Override // com.facebook.ads.AdView.AdViewLoadConfigBuilder, com.facebook.ads.Ad.LoadConfigBuilder
    public final AdView.AdViewLoadConfig build() {
        return this;
    }

    @Override // com.facebook.ads.AdView.AdViewLoadConfigBuilder
    public final AdView.AdViewLoadConfigBuilder withAdListener(AdListener adListener) {
        this.A01.A0C(adListener);
        return this;
    }

    @Override // com.facebook.ads.AdView.AdViewLoadConfigBuilder, com.facebook.ads.Ad.LoadConfigBuilder
    public final AdView.AdViewLoadConfigBuilder withBid(String str) {
        this.A00 = str;
        return this;
    }
}
