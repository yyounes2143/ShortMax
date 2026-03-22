package com.applovin.mediation.ads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.k7;
import com.applovin.impl.mediation.ads.MaxFullscreenAdImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.sdk.k;
import com.applovin.mediation.MaxAdExpirationListener;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdReviewListener;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class MaxInterstitialAd implements MaxFullscreenAdImpl.a {

    /* renamed from: b  reason: collision with root package name */
    private static WeakReference f10797b = new WeakReference(null);

    /* renamed from: a  reason: collision with root package name */
    private final MaxFullscreenAdImpl f10798a;

    public MaxInterstitialAd(String str) {
        this(str, k.o());
    }

    public void destroy() {
        this.f10798a.logApiCall("destroy()");
        this.f10798a.destroy();
    }

    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.a
    public Activity getActivity() {
        this.f10798a.logApiCall("getActivity()");
        return (Activity) f10797b.get();
    }

    public String getAdUnitId() {
        return this.f10798a.getAdUnitId();
    }

    public boolean isReady() {
        boolean isReady = this.f10798a.isReady();
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f10798a;
        maxFullscreenAdImpl.logApiCall("isReady() " + isReady + " for ad unit id " + this.f10798a.getAdUnitId());
        return isReady;
    }

    public void loadAd() {
        this.f10798a.logApiCall("loadAd()");
        this.f10798a.loadAd();
    }

    public void setAdReviewListener(MaxAdReviewListener maxAdReviewListener) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f10798a;
        maxFullscreenAdImpl.logApiCall("setAdReviewListener(listener=" + maxAdReviewListener + ")");
        this.f10798a.setAdReviewListener(maxAdReviewListener);
    }

    public void setExpirationListener(@Nullable MaxAdExpirationListener maxAdExpirationListener) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f10798a;
        maxFullscreenAdImpl.logApiCall("setExpirationListener(listener=" + maxAdExpirationListener + ")");
        this.f10798a.setExpirationListener(maxAdExpirationListener);
    }

    public void setExtraParameter(String str, String str2) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f10798a;
        maxFullscreenAdImpl.logApiCall("setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.f10798a.setExtraParameter(str, str2);
    }

    public void setListener(MaxAdListener maxAdListener) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f10798a;
        maxFullscreenAdImpl.logApiCall("setListener(listener=" + maxAdListener + ")");
        this.f10798a.setListener(maxAdListener);
    }

    public void setLocalExtraParameter(String str, Object obj) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f10798a;
        maxFullscreenAdImpl.logApiCall("setLocalExtraParameter(key=" + str + ", value=" + obj + ")");
        this.f10798a.setLocalExtraParameter(str, obj);
    }

    public void setRequestListener(MaxAdRequestListener maxAdRequestListener) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f10798a;
        maxFullscreenAdImpl.logApiCall("setRequestListener(listener=" + maxAdRequestListener + ")");
        this.f10798a.setRequestListener(maxAdRequestListener);
    }

    public void setRevenueListener(MaxAdRevenueListener maxAdRevenueListener) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f10798a;
        maxFullscreenAdImpl.logApiCall("setRevenueListener(listener=" + maxAdRevenueListener + ")");
        this.f10798a.setRevenueListener(maxAdRevenueListener);
    }

    public void showAd(Activity activity) {
        showAd((String) null, activity);
    }

    public String toString() {
        return "" + this.f10798a;
    }

    @Deprecated
    public MaxInterstitialAd(String str, Context context) {
        this(str, AppLovinSdk.getInstance(context), context);
    }

    public void showAd(String str, Activity activity) {
        showAd(str, (String) null, activity);
    }

    @Deprecated
    public MaxInterstitialAd(String str, AppLovinSdk appLovinSdk, Context context) {
        a.logApiCall("MaxInterstitialAd", "MaxInterstitialAd(adUnitId=" + str + ", sdk=" + appLovinSdk + ", context=" + context + ")");
        if (str != null) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Empty ad unit ID specified");
            }
            if (context == null) {
                throw new IllegalArgumentException("No context specified");
            }
            if (appLovinSdk != null) {
                if (context instanceof Activity) {
                    f10797b = new WeakReference((Activity) context);
                }
                this.f10798a = new MaxFullscreenAdImpl(str.trim(), MaxAdFormat.INTERSTITIAL, this, "MaxInterstitialAd", appLovinSdk.a(), context);
                return;
            }
            throw new IllegalArgumentException("No sdk specified");
        }
        throw new IllegalArgumentException("No ad unit ID specified");
    }

    public void showAd(String str, String str2, Activity activity) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f10798a;
        maxFullscreenAdImpl.logApiCall("showAd(placement=" + str + ", customData=" + str2 + ", activity=" + activity + ")");
        k7.b(str2, "MaxInterstitialAd");
        this.f10798a.showAd(str, str2, activity);
    }

    public void showAd(ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        showAd((String) null, viewGroup, lifecycle, activity);
    }

    public void showAd(String str, ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        showAd(str, null, viewGroup, lifecycle, activity);
    }

    public void showAd(String str, String str2, ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f10798a;
        maxFullscreenAdImpl.logApiCall("showAd(placement=" + str + ", customData=" + str2 + ", containerView=" + viewGroup + ", lifecycle=" + lifecycle + ", activity=" + activity + ")");
        this.f10798a.showAd(str, str2, viewGroup, lifecycle, activity);
    }

    @Deprecated
    public void showAd() {
        showAd((String) null);
    }

    @Deprecated
    public void showAd(String str) {
        showAd(str, (String) null);
    }

    @Deprecated
    public void showAd(String str, String str2) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f10798a;
        maxFullscreenAdImpl.logApiCall("showAd(placement=" + str + ", customData=" + str2 + ")");
        k7.b(str2, "MaxInterstitialAd");
        this.f10798a.showAd(str, str2, getActivity());
    }

    @Deprecated
    public void showAd(ViewGroup viewGroup, Lifecycle lifecycle) {
        showAd((String) null, viewGroup, lifecycle);
    }

    @Deprecated
    public void showAd(String str, ViewGroup viewGroup, Lifecycle lifecycle) {
        showAd(str, (String) null, viewGroup, lifecycle);
    }

    @Deprecated
    public void showAd(String str, String str2, ViewGroup viewGroup, Lifecycle lifecycle) {
        MaxFullscreenAdImpl maxFullscreenAdImpl = this.f10798a;
        maxFullscreenAdImpl.logApiCall("showAd(placement=" + str + ", customData=" + str2 + ", containerView=" + viewGroup + ", lifecycle=" + lifecycle + ")");
        this.f10798a.showAd(str, str2, viewGroup, lifecycle, getActivity());
    }
}
