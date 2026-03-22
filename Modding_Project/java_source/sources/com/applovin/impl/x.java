package com.applovin.impl;

import com.amazon.device.ads.DTBAdSize;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    private final String f10494a;

    /* renamed from: b  reason: collision with root package name */
    private final DTBAdSize f10495b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum a {
        VIDEO,
        DISPLAY,
        INTERSTITIAL
    }

    public x(String str, JSONObject jSONObject, MaxAdFormat maxAdFormat) {
        this.f10494a = str;
        this.f10495b = a(JsonUtils.getInt(jSONObject, "type", a(maxAdFormat).ordinal()), maxAdFormat, str);
    }

    public DTBAdSize a() {
        return this.f10495b;
    }

    private a a(MaxAdFormat maxAdFormat) {
        return maxAdFormat.isAdViewAd() ? a.DISPLAY : a.INTERSTITIAL;
    }

    private DTBAdSize a(int i10, MaxAdFormat maxAdFormat, String str) {
        try {
            if (a.VIDEO.ordinal() == i10) {
                return new DTBAdSize.DTBVideo(320, 480, str);
            }
            if (a.DISPLAY.ordinal() == i10) {
                return new DTBAdSize(maxAdFormat.getSize().getWidth(), maxAdFormat.getSize().getHeight(), str);
            }
            if (a.INTERSTITIAL.ordinal() == i10) {
                return new DTBAdSize.DTBInterstitialAdSize(str);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
