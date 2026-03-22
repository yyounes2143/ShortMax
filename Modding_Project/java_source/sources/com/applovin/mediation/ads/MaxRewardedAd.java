package com.applovin.mediation.ads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.k7;
import com.applovin.impl.mediation.ads.MaxFullscreenAdImpl;
import com.applovin.impl.mediation.ads.MaxRewardedAdImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.sdk.k;
import com.applovin.mediation.MaxAdExpirationListener;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdReviewListener;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class MaxRewardedAd implements MaxFullscreenAdImpl.a {

    /* renamed from: b  reason: collision with root package name */
    private static final Map f10799b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private static final Object f10800c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static WeakReference f10801d = new WeakReference(null);

    /* renamed from: a  reason: collision with root package name */
    private final MaxRewardedAdImpl f10802a;

    private MaxRewardedAd(String str, AppLovinSdk appLovinSdk, Context context) {
        this.f10802a = new MaxRewardedAdImpl(str.trim(), MaxAdFormat.REWARDED, this, "MaxRewardedAd", appLovinSdk.a(), context);
    }

    public static MaxRewardedAd getInstance(String str) {
        return getInstance(str, k.o());
    }

    public void destroy() {
        this.f10802a.logApiCall("destroy()");
        synchronized (f10800c) {
            f10799b.remove(this.f10802a.getAdUnitId());
        }
        this.f10802a.destroy();
    }

    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.a
    public Activity getActivity() {
        this.f10802a.logApiCall("getActivity()");
        return (Activity) f10801d.get();
    }

    public String getAdUnitId() {
        return this.f10802a.getAdUnitId();
    }

    public boolean isReady() {
        boolean isReady = this.f10802a.isReady();
        MaxRewardedAdImpl maxRewardedAdImpl = this.f10802a;
        maxRewardedAdImpl.logApiCall("isReady() " + isReady + " for ad unit id " + this.f10802a.getAdUnitId());
        return isReady;
    }

    public void loadAd() {
        this.f10802a.logApiCall("loadAd()");
        this.f10802a.loadAd();
    }

    public void setAdReviewListener(MaxAdReviewListener maxAdReviewListener) {
        MaxRewardedAdImpl maxRewardedAdImpl = this.f10802a;
        maxRewardedAdImpl.logApiCall("setAdReviewListener(listener=" + maxAdReviewListener + ")");
        this.f10802a.setAdReviewListener(maxAdReviewListener);
    }

    public void setExpirationListener(@Nullable MaxAdExpirationListener maxAdExpirationListener) {
        MaxRewardedAdImpl maxRewardedAdImpl = this.f10802a;
        maxRewardedAdImpl.logApiCall("setExpirationListener(listener=" + maxAdExpirationListener + ")");
        this.f10802a.setExpirationListener(maxAdExpirationListener);
    }

    public void setExtraParameter(String str, String str2) {
        MaxRewardedAdImpl maxRewardedAdImpl = this.f10802a;
        maxRewardedAdImpl.logApiCall("setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.f10802a.setExtraParameter(str, str2);
    }

    public void setListener(MaxRewardedAdListener maxRewardedAdListener) {
        MaxRewardedAdImpl maxRewardedAdImpl = this.f10802a;
        maxRewardedAdImpl.logApiCall("setListener(listener=" + maxRewardedAdListener + ")");
        this.f10802a.setListener(maxRewardedAdListener);
    }

    public void setLocalExtraParameter(String str, Object obj) {
        MaxRewardedAdImpl maxRewardedAdImpl = this.f10802a;
        maxRewardedAdImpl.logApiCall("setLocalExtraParameter(key=" + str + ", value=" + obj + ")");
        this.f10802a.setLocalExtraParameter(str, obj);
    }

    public void setRequestListener(MaxAdRequestListener maxAdRequestListener) {
        MaxRewardedAdImpl maxRewardedAdImpl = this.f10802a;
        maxRewardedAdImpl.logApiCall("setRequestListener(listener=" + maxAdRequestListener + ")");
        this.f10802a.setRequestListener(maxAdRequestListener);
    }

    public void setRevenueListener(MaxAdRevenueListener maxAdRevenueListener) {
        MaxRewardedAdImpl maxRewardedAdImpl = this.f10802a;
        maxRewardedAdImpl.logApiCall("setRevenueListener(listener=" + maxAdRevenueListener + ")");
        this.f10802a.setRevenueListener(maxAdRevenueListener);
    }

    public void showAd(Activity activity) {
        showAd((String) null, activity);
    }

    public String toString() {
        return "" + this.f10802a;
    }

    @Deprecated
    public static MaxRewardedAd getInstance(String str, Context context) {
        return getInstance(str, AppLovinSdk.getInstance(context), context);
    }

    public void showAd(String str, Activity activity) {
        showAd(str, (String) null, activity);
    }

    @Deprecated
    public static MaxRewardedAd getInstance(String str, AppLovinSdk appLovinSdk, Context context) {
        a.logApiCall("MaxRewardedAd", "getInstance(adUnitId=" + str + ", sdk=" + appLovinSdk + ", context=" + context + ")");
        if (str != null) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Empty ad unit ID specified");
            }
            if (context != null) {
                if (appLovinSdk != null) {
                    if (context instanceof Activity) {
                        f10801d = new WeakReference((Activity) context);
                    }
                    synchronized (f10800c) {
                        try {
                            Map map = f10799b;
                            MaxRewardedAd maxRewardedAd = (MaxRewardedAd) map.get(str);
                            if (maxRewardedAd != null) {
                                return maxRewardedAd;
                            }
                            MaxRewardedAd maxRewardedAd2 = new MaxRewardedAd(str, appLovinSdk, context);
                            map.put(str, maxRewardedAd2);
                            return maxRewardedAd2;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                throw new IllegalArgumentException("No sdk specified");
            }
            throw new IllegalArgumentException("No context specified");
        }
        throw new IllegalArgumentException("No ad unit ID specified");
    }

    public void showAd(String str, String str2, Activity activity) {
        MaxRewardedAdImpl maxRewardedAdImpl = this.f10802a;
        maxRewardedAdImpl.logApiCall("showAd(placement=" + str + ", customData=" + str2 + ", activity=" + activity + ")");
        k7.b(str2, "MaxRewardedAd");
        this.f10802a.showAd(str, str2, activity);
    }

    public void showAd(ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        showAd((String) null, viewGroup, lifecycle, activity);
    }

    public void showAd(String str, ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        showAd(str, null, viewGroup, lifecycle, activity);
    }

    public void showAd(String str, String str2, ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        MaxRewardedAdImpl maxRewardedAdImpl = this.f10802a;
        maxRewardedAdImpl.logApiCall("showAd(placement=" + str + ", customData=" + str2 + ", containerView=" + viewGroup + ", lifecycle=" + lifecycle + ", activity=" + activity + ")");
        this.f10802a.showAd(str, str2, viewGroup, lifecycle, activity);
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
        MaxRewardedAdImpl maxRewardedAdImpl = this.f10802a;
        maxRewardedAdImpl.logApiCall("showAd(placement=" + str + ", customData=" + str2 + ")");
        k7.b(str2, "MaxRewardedAd");
        this.f10802a.showAd(str, str2, getActivity());
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
        MaxRewardedAdImpl maxRewardedAdImpl = this.f10802a;
        maxRewardedAdImpl.logApiCall("showAd(placement=" + str + ", customData=" + str2 + ", containerView=" + viewGroup + ", lifecycle=" + lifecycle + ")");
        this.f10802a.showAd(str, str2, viewGroup, lifecycle, getActivity());
    }
}
