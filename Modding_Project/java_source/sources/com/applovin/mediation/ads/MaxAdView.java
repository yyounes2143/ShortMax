package com.applovin.mediation.ads;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.b8;
import com.applovin.impl.mediation.ads.MaxAdViewImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.s;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdReviewListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxAdViewConfiguration;
import com.applovin.sdk.AppLovinSdk;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
/* loaded from: classes2.dex */
public class MaxAdView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private MaxAdViewImpl f10793a;

    /* renamed from: b  reason: collision with root package name */
    private View f10794b;

    /* renamed from: c  reason: collision with root package name */
    private int f10795c;

    public MaxAdView(String str) {
        this(str, (MaxAdViewConfiguration) null);
    }

    private void a(String str, MaxAdFormat maxAdFormat, MaxAdViewConfiguration maxAdViewConfiguration, int i10, Context context) {
        View view = new View(context.getApplicationContext());
        this.f10794b = view;
        view.setBackgroundColor(0);
        addView(this.f10794b);
        this.f10794b.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f10795c = getVisibility();
        this.f10793a = new MaxAdViewImpl(str.trim(), maxAdFormat, maxAdViewConfiguration, this, this.f10794b, context);
        setGravity(i10);
        if (getBackground() instanceof ColorDrawable) {
            setBackgroundColor(((ColorDrawable) getBackground()).getColor());
        }
        super.setBackgroundColor(0);
    }

    public void destroy() {
        this.f10793a.logApiCall("destroy()");
        this.f10793a.destroy();
    }

    public MaxAdFormat getAdFormat() {
        return this.f10793a.getAdFormat();
    }

    public String getAdUnitId() {
        return this.f10793a.getAdUnitId();
    }

    public String getPlacement() {
        this.f10793a.logApiCall("getPlacement()");
        return this.f10793a.getPlacement();
    }

    public void loadAd() {
        this.f10793a.logApiCall("loadAd()");
        this.f10793a.loadAd();
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        if (!isInEditMode()) {
            MaxAdViewImpl maxAdViewImpl = this.f10793a;
            maxAdViewImpl.logApiCall("onWindowVisibilityChanged(visibility=" + i10 + ")");
            if (this.f10793a != null && b8.a(this.f10795c, i10)) {
                this.f10793a.onWindowVisibilityChanged(i10);
            }
            this.f10795c = i10;
        }
    }

    public void setAdReviewListener(MaxAdReviewListener maxAdReviewListener) {
        MaxAdViewImpl maxAdViewImpl = this.f10793a;
        maxAdViewImpl.logApiCall("setAdReviewListener(listener=" + maxAdReviewListener + ")");
        this.f10793a.setAdReviewListener(maxAdReviewListener);
    }

    @Override // android.view.View
    public void setAlpha(float f10) {
        MaxAdViewImpl maxAdViewImpl = this.f10793a;
        maxAdViewImpl.logApiCall("setAlpha(alpha=" + f10 + ")");
        View view = this.f10794b;
        if (view != null) {
            view.setAlpha(f10);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        MaxAdViewImpl maxAdViewImpl = this.f10793a;
        maxAdViewImpl.logApiCall("setBackgroundColor(color=" + i10 + ")");
        MaxAdViewImpl maxAdViewImpl2 = this.f10793a;
        if (maxAdViewImpl2 != null) {
            maxAdViewImpl2.setPublisherBackgroundColor(i10);
        }
        View view = this.f10794b;
        if (view != null) {
            view.setBackgroundColor(i10);
        }
    }

    public void setCustomData(String str) {
        MaxAdViewImpl maxAdViewImpl = this.f10793a;
        maxAdViewImpl.logApiCall("setCustomData(value=" + str + ")");
        this.f10793a.setCustomData(str);
    }

    public void setExtraParameter(String str, String str2) {
        MaxAdViewImpl maxAdViewImpl = this.f10793a;
        maxAdViewImpl.logApiCall("setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.f10793a.setExtraParameter(str, str2);
    }

    public void setListener(MaxAdViewAdListener maxAdViewAdListener) {
        MaxAdViewImpl maxAdViewImpl = this.f10793a;
        maxAdViewImpl.logApiCall("setListener(listener=" + maxAdViewAdListener + ")");
        this.f10793a.setListener(maxAdViewAdListener);
    }

    public void setLocalExtraParameter(String str, Object obj) {
        MaxAdViewImpl maxAdViewImpl = this.f10793a;
        maxAdViewImpl.logApiCall("setLocalExtraParameter(key=" + str + ", value=" + obj + ")");
        this.f10793a.setLocalExtraParameter(str, obj);
    }

    public void setPlacement(String str) {
        MaxAdViewImpl maxAdViewImpl = this.f10793a;
        maxAdViewImpl.logApiCall("setPlacement(placement=" + str + ")");
        this.f10793a.setPlacement(str);
    }

    public void setRequestListener(MaxAdRequestListener maxAdRequestListener) {
        MaxAdViewImpl maxAdViewImpl = this.f10793a;
        maxAdViewImpl.logApiCall("setRequestListener(listener=" + maxAdRequestListener + ")");
        this.f10793a.setRequestListener(maxAdRequestListener);
    }

    public void setRevenueListener(MaxAdRevenueListener maxAdRevenueListener) {
        MaxAdViewImpl maxAdViewImpl = this.f10793a;
        maxAdViewImpl.logApiCall("setRevenueListener(listener=" + maxAdRevenueListener + ")");
        this.f10793a.setRevenueListener(maxAdRevenueListener);
    }

    public void startAutoRefresh() {
        this.f10793a.logApiCall("startAutoRefresh()");
        this.f10793a.startAutoRefresh();
    }

    public void stopAutoRefresh() {
        this.f10793a.logApiCall("stopAutoRefresh()");
        this.f10793a.stopAutoRefresh();
    }

    @Override // android.view.View
    @NonNull
    public String toString() {
        MaxAdViewImpl maxAdViewImpl = this.f10793a;
        if (maxAdViewImpl != null) {
            return maxAdViewImpl.toString();
        }
        return "MaxAdView";
    }

    public MaxAdView(String str, MaxAdFormat maxAdFormat) {
        this(str, maxAdFormat, (MaxAdViewConfiguration) null);
    }

    public MaxAdView(String str, @Nullable MaxAdViewConfiguration maxAdViewConfiguration) {
        this(str, s.a(k.o()), maxAdViewConfiguration);
    }

    public MaxAdView(String str, MaxAdFormat maxAdFormat, @Nullable MaxAdViewConfiguration maxAdViewConfiguration) {
        super(k.o());
        a.logApiCall("MaxAdView", "MaxAdView(adUnitId=" + str + ", adFormat=" + maxAdFormat + ", configuration=" + maxAdViewConfiguration + ")");
        a(str, maxAdFormat, maxAdViewConfiguration, 49, k.o());
    }

    public MaxAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaxAdView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        MaxAdFormat a10;
        String a11 = s.a(context, attributeSet, AppLovinAdView.NAMESPACE, HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID);
        String a12 = s.a(context, attributeSet, AppLovinAdView.NAMESPACE, "adFormat");
        if (StringUtils.isValidString(a12)) {
            a10 = MaxAdFormat.formatFromString(a12);
        } else {
            a10 = s.a(context);
        }
        MaxAdFormat maxAdFormat = a10;
        int attributeIntValue = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 49);
        if (a11 != null) {
            if (!TextUtils.isEmpty(a11)) {
                if (isInEditMode()) {
                    a(context);
                    return;
                } else {
                    a(a11, maxAdFormat, null, attributeIntValue, context);
                    return;
                }
            }
            throw new IllegalArgumentException("Empty ad unit ID specified");
        }
        throw new IllegalArgumentException("No ad unit ID specified");
    }

    private void a(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i10 = displayMetrics.widthPixels;
        int i11 = displayMetrics.heightPixels;
        TextView textView = new TextView(context);
        textView.setBackgroundColor(Color.rgb(220, 220, 220));
        textView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setText("AppLovin MAX Ad");
        textView.setGravity(17);
        addView(textView, i10, i11);
    }

    @Deprecated
    public MaxAdView(String str, Context context) {
        this(str, AppLovinSdk.getInstance(context), context);
    }

    @Deprecated
    public MaxAdView(String str, AppLovinSdk appLovinSdk, Context context) {
        this(str, s.a(context), context);
    }

    @Deprecated
    public MaxAdView(String str, MaxAdFormat maxAdFormat, Context context) {
        this(str, maxAdFormat, AppLovinSdk.getInstance(context), context);
    }

    @Deprecated
    public MaxAdView(String str, MaxAdFormat maxAdFormat, AppLovinSdk appLovinSdk, Context context) {
        super(context);
        a.logApiCall("MaxAdView", "MaxAdView(adUnitId=" + str + ", adFormat=" + maxAdFormat + ")");
        a(str, maxAdFormat, null, 49, context);
    }
}
