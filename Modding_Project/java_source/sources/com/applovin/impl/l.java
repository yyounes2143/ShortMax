package com.applovin.impl;

import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.DTBAdResponse;
import com.applovin.impl.d;
import com.applovin.impl.m;
import com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton;
import com.applovin.impl.p2;
import com.applovin.impl.w;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxDebuggerAdUnitDetailActivity;
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
import java.util.List;
/* loaded from: classes2.dex */
public abstract class l extends k3 implements AdControlButton.a, MaxRewardedAdListener, MaxAdViewAdListener, MaxAdRevenueListener, w.a {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f8276a;

    /* renamed from: b  reason: collision with root package name */
    private n f8277b;

    /* renamed from: c  reason: collision with root package name */
    private f8 f8278c;

    /* renamed from: d  reason: collision with root package name */
    private m f8279d;

    /* renamed from: e  reason: collision with root package name */
    private MaxAdView f8280e;

    /* renamed from: f  reason: collision with root package name */
    private MaxInterstitialAd f8281f;

    /* renamed from: g  reason: collision with root package name */
    private MaxAppOpenAd f8282g;

    /* renamed from: h  reason: collision with root package name */
    private MaxRewardedAd f8283h;

    /* renamed from: i  reason: collision with root package name */
    private MaxNativeAdView f8284i;

    /* renamed from: j  reason: collision with root package name */
    private MaxNativeAdLoader f8285j;

    /* renamed from: k  reason: collision with root package name */
    private MaxAd f8286k;

    /* renamed from: l  reason: collision with root package name */
    private r f8287l;

    /* renamed from: m  reason: collision with root package name */
    private List f8288m;

    /* renamed from: n  reason: collision with root package name */
    private ListView f8289n;

    /* renamed from: o  reason: collision with root package name */
    private View f8290o;

    /* renamed from: p  reason: collision with root package name */
    private AdControlButton f8291p;

    /* renamed from: q  reason: collision with root package name */
    private TextView f8292q;

    /* renamed from: r  reason: collision with root package name */
    private w f8293r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends MaxNativeAdListener {
        a() {
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdClicked(MaxAd maxAd) {
            l.this.onAdClicked(maxAd);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdLoadFailed(String str, MaxError maxError) {
            l.this.onAdLoadFailed(str, maxError);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdLoaded(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
            if (l.this.f8286k != null) {
                l.this.f8285j.destroy(l.this.f8286k);
            }
            l.this.f8286k = maxAd;
            l.this.f8285j.render(l.this.f8284i, maxAd);
            l.this.onAdLoaded(maxAd);
        }
    }

    @Override // com.applovin.impl.k3
    protected com.applovin.impl.sdk.k getSdk() {
        return this.f8276a;
    }

    public void initialize(final n nVar, @Nullable final o oVar, @Nullable f8 f8Var, final com.applovin.impl.sdk.k kVar) {
        List a10;
        this.f8276a = kVar;
        this.f8277b = nVar;
        this.f8278c = f8Var;
        this.f8288m = kVar.t0().b();
        m mVar = new m(nVar, oVar, f8Var, this);
        this.f8279d = mVar;
        mVar.a(new p2.a() { // from class: com.applovin.impl.yb
            @Override // com.applovin.impl.p2.a
            public final void a(i2 i2Var, o2 o2Var) {
                l.this.a(kVar, nVar, oVar, i2Var, o2Var);
            }
        });
        b();
        if (nVar.f().f()) {
            if ((f8Var == null || f8Var.b().d().D()) && (a10 = kVar.U().a(nVar.c())) != null && !a10.isEmpty()) {
                this.f8293r = new w(a10, nVar.a(), getApplicationContext(), this);
            }
        }
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
    public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        this.f8291p.setControlState(AdControlButton.b.LOAD);
        this.f8292q.setText("");
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
        this.f8291p.setControlState(AdControlButton.b.LOAD);
        this.f8292q.setText("");
        if (204 == maxError.getCode()) {
            k7.a("No Fill", "No fills often happen in live environments. Please make sure to use the Mediation Debugger test mode before you go live.", this);
            return;
        }
        k7.a("", "Failed to load with error code: " + maxError.getCode(), this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoaded(@NonNull MaxAd maxAd) {
        TextView textView = this.f8292q;
        textView.setText(maxAd.getNetworkName() + " ad loaded");
        this.f8291p.setControlState(AdControlButton.b.SHOW);
        if (maxAd.getFormat().isAdViewAd()) {
            a(this.f8280e, maxAd.getFormat().getSize());
        } else if (MaxAdFormat.NATIVE == this.f8277b.a()) {
            a(this.f8284i, MaxAdFormat.MREC.getSize());
        }
    }

    @Override // com.applovin.impl.w.a
    public void onAdResponseLoaded(DTBAdResponse dTBAdResponse, MaxAdFormat maxAdFormat) {
        if (maxAdFormat.isAdViewAd()) {
            this.f8280e.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.f8281f.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.f8282g.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.f8283h.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.f8285j.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        }
        a(maxAdFormat);
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(@NonNull MaxAd maxAd) {
        k7.a("onAdRevenuePaid", maxAd, this);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton.a
    public void onClick(AdControlButton adControlButton) {
        if (this.f8276a.t0().c()) {
            k7.a("Not Supported", "Ad loads are not supported while Test Mode is enabled. Please restart the app.", this);
        } else if (this.f8279d.j() != this.f8277b.f()) {
            k7.a("Not Supported", "You cannot load an ad from this waterfall because it does not target the current device. To load an ad, please select the targeted waterfall.", this);
        } else {
            MaxAdFormat a10 = this.f8277b.a();
            AdControlButton.b bVar = AdControlButton.b.LOAD;
            if (bVar == adControlButton.getControlState()) {
                adControlButton.setControlState(AdControlButton.b.LOADING);
                w wVar = this.f8293r;
                if (wVar != null) {
                    wVar.a();
                } else {
                    a(a10);
                }
            } else if (AdControlButton.b.SHOW == adControlButton.getControlState()) {
                if (!a10.isAdViewAd() && a10 != MaxAdFormat.NATIVE) {
                    adControlButton.setControlState(bVar);
                }
                b(a10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_ad_unit_detail_activity);
        setTitle(this.f8279d.k());
        this.f8289n = (ListView) findViewById(R.id.listView);
        this.f8290o = findViewById(R.id.ad_presenter_view);
        this.f8291p = (AdControlButton) findViewById(R.id.ad_control_button);
        this.f8292q = (TextView) findViewById(R.id.status_textview);
        this.f8289n.setAdapter((ListAdapter) this.f8279d);
        this.f8292q.setText(a());
        this.f8292q.setTypeface(Typeface.DEFAULT_BOLD);
        this.f8291p.setOnClickListener(this);
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        shapeDrawable.setPadding(0, 10, 0, 0);
        shapeDrawable.getPaint().setColor(-1);
        shapeDrawable.getPaint().setShadowLayer(10, 0.0f, -10, 855638016);
        shapeDrawable.setShape(new RectShape());
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{shapeDrawable});
        layerDrawable.setLayerInset(0, 0, 10, 0, 0);
        this.f8290o.setBackground(layerDrawable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f8278c != null) {
            this.f8276a.t0().a(this.f8288m);
        }
        MaxAdView maxAdView = this.f8280e;
        if (maxAdView != null) {
            maxAdView.destroy();
        }
        MaxInterstitialAd maxInterstitialAd = this.f8281f;
        if (maxInterstitialAd != null) {
            maxInterstitialAd.destroy();
        }
        MaxAppOpenAd maxAppOpenAd = this.f8282g;
        if (maxAppOpenAd != null) {
            maxAppOpenAd.destroy();
        }
        MaxRewardedAd maxRewardedAd = this.f8283h;
        if (maxRewardedAd != null) {
            maxRewardedAd.destroy();
        }
        MaxNativeAdLoader maxNativeAdLoader = this.f8285j;
        if (maxNativeAdLoader != null) {
            MaxAd maxAd = this.f8286k;
            if (maxAd != null) {
                maxNativeAdLoader.destroy(maxAd);
            }
            this.f8285j.destroy();
        }
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onUserRewarded(@NonNull MaxAd maxAd, @NonNull MaxReward maxReward) {
        k7.a("onUserRewarded", maxAd, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final com.applovin.impl.sdk.k kVar, final n nVar, final o oVar, i2 i2Var, final o2 o2Var) {
        if (o2Var instanceof m.b) {
            d.a(this, MaxDebuggerAdUnitDetailActivity.class, kVar.e(), new d.b() { // from class: com.applovin.impl.wb
                @Override // com.applovin.impl.d.b
                public final void a(Activity activity) {
                    l.a(o2.this, nVar, oVar, kVar, (MaxDebuggerAdUnitDetailActivity) activity);
                }
            });
        }
    }

    private void b() {
        String c10 = this.f8277b.c();
        if (this.f8277b.a().isAdViewAd()) {
            MaxAdView maxAdView = new MaxAdView(c10, this.f8277b.a());
            this.f8280e = maxAdView;
            maxAdView.setExtraParameter("adaptive_banner", "false");
            this.f8280e.setExtraParameter("disable_auto_retries", "true");
            this.f8280e.setExtraParameter("disable_precache", "true");
            this.f8280e.setExtraParameter("allow_pause_auto_refresh_immediately", "true");
            this.f8280e.stopAutoRefresh();
            this.f8280e.setListener(this);
        } else if (MaxAdFormat.INTERSTITIAL == this.f8277b.a()) {
            MaxInterstitialAd maxInterstitialAd = new MaxInterstitialAd(c10);
            this.f8281f = maxInterstitialAd;
            maxInterstitialAd.setExtraParameter("disable_auto_retries", "true");
            this.f8281f.setListener(this);
        } else if (MaxAdFormat.APP_OPEN == this.f8277b.a()) {
            MaxAppOpenAd maxAppOpenAd = new MaxAppOpenAd(c10);
            this.f8282g = maxAppOpenAd;
            maxAppOpenAd.setExtraParameter("disable_auto_retries", "true");
            this.f8282g.setListener(this);
        } else if (MaxAdFormat.REWARDED == this.f8277b.a()) {
            MaxRewardedAd maxRewardedAd = MaxRewardedAd.getInstance(c10);
            this.f8283h = maxRewardedAd;
            maxRewardedAd.setExtraParameter("disable_auto_retries", "true");
            this.f8283h.setListener(this);
        } else if (MaxAdFormat.NATIVE == this.f8277b.a()) {
            this.f8284i = new MaxNativeAdView(new MaxNativeAdViewBinder.Builder(R.layout.max_native_ad_template_1).setTitleTextViewId(R.id.applovin_native_title_text_view).setAdvertiserTextViewId(R.id.applovin_native_advertiser_text_view).setBodyTextViewId(R.id.applovin_native_body_text_view).setCallToActionButtonId(R.id.applovin_native_cta_button).setIconImageViewId(R.id.applovin_native_icon_image_view).setOptionsContentViewGroupId(R.id.applovin_native_options_view).setStarRatingContentViewGroupId(R.id.applovin_native_star_rating_view).setMediaContentViewGroupId(R.id.applovin_native_media_content_view).build(), com.applovin.impl.sdk.k.o());
            MaxNativeAdLoader maxNativeAdLoader = new MaxNativeAdLoader(c10);
            this.f8285j = maxNativeAdLoader;
            maxNativeAdLoader.setExtraParameter("disable_auto_retries", "true");
            this.f8285j.setNativeAdListener(new a());
            this.f8285j.setRevenueListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(o2 o2Var, n nVar, o oVar, com.applovin.impl.sdk.k kVar, MaxDebuggerAdUnitDetailActivity maxDebuggerAdUnitDetailActivity) {
        maxDebuggerAdUnitDetailActivity.initialize(nVar, oVar, ((m.b) o2Var).v(), kVar);
    }

    @Override // com.applovin.impl.w.a
    public void onAdLoadFailed(AdError adError, MaxAdFormat maxAdFormat) {
        if (maxAdFormat.isAdViewAd()) {
            this.f8280e.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.f8281f.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.f8282g.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.f8283h.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.f8285j.setLocalExtraParameter("amazon_ad_error", adError);
        }
        a(maxAdFormat);
    }

    private void a(MaxAdFormat maxAdFormat) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Loading live ");
        sb2.append(maxAdFormat.getDisplayName());
        sb2.append(" Ad from ");
        f8 f8Var = this.f8278c;
        sb2.append(f8Var != null ? f8Var.b().a() : this.f8279d.j().c());
        com.applovin.impl.sdk.o.g("MaxDebuggerAdUnitDetailActivity", sb2.toString());
        if (this.f8278c != null) {
            this.f8276a.t0().a(this.f8278c.b().b());
        }
        if (maxAdFormat.isAdViewAd()) {
            this.f8280e.setPlacement("[Mediation Debugger Live Ad]");
            this.f8280e.loadAd();
        } else if (MaxAdFormat.INTERSTITIAL == this.f8277b.a()) {
            this.f8281f.loadAd();
        } else if (MaxAdFormat.APP_OPEN == this.f8277b.a()) {
            this.f8282g.loadAd();
        } else if (MaxAdFormat.REWARDED == this.f8277b.a()) {
            this.f8283h.loadAd();
        } else if (MaxAdFormat.NATIVE == this.f8277b.a()) {
            this.f8285j.setPlacement("[Mediation Debugger Live Ad]");
            this.f8285j.loadAd();
        } else {
            k7.a("Live ads currently unavailable for ad format", this);
        }
    }

    private void a(ViewGroup viewGroup, AppLovinSdkUtils.Size size) {
        if (this.f8287l != null) {
            return;
        }
        r rVar = new r(viewGroup, size, this);
        this.f8287l = rVar;
        rVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.xb
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                l.this.a(dialogInterface);
            }
        });
        this.f8287l.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface) {
        this.f8287l = null;
    }

    private String a() {
        if (this.f8276a.t0().c()) {
            return "Not supported while Test Mode is enabled";
        }
        if (this.f8279d.j() != this.f8277b.f()) {
            return "This waterfall is not targeted for the current device";
        }
        return "Tap to load an ad";
    }

    private void b(MaxAdFormat maxAdFormat) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Showing live ");
        sb2.append(maxAdFormat.getDisplayName());
        sb2.append(" Ad from ");
        f8 f8Var = this.f8278c;
        sb2.append(f8Var != null ? f8Var.b().a() : this.f8279d.j().c());
        com.applovin.impl.sdk.o.g("MaxDebuggerAdUnitDetailActivity", sb2.toString());
        if (maxAdFormat.isAdViewAd()) {
            a(this.f8280e, maxAdFormat.getSize());
        } else if (MaxAdFormat.INTERSTITIAL == this.f8277b.a()) {
            this.f8281f.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.APP_OPEN == this.f8277b.a()) {
            this.f8282g.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.REWARDED == this.f8277b.a()) {
            this.f8283h.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.NATIVE == this.f8277b.a()) {
            a(this.f8284i, MaxAdFormat.MREC.getSize());
        }
    }
}
