package com.applovin.impl.mediation.debugger.ui.testmode;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdRegistration;
import com.amazon.device.ads.DTBAdResponse;
import com.applovin.impl.b3;
import com.applovin.impl.k3;
import com.applovin.impl.k7;
import com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.w;
import com.applovin.impl.x;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.mediation.ads.MaxAppOpenAd;
import com.applovin.mediation.ads.MaxInterstitialAd;
import com.applovin.mediation.ads.MaxRewardedAd;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdLoader;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.mediation.nativeAds.MaxNativeAdViewBinder;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class a extends k3 implements MaxRewardedAdListener, MaxAdViewAdListener, AdControlButton.a, MaxAdRevenueListener, w.a {

    /* renamed from: a  reason: collision with root package name */
    private b3 f8756a;

    /* renamed from: b  reason: collision with root package name */
    private k f8757b;

    /* renamed from: c  reason: collision with root package name */
    private MaxAdView f8758c;

    /* renamed from: d  reason: collision with root package name */
    private MaxAdView f8759d;

    /* renamed from: e  reason: collision with root package name */
    private MaxInterstitialAd f8760e;

    /* renamed from: f  reason: collision with root package name */
    private MaxAppOpenAd f8761f;

    /* renamed from: g  reason: collision with root package name */
    private MaxRewardedAd f8762g;

    /* renamed from: h  reason: collision with root package name */
    private MaxAd f8763h;

    /* renamed from: i  reason: collision with root package name */
    private MaxNativeAdLoader f8764i;

    /* renamed from: j  reason: collision with root package name */
    private List f8765j;

    /* renamed from: k  reason: collision with root package name */
    private String f8766k;

    /* renamed from: l  reason: collision with root package name */
    private AdControlButton f8767l;

    /* renamed from: m  reason: collision with root package name */
    private AdControlButton f8768m;

    /* renamed from: n  reason: collision with root package name */
    private AdControlButton f8769n;

    /* renamed from: o  reason: collision with root package name */
    private AdControlButton f8770o;

    /* renamed from: p  reason: collision with root package name */
    private AdControlButton f8771p;

    /* renamed from: q  reason: collision with root package name */
    private AdControlButton f8772q;

    /* renamed from: r  reason: collision with root package name */
    private Button f8773r;

    /* renamed from: s  reason: collision with root package name */
    private Button f8774s;

    /* renamed from: t  reason: collision with root package name */
    private FrameLayout f8775t;

    /* renamed from: u  reason: collision with root package name */
    private FrameLayout f8776u;

    /* renamed from: v  reason: collision with root package name */
    private Switch f8777v;

    /* renamed from: w  reason: collision with root package name */
    private Switch f8778w;

    /* renamed from: x  reason: collision with root package name */
    private Map f8779x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applovin.impl.mediation.debugger.ui.testmode.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0114a extends MaxNativeAdListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MaxNativeAdView f8780a;

        C0114a(MaxNativeAdView maxNativeAdView) {
            this.f8780a = maxNativeAdView;
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdClicked(MaxAd maxAd) {
            a.this.onAdClicked(maxAd);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdLoadFailed(String str, MaxError maxError) {
            a.this.onAdLoadFailed(str, maxError);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdLoaded(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
            if (a.this.f8763h != null) {
                a.this.f8764i.destroy(a.this.f8763h);
            }
            a.this.f8763h = maxAd;
            a.this.f8764i.render(this.f8780a, maxAd);
            a.this.f8776u.removeAllViews();
            a.this.f8776u.addView(this.f8780a);
            a.this.onAdLoaded(maxAd);
        }
    }

    private void e() {
        List r10 = this.f8756a.r();
        MaxAdFormat maxAdFormat = MaxAdFormat.REWARDED;
        if (r10.contains(maxAdFormat)) {
            String str = "test_mode_rewarded_" + this.f8756a.m();
            this.f8766k = str;
            MaxRewardedAd maxRewardedAd = MaxRewardedAd.getInstance(str, this.f8757b.z0(), this);
            this.f8762g = maxRewardedAd;
            maxRewardedAd.setExtraParameter("disable_auto_retries", "true");
            this.f8762g.setListener(this);
            AdControlButton adControlButton = (AdControlButton) findViewById(R.id.rewarded_control_button);
            this.f8771p = adControlButton;
            adControlButton.setOnClickListener(this);
            this.f8771p.setFormat(maxAdFormat);
            return;
        }
        findViewById(R.id.rewarded_control_view).setVisibility(8);
    }

    @Override // com.applovin.impl.k3
    protected k getSdk() {
        return this.f8757b;
    }

    public String getTestModeNetwork(MaxAdFormat maxAdFormat) {
        if (this.f8756a.x() != null && this.f8756a.x().containsKey(maxAdFormat)) {
            return (String) this.f8756a.x().get(maxAdFormat);
        }
        return this.f8756a.m();
    }

    public void initialize(b3 b3Var) {
        this.f8756a = b3Var;
        this.f8757b = b3Var.o();
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdClicked(@NonNull MaxAd maxAd) {
        k7.a("onAdClicked", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdCollapsed(@NonNull MaxAd maxAd) {
        k7.a("onAdCollapsed", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayFailed(@NonNull MaxAd maxAd, @NonNull MaxError maxError) {
        a(maxAd.getAdUnitId()).setControlState(AdControlButton.b.LOAD);
        k7.a("Failed to display " + maxAd.getFormat().getDisplayName(), "MAX Error\nCode: " + maxError.getCode() + "\nMessage: " + maxError.getMessage() + "\n\n" + maxAd.getNetworkName() + " Display Error\nCode: " + maxError.getMediatedNetworkErrorCode() + "\nMessage: " + maxError.getMediatedNetworkErrorMessage(), this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayed(@NonNull MaxAd maxAd) {
        k7.a("onAdDisplayed", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdExpanded(@NonNull MaxAd maxAd) {
        k7.a("onAdExpanded", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdHidden(@NonNull MaxAd maxAd) {
        k7.a("onAdHidden", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoadFailed(@NonNull String str, @NonNull MaxError maxError) {
        AdControlButton a10 = a(str);
        a10.setControlState(AdControlButton.b.LOAD);
        k7.a(maxError, a10.getFormat().getLabel(), this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoaded(@NonNull MaxAd maxAd) {
        AdControlButton a10 = a(maxAd.getAdUnitId());
        if (!maxAd.getFormat().isAdViewAd() && !maxAd.getFormat().equals(MaxAdFormat.NATIVE)) {
            a10.setControlState(AdControlButton.b.SHOW);
        } else {
            a10.setControlState(AdControlButton.b.LOAD);
        }
    }

    @Override // com.applovin.impl.w.a
    public void onAdResponseLoaded(DTBAdResponse dTBAdResponse, MaxAdFormat maxAdFormat) {
        if (MaxAdFormat.BANNER != maxAdFormat && MaxAdFormat.LEADER != maxAdFormat) {
            if (MaxAdFormat.MREC == maxAdFormat) {
                this.f8759d.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
            } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
                this.f8760e.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
            } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
                this.f8761f.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
            } else if (MaxAdFormat.REWARDED == maxAdFormat) {
                this.f8762g.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
            } else if (MaxAdFormat.NATIVE == maxAdFormat) {
                this.f8764i.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
            }
        } else {
            this.f8758c.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        }
        a(maxAdFormat);
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(@NonNull MaxAd maxAd) {
        k7.a("onAdRevenuePaid", maxAd, this);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton.a
    public void onClick(AdControlButton adControlButton) {
        MaxAdFormat format = adControlButton.getFormat();
        AdControlButton.b bVar = AdControlButton.b.LOAD;
        if (bVar == adControlButton.getControlState()) {
            adControlButton.setControlState(AdControlButton.b.LOADING);
            Map map = this.f8779x;
            if (map != null && map.get(format) != null) {
                ((w) this.f8779x.get(format)).a();
            } else {
                a(format);
            }
        } else if (AdControlButton.b.SHOW == adControlButton.getControlState()) {
            adControlButton.setControlState(bVar);
            b(format);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.f8756a == null) {
            o.h("MaxDebuggerMultiAdActivity", "Failed to initialize activity with a network model.");
            return;
        }
        setContentView(R.layout.mediation_debugger_multi_ad_activity);
        setTitle(this.f8756a.g() + " Test Ads");
        this.f8765j = this.f8757b.t0().b();
        a();
        c();
        b();
        e();
        d();
        findViewById(R.id.app_open_ad_control_view).setVisibility(8);
        this.f8773r = (Button) findViewById(R.id.show_mrec_button);
        this.f8774s = (Button) findViewById(R.id.show_native_button);
        if (this.f8756a.J() && this.f8756a.r().contains(MaxAdFormat.MREC)) {
            this.f8776u.setVisibility(8);
            this.f8773r.setBackgroundColor(-1);
            this.f8774s.setBackgroundColor(-3355444);
            this.f8773r.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.this.a(view);
                }
            });
            this.f8774s.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.this.b(view);
                }
            });
        } else {
            this.f8773r.setVisibility(8);
            this.f8774s.setVisibility(8);
        }
        this.f8777v = (Switch) findViewById(R.id.native_banner_switch);
        this.f8778w = (Switch) findViewById(R.id.native_mrec_switch);
        if (this.f8756a.K()) {
            this.f8777v.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.this.c(view);
                }
            });
            this.f8778w.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.this.d(view);
                }
            });
        } else {
            this.f8777v.setVisibility(8);
            this.f8778w.setVisibility(8);
        }
        if (StringUtils.isValidString(this.f8756a.e()) && this.f8756a.d() != null && this.f8756a.d().size() > 0) {
            AdRegistration.getInstance(this.f8756a.e(), this);
            AdRegistration.enableTesting(true);
            AdRegistration.enableLogging(true);
            HashMap hashMap = new HashMap(this.f8756a.d().size());
            for (MaxAdFormat maxAdFormat : this.f8756a.d().keySet()) {
                hashMap.put(maxAdFormat, new w((x) this.f8756a.d().get(maxAdFormat), maxAdFormat, getApplicationContext(), this));
            }
            this.f8779x = hashMap;
        }
        try {
            setRequestedOrientation(7);
        } catch (Throwable th2) {
            o.c("AppLovinSdk", "Failed to set portrait orientation", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f8757b.t0().a(this.f8765j);
        MaxAdView maxAdView = this.f8758c;
        if (maxAdView != null) {
            maxAdView.destroy();
        }
        MaxAdView maxAdView2 = this.f8759d;
        if (maxAdView2 != null) {
            maxAdView2.destroy();
        }
        MaxInterstitialAd maxInterstitialAd = this.f8760e;
        if (maxInterstitialAd != null) {
            maxInterstitialAd.destroy();
        }
        MaxRewardedAd maxRewardedAd = this.f8762g;
        if (maxRewardedAd != null) {
            maxRewardedAd.destroy();
        }
        MaxNativeAdLoader maxNativeAdLoader = this.f8764i;
        if (maxNativeAdLoader != null) {
            MaxAd maxAd = this.f8763h;
            if (maxAd != null) {
                maxNativeAdLoader.destroy(maxAd);
            }
            this.f8764i.destroy();
        }
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onUserRewarded(@NonNull MaxAd maxAd, @NonNull MaxReward maxReward) {
        k7.a("onUserRewarded", maxAd, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        this.f8759d.removeAllViews();
        this.f8768m.setControlState(AdControlButton.b.LOAD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        this.f8776u.setVisibility(0);
        this.f8775t.setVisibility(8);
        this.f8774s.setBackgroundColor(-1);
        this.f8773r.setBackgroundColor(-3355444);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        this.f8758c.removeAllViews();
        this.f8767l.setControlState(AdControlButton.b.LOAD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f8775t.setVisibility(0);
        this.f8776u.setVisibility(8);
        this.f8773r.setBackgroundColor(-1);
        this.f8774s.setBackgroundColor(-3355444);
    }

    private void d() {
        this.f8776u = (FrameLayout) findViewById(R.id.native_ad_view_container);
        if (this.f8756a.J()) {
            MaxNativeAdView maxNativeAdView = new MaxNativeAdView(new MaxNativeAdViewBinder.Builder(R.layout.max_native_ad_template_1).setTitleTextViewId(R.id.applovin_native_title_text_view).setAdvertiserTextViewId(R.id.applovin_native_advertiser_text_view).setBodyTextViewId(R.id.applovin_native_body_text_view).setCallToActionButtonId(R.id.applovin_native_cta_button).setIconImageViewId(R.id.applovin_native_icon_image_view).setOptionsContentViewGroupId(R.id.applovin_native_options_view).setStarRatingContentViewGroupId(R.id.applovin_native_star_rating_view).setMediaContentViewGroupId(R.id.applovin_native_media_content_view).build(), this);
            MaxNativeAdLoader maxNativeAdLoader = new MaxNativeAdLoader("test_mode_native");
            this.f8764i = maxNativeAdLoader;
            maxNativeAdLoader.setExtraParameter("disable_auto_retries", "true");
            this.f8764i.setNativeAdListener(new C0114a(maxNativeAdView));
            this.f8764i.setRevenueListener(this);
            AdControlButton adControlButton = (AdControlButton) findViewById(R.id.native_control_button);
            this.f8772q = adControlButton;
            adControlButton.setOnClickListener(this);
            this.f8772q.setFormat(MaxAdFormat.NATIVE);
            return;
        }
        findViewById(R.id.native_control_view).setVisibility(8);
        this.f8776u.setVisibility(8);
    }

    @Override // com.applovin.impl.w.a
    public void onAdLoadFailed(AdError adError, MaxAdFormat maxAdFormat) {
        if (MaxAdFormat.BANNER != maxAdFormat && MaxAdFormat.LEADER != maxAdFormat) {
            if (MaxAdFormat.MREC == maxAdFormat) {
                this.f8759d.setLocalExtraParameter("amazon_ad_error", adError);
            } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
                this.f8760e.setLocalExtraParameter("amazon_ad_error", adError);
            } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
                this.f8761f.setLocalExtraParameter("amazon_ad_error", adError);
            } else if (MaxAdFormat.REWARDED == maxAdFormat) {
                this.f8762g.setLocalExtraParameter("amazon_ad_error", adError);
            } else if (MaxAdFormat.NATIVE == maxAdFormat) {
                this.f8764i.setLocalExtraParameter("amazon_ad_error", adError);
            }
        } else {
            this.f8758c.setLocalExtraParameter("amazon_ad_error", adError);
        }
        a(maxAdFormat);
    }

    private void c() {
        this.f8775t = (FrameLayout) findViewById(R.id.mrec_ad_view_container);
        List r10 = this.f8756a.r();
        MaxAdFormat maxAdFormat = MaxAdFormat.MREC;
        if (r10.contains(maxAdFormat)) {
            MaxAdView maxAdView = new MaxAdView("test_mode_mrec", maxAdFormat, this.f8757b.z0(), this);
            this.f8759d = maxAdView;
            maxAdView.setExtraParameter("disable_auto_retries", "true");
            this.f8759d.setExtraParameter("disable_precache", "true");
            this.f8759d.setExtraParameter("allow_pause_auto_refresh_immediately", "true");
            this.f8759d.stopAutoRefresh();
            this.f8759d.setListener(this);
            this.f8775t.addView(this.f8759d, new FrameLayout.LayoutParams(-1, -1));
            AdControlButton adControlButton = (AdControlButton) findViewById(R.id.mrec_control_button);
            this.f8768m = adControlButton;
            adControlButton.setOnClickListener(this);
            this.f8768m.setFormat(maxAdFormat);
            return;
        }
        findViewById(R.id.mrec_control_view).setVisibility(8);
        this.f8775t.setVisibility(8);
    }

    private void b() {
        List r10 = this.f8756a.r();
        MaxAdFormat maxAdFormat = MaxAdFormat.INTERSTITIAL;
        if (r10.contains(maxAdFormat)) {
            MaxInterstitialAd maxInterstitialAd = new MaxInterstitialAd("test_mode_interstitial", this.f8757b.z0(), this);
            this.f8760e = maxInterstitialAd;
            maxInterstitialAd.setExtraParameter("disable_auto_retries", "true");
            this.f8760e.setListener(this);
            AdControlButton adControlButton = (AdControlButton) findViewById(R.id.interstitial_control_button);
            this.f8769n = adControlButton;
            adControlButton.setOnClickListener(this);
            this.f8769n.setFormat(maxAdFormat);
            return;
        }
        findViewById(R.id.interstitial_control_view).setVisibility(8);
    }

    private void a() {
        MaxAdFormat maxAdFormat;
        String str;
        boolean isTablet = AppLovinSdkUtils.isTablet(this);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.banner_ad_view_container);
        if (isTablet) {
            maxAdFormat = MaxAdFormat.LEADER;
            ((TextView) findViewById(R.id.banner_label)).setText("Leader");
            str = "test_mode_leader";
        } else {
            maxAdFormat = MaxAdFormat.BANNER;
            str = "test_mode_banner";
        }
        if (this.f8756a.r().contains(maxAdFormat)) {
            MaxAdView maxAdView = new MaxAdView(str, maxAdFormat, this.f8757b.z0(), this);
            this.f8758c = maxAdView;
            maxAdView.setExtraParameter("adaptive_banner", "false");
            this.f8758c.setExtraParameter("disable_auto_retries", "true");
            this.f8758c.setExtraParameter("disable_precache", "true");
            this.f8758c.setExtraParameter("allow_pause_auto_refresh_immediately", "true");
            this.f8758c.stopAutoRefresh();
            this.f8758c.setListener(this);
            frameLayout.addView(this.f8758c, new FrameLayout.LayoutParams(AppLovinSdkUtils.dpToPx(this, maxAdFormat.getSize().getWidth()), AppLovinSdkUtils.dpToPx(this, maxAdFormat.getSize().getHeight())));
            AdControlButton adControlButton = (AdControlButton) findViewById(R.id.banner_control_button);
            this.f8767l = adControlButton;
            adControlButton.setOnClickListener(this);
            this.f8767l.setFormat(maxAdFormat);
            return;
        }
        findViewById(R.id.banner_control_view).setVisibility(8);
        frameLayout.setVisibility(8);
    }

    private void b(MaxAdFormat maxAdFormat) {
        o.g("MaxDebuggerMultiAdActivity", "Showing test " + maxAdFormat.getDisplayName() + " Ad from " + this.f8756a.g());
        if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.f8760e.showAd();
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.f8761f.showAd();
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.f8762g.showAd();
        }
    }

    private void a(MaxAdFormat maxAdFormat) {
        o.g("MaxDebuggerMultiAdActivity", "Loading test " + maxAdFormat.getDisplayName() + " Ad from " + this.f8756a.g());
        MaxAdFormat maxAdFormat2 = MaxAdFormat.BANNER;
        boolean z10 = false;
        boolean z11 = (maxAdFormat2 == maxAdFormat || MaxAdFormat.LEADER == maxAdFormat) && this.f8777v.isChecked();
        MaxAdFormat maxAdFormat3 = MaxAdFormat.MREC;
        if (maxAdFormat3 == maxAdFormat && this.f8778w.isChecked()) {
            z10 = true;
        }
        if (!z11 && !z10) {
            this.f8757b.t0().a(getTestModeNetwork(maxAdFormat));
        } else {
            this.f8757b.t0().a(this.f8756a.w());
        }
        if (maxAdFormat2 == maxAdFormat || MaxAdFormat.LEADER == maxAdFormat) {
            this.f8758c.loadAd();
        } else if (maxAdFormat3 == maxAdFormat) {
            this.f8759d.loadAd();
            this.f8773r.callOnClick();
        } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.f8760e.loadAd();
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.f8761f.loadAd();
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.f8762g.loadAd();
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.f8764i.loadAd();
            this.f8774s.callOnClick();
        }
    }

    private AdControlButton a(String str) {
        if (!str.equals("test_mode_banner") && !str.equals("test_mode_leader")) {
            if (str.equals("test_mode_mrec")) {
                return this.f8768m;
            }
            if (str.equals("test_mode_interstitial")) {
                return this.f8769n;
            }
            if (str.equals("test_mode_app_open")) {
                return this.f8770o;
            }
            if (str.equals(this.f8766k)) {
                return this.f8771p;
            }
            if (str.equals("test_mode_native")) {
                return this.f8772q;
            }
            throw new IllegalArgumentException("Invalid test mode ad unit identifier provided " + str);
        }
        return this.f8767l;
    }
}
